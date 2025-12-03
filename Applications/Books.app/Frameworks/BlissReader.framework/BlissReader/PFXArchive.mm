@interface PFXArchive
- (BOOL)copyEntry:(id)entry toFile:(id)file;
- (BOOL)isEPUB;
- (NSString)perUserRootFolder;
- (NSString)rootFolder;
- (PFXArchive)initWithPath:(id)path allowArchive:(BOOL)archive;
- (id)createDataWithName:(id)name error:(id *)error;
- (id)decryptEntryWithName:(id)name error:(id *)error;
- (id)entries;
- (id)entriesWithinFolder:(id)folder;
- (id)entryWithName:(id)name;
- (id)fontObfuscationInfo;
- (void)checkEncryption;
- (void)dealloc;
@end

@implementation PFXArchive

- (PFXArchive)initWithPath:(id)path allowArchive:(BOOL)archive
{
  archiveCopy = archive;
  v11.receiver = self;
  v11.super_class = PFXArchive;
  v6 = [(PFXArchive *)&v11 init];
  if (v6)
  {
    v10 = 0;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
    {
      if (v10 == 1)
      {
        pathCopy = path;
        v8 = 8;
LABEL_5:
        *(&v6->super.isa + v8) = pathCopy;
        v6->mRootPath = path;
        return v6;
      }

      if (archiveCopy && [SFUZipArchive isZipArchiveAtPath:path])
      {
        pathCopy = [[SFUZipArchive alloc] initWithPath:path collapseCommonRootDirectory:0];
        v8 = 24;
        goto LABEL_5;
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFXArchive;
  [(PFXArchive *)&v3 dealloc];
}

- (BOOL)isEPUB
{
  lowercaseString = [[(NSString *)self->mRootPath pathExtension] lowercaseString];

  return [@"epub" isEqualToString:lowercaseString];
}

- (NSString)rootFolder
{
  if (![(PFXArchive *)self isDirectory])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return self->mFolderRoot;
}

- (NSString)perUserRootFolder
{
  if (![(PFXArchive *)self isDirectory])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  result = self->mPerUserRoot;
  if (!result)
  {
    if (self->mFolderRoot)
    {
      result = [objc_msgSend(+[BLLibrary defaultBookLibrary](BLLibrary "defaultBookLibrary")];
      self->mPerUserRoot = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)checkEncryption
{
  v3 = [+[PFDContextManager sharedInstance](PFDContextManager contextForArchive:"contextForArchive:", self->mFolderRoot];
  if (!v3)
  {
    v4 = [PFAXPackage rightsInfoForArchive:self];
    v5 = [PFAXPackage newAllEncryptionInfoForArchive:self];
    v6 = v5;
    if (v4 || [objc_msgSend(v5 "allKeys")])
    {
      v3 = [[PFDContext alloc] initWithRoot:self->mFolderRoot pVwXvin61ocxeAjqxjwz:v6 andRights:v4];
      if ([+[PFDContextManager setContext:"setContext:forArchive:"]
      {
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  [(PFXArchive *)self setDrmContext:v3];
  self->mEncryptionChecked = 1;
}

- (id)fontObfuscationInfo
{
  if (!self->mEncryptionChecked)
  {
    [(PFXArchive *)self checkEncryption];
  }

  mDrmContext = self->mDrmContext;

  return [(PFDContext *)mDrmContext fontObfuscation];
}

- (id)decryptEntryWithName:(id)name error:(id *)error
{
  if (!self->mEncryptionChecked)
  {
    [(PFXArchive *)self checkEncryption];
  }

  mDrmContext = self->mDrmContext;
  if (mDrmContext)
  {

    return [(PFDContext *)mDrmContext dataRepresentationForEntryName:name error:error];
  }

  else
  {
    if (([name hasPrefix:@"/"] & 1) == 0)
    {
      name = [@"/" stringByAppendingString:name];
    }

    return [(PFXArchive *)self entryWithName:name];
  }
}

- (id)entryWithName:(id)name
{
  nameCopy = name;
  mFolderRoot = self->mFolderRoot;
  if (!mFolderRoot)
  {
    if (self->mZipArchive)
    {
      if ([name hasPrefix:@"/"])
      {
        nameCopy = [nameCopy substringFromIndex:1];
      }

      v8 = [(SFUZipArchive *)self->mZipArchive entryWithName:nameCopy];
      if (v8)
      {
        data = [v8 data];
        if (data)
        {
          v7 = [[SFUMemoryDataRepresentation alloc] initWithDataNoCopy:data];
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  v6 = [(NSString *)mFolderRoot stringByAppendingPathComponent:name];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 0;
  }

  v7 = [[SFUFileDataRepresentation alloc] initWithPath:v6];
LABEL_10:

  return v7;
}

- (id)createDataWithName:(id)name error:(id *)error
{
  if (!self->mFolderRoot)
  {
    return 0;
  }

  v4 = [(PFXArchive *)self decryptEntryWithName:name error:error];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableData);
    if ([v4 readIntoData:v5])
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)copyEntry:(id)entry toFile:(id)file
{
  if (!self->mFolderRoot)
  {
    return 0;
  }

  v5 = [(PFXArchive *)self entryWithName:entry];
  v6 = +[NSFileManager defaultManager];
  if (!-[NSFileManager fileExistsAtPath:](v6, "fileExistsAtPath:", [v5 path]))
  {
    return 0;
  }

  path = [v5 path];

  return [(NSFileManager *)v6 copyItemAtPath:path toPath:file error:0];
}

- (id)entries
{
  if (self->mFolderRoot)
  {
    v2 = +[NSFileManager defaultManager];

    return [NSFileManager contentsOfDirectoryAtPath:v2 error:"contentsOfDirectoryAtPath:error:"];
  }

  else
  {
    result = self->mZipArchive;
    if (result)
    {

      return [result allEntryNames];
    }
  }

  return result;
}

- (id)entriesWithinFolder:(id)folder
{
  entries = [(PFXArchive *)self entries];
  v5 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [entries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(entries);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (![v10 rangeOfString:folder])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [entries countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end