@interface PFXArchive
- (BOOL)copyEntry:(id)a3 toFile:(id)a4;
- (BOOL)isEPUB;
- (NSString)perUserRootFolder;
- (NSString)rootFolder;
- (PFXArchive)initWithPath:(id)a3 allowArchive:(BOOL)a4;
- (id)createDataWithName:(id)a3 error:(id *)a4;
- (id)decryptEntryWithName:(id)a3 error:(id *)a4;
- (id)entries;
- (id)entriesWithinFolder:(id)a3;
- (id)entryWithName:(id)a3;
- (id)fontObfuscationInfo;
- (void)checkEncryption;
- (void)dealloc;
@end

@implementation PFXArchive

- (PFXArchive)initWithPath:(id)a3 allowArchive:(BOOL)a4
{
  v4 = a4;
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
        v7 = a3;
        v8 = 8;
LABEL_5:
        *(&v6->super.isa + v8) = v7;
        v6->mRootPath = a3;
        return v6;
      }

      if (v4 && [SFUZipArchive isZipArchiveAtPath:a3])
      {
        v7 = [[SFUZipArchive alloc] initWithPath:a3 collapseCommonRootDirectory:0];
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
  v2 = [[(NSString *)self->mRootPath pathExtension] lowercaseString];

  return [@"epub" isEqualToString:v2];
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

- (id)decryptEntryWithName:(id)a3 error:(id *)a4
{
  if (!self->mEncryptionChecked)
  {
    [(PFXArchive *)self checkEncryption];
  }

  mDrmContext = self->mDrmContext;
  if (mDrmContext)
  {

    return [(PFDContext *)mDrmContext dataRepresentationForEntryName:a3 error:a4];
  }

  else
  {
    if (([a3 hasPrefix:@"/"] & 1) == 0)
    {
      a3 = [@"/" stringByAppendingString:a3];
    }

    return [(PFXArchive *)self entryWithName:a3];
  }
}

- (id)entryWithName:(id)a3
{
  v3 = a3;
  mFolderRoot = self->mFolderRoot;
  if (!mFolderRoot)
  {
    if (self->mZipArchive)
    {
      if ([a3 hasPrefix:@"/"])
      {
        v3 = [v3 substringFromIndex:1];
      }

      v8 = [(SFUZipArchive *)self->mZipArchive entryWithName:v3];
      if (v8)
      {
        v9 = [v8 data];
        if (v9)
        {
          v7 = [[SFUMemoryDataRepresentation alloc] initWithDataNoCopy:v9];
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  v6 = [(NSString *)mFolderRoot stringByAppendingPathComponent:a3];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 0;
  }

  v7 = [[SFUFileDataRepresentation alloc] initWithPath:v6];
LABEL_10:

  return v7;
}

- (id)createDataWithName:(id)a3 error:(id *)a4
{
  if (!self->mFolderRoot)
  {
    return 0;
  }

  v4 = [(PFXArchive *)self decryptEntryWithName:a3 error:a4];
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

- (BOOL)copyEntry:(id)a3 toFile:(id)a4
{
  if (!self->mFolderRoot)
  {
    return 0;
  }

  v5 = [(PFXArchive *)self entryWithName:a3];
  v6 = +[NSFileManager defaultManager];
  if (!-[NSFileManager fileExistsAtPath:](v6, "fileExistsAtPath:", [v5 path]))
  {
    return 0;
  }

  v7 = [v5 path];

  return [(NSFileManager *)v6 copyItemAtPath:v7 toPath:a4 error:0];
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

- (id)entriesWithinFolder:(id)a3
{
  v4 = [(PFXArchive *)self entries];
  v5 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (![v10 rangeOfString:a3])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end