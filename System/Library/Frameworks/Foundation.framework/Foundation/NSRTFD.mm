@interface NSRTFD
+ (void)initialize;
- (BOOL)_isLink:(id)link;
- (NSRTFD)initWithDataRepresentation:(id)representation;
- (NSRTFD)initWithPasteboardDataRepresentation:(id)representation;
- (id)_getDocInfoForKey:(id)key;
- (id)addCommon:(id)common docInfo:(id)info value:(id)value zone:(_NSZone *)zone;
- (id)addData:(id)data name:(id)name;
- (id)addFile:(id)file;
- (id)addLink:(id)link;
- (id)copy:(id)copy into:(id)into;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createRandomKey:(id)key;
- (id)createUniqueKey:(id)key;
- (id)dataForFile:(id)file;
- (id)dataRepresentation;
- (id)freeSerialized:(void *)serialized length:(unint64_t)length;
- (id)getDirInfo:(BOOL)info;
- (id)getDocument:(id)document docInfo:(id)info;
- (id)initFromDocument:(id)document error:(unint64_t *)error;
- (id)initFromElement:(id)element ofDocument:(id)document;
- (id)pasteboardDataRepresentation;
- (id)removeFile:(id)file;
- (id)replaceFile:(id)file data:(id)data;
- (id)replaceFile:(id)file path:(id)path;
- (id)serialize:(void *)serialize length:(unint64_t *)length;
- (id)setPackage:(BOOL)package;
- (id)tmpNameFromPath:(id)path extension:(id)extension;
- (int64_t)validatePath:(id)path ignore:(id)ignore;
- (unint64_t)addDirNamed:(id)named;
- (unint64_t)addFileNamed:(id)named fileAttributes:(id)attributes;
- (unint64_t)initUnixFile:(id)file;
- (unint64_t)insertItem:(id)item path:(id)path dirInfo:(id)info zone:(_NSZone *)zone plist:(id)plist;
- (unint64_t)internalSaveTo:(id)to removeBackup:(BOOL)backup errorHandler:(id)handler;
- (unint64_t)internalSaveTo:(id)to removeBackup:(BOOL)backup errorHandler:(id)handler temp:(id)temp backup:(id)a7;
- (unint64_t)internalWritePath:(id)path errorHandler:(id)handler remapContents:(BOOL)contents hardLinkPath:(id)linkPath;
- (unint64_t)writePath:(id)path docInfo:(id)info errorHandler:(id)handler remapContents:(BOOL)contents markBusy:(BOOL)busy hardLinkPath:(id)linkPath;
- (void)dealloc;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NSRTFD

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSRTFD;
  [(NSRTFD *)&v3 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  if (_NSIsNSData() && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = -[NSPageData initWithData:](+[NSData allocWithZone:](NSPageData, "allocWithZone:", [object zone]), "initWithData:", object);
    [(NSMutableDictionary *)self->dict setObject:v8 forKey:key];
  }

  else
  {
    dict = self->dict;

    [(NSMutableDictionary *)dict setObject:object forKey:key];
  }
}

- (id)setPackage:(BOOL)package
{
  packageCopy = package;
  if ([(NSRTFD *)self isPackage]!= package)
  {
    if (packageCopy)
    {
      [(NSRTFD *)self removeObjectForKey:@".."];
    }

    else
    {
      v5 = [[NSData allocWithZone:?]];
      [(NSRTFD *)self setObject:v5 forKey:@".."];
    }
  }

  return self;
}

- (unint64_t)initUnixFile:(id)file
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  [(NSRTFD *)self initFromDocument:file error:v4];
  return v4[0];
}

- (id)initFromDocument:(id)document error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = +[NSFileManager defaultManager];
  v8 = [(NSRTFD *)self init];
  if (![document length])
  {
    goto LABEL_8;
  }

  if (([document isAbsolutePath] & 1) == 0)
  {
    document = [(NSString *)[(NSFileManager *)v7 currentDirectoryPath] stringByAppendingPathComponent:document];
  }

  v11 = 0;
  if (![(NSFileManager *)v7 fileExistsAtPath:document isDirectory:&v11])
  {
LABEL_8:
    if (error)
    {
      *error = 9;
    }

    goto LABEL_13;
  }

  if (v11 == 1)
  {
    v9 = [(NSRTFD *)v8 addDirNamed:document];
    if (!v9)
    {
      return v8;
    }

    goto LABEL_11;
  }

  v9 = [(NSRTFD *)v8 addFileNamed:document fileAttributes:[(NSFileManager *)v7 fileAttributesAtPath:document traverseLink:1]];
  if (v9)
  {
LABEL_11:
    if (error)
    {
      *error = v9;
    }

LABEL_13:

    return 0;
  }

  return v8;
}

- (unint64_t)writePath:(id)path docInfo:(id)info errorHandler:(id)handler remapContents:(BOOL)contents markBusy:(BOOL)busy hardLinkPath:(id)linkPath
{
  busyCopy = busy;
  contentsCopy = contents;
  keyEnumerator = [(NSRTFD *)self keyEnumerator];
  if (info)
  {
    v15 = *(info + 8);
  }

  else
  {
    v15 = 511;
  }

  v16 = [(NSRTFD *)self getDirInfo:0];
  if (_NXMakeDirs(path, (v15 | 0x1C0) & ~+[NSPageData _umask]) < 0)
  {
    return 4;
  }

  v29 = v15 | 0x1C0;
  v30 = v15;
  v31 = busyCopy;
  if (busyCopy)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [[NSNumber alloc] initWithBool:1];
    v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"NSFileBusy", 0}];

    [(NSFileManager *)v17 changeFileAttributes:v19 atPath:path];
  }

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v21 = nextObject;
    do
    {
      v22 = [(NSRTFD *)self objectForKey:v21];
      if (v22)
      {
        v23 = [[NSString allocWithZone:?], "initWithFormat:", @"%@/%@", path, v21];
        v22 = [v22 writePath:v23 docInfo:objc_msgSend(v16 errorHandler:"objectForKey:" remapContents:v21) hardLinkPath:{handler, contentsCopy, objc_msgSend(linkPath, "stringByAppendingPathComponent:", v21)}];
      }

      nextObject2 = [keyEnumerator nextObject];
      if (!nextObject2)
      {
        break;
      }

      v21 = nextObject2;
    }

    while (!v22);
  }

  else
  {
    v22 = 0;
  }

  if (v29 != v30)
  {
    _NXChmodFile(path, v30 & ~+[NSPageData _umask]);
  }

  if (v31)
  {
    v25 = +[NSFileManager defaultManager];
    v26 = [[NSNumber alloc] initWithBool:0];
    v27 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v26, @"NSFileBusy", 0}];

    [(NSFileManager *)v25 changeFileAttributes:v27 atPath:path];
  }

  return v22;
}

- (unint64_t)internalWritePath:(id)path errorHandler:(id)handler remapContents:(BOOL)contents hardLinkPath:(id)linkPath
{
  contentsCopy = contents;
  isPackage = [(NSRTFD *)self isPackage];
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 8;
  }

  if (isPackage)
  {

    return [(NSRTFD *)self writePath:path docInfo:0 errorHandler:handler remapContents:contentsCopy markBusy:1 hardLinkPath:linkPath];
  }

  else
  {
    v13 = [(NSRTFD *)self objectForKey:@".."];
    v14 = [-[NSRTFD getDirInfo:](self getDirInfo:{0), "objectForKey:", @".."}];
    if (v13)
    {

      return [v13 writePath:path docInfo:v14 errorHandler:handler remapContents:contentsCopy hardLinkPath:0];
    }

    else
    {
      return 12;
    }
  }
}

- (unint64_t)internalSaveTo:(id)to removeBackup:(BOOL)backup errorHandler:(id)handler temp:(id)temp backup:(id)a7
{
  backupCopy = backup;
  v13 = +[NSFileManager defaultManager];
  v14 = [(NSFileManager *)v13 fileExistsAtPath:to];
  v15 = [(NSFileManager *)v13 isWritableFileAtPath:to];
  v16 = [(NSFileManager *)v13 isDeletableFileAtPath:to];
  if (v14)
  {
    toCopy2 = to;
  }

  else
  {
    toCopy2 = 0;
  }

  if (!v14 || v15)
  {
    goto LABEL_9;
  }

  if (!v16)
  {
    return 11;
  }

  toCopy2 = to;
  if (![handler attemptOverwrite:to])
  {
    return 1;
  }

LABEL_9:
  if ([(NSFileManager *)v13 fileExistsAtPath:temp]&& _NXRemoveDocument(temp) < 0)
  {
    return 7;
  }

  v18 = [(NSRTFD *)self internalWritePath:temp errorHandler:handler remapContents:backupCopy hardLinkPath:toCopy2];
  if (v18)
  {
    a7 = temp;
LABEL_12:
    _NXRemoveDocument(a7);
    return v18;
  }

  if (_NXRemoveDocument(a7) < 0)
  {
    return 6;
  }

  if (v14 && _NXRenameFile(to, a7) < 0)
  {
    return 5;
  }

  v20 = _NXRenameFile(temp, to);
  if (v20 < 0)
  {
    result = 5;
  }

  else
  {
    result = 0;
  }

  if ((v20 & 0x8000000000000000) == 0 && backupCopy)
  {
    goto LABEL_12;
  }

  return result;
}

- (id)tmpNameFromPath:(id)path extension:(id)extension
{
  v5 = [objc_msgSend(path "stringByDeletingLastPathComponent")];

  return [v5 stringByAppendingPathExtension:extension];
}

- (unint64_t)internalSaveTo:(id)to removeBackup:(BOOL)backup errorHandler:(id)handler
{
  backupCopy = backup;
  v9 = [(NSRTFD *)self tmpNameFromPath:to extension:@"tmp"];
  if (backupCopy)
  {
    v10 = [(NSRTFD *)self tmpNameFromPath:to extension:@"bak"];
  }

  else
  {
    v10 = [(NSRTFD *)self nameFromPath:to extra:@"~"];
  }

  return [(NSRTFD *)self internalSaveTo:to removeBackup:backupCopy errorHandler:handler temp:v9 backup:v10];
}

- (id)dataRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSRTFD *)self zone];
  v4 = [[NSAKSerializerStream allocWithZone:?]];
  v10[0] = 1684436082;
  [(NSAKSerializerStream *)v4 writeData:v10 length:8];
  v5 = [(NSAKSerializer *)[NSDocumentSerializer allocWithZone:?], "initForSerializerStream:", v4];
  v6 = [v5 serializeObject:self];
  v7 = objc_allocWithZone(MEMORY[0x1E695DF88]);
  v8 = [v7 initWithLength:(v6 + *MEMORY[0x1E69E9AC8] + 7) & -*MEMORY[0x1E69E9AC8]];
  -[NSAKSerializerStream copySerializationInto:](v4, "copySerializationInto:", [v8 mutableBytes]);
  [v8 setLength:v6 + 8];

  return v8;
}

- (NSRTFD)initWithDataRepresentation:(id)representation
{
  v5 = [representation length];
  v6 = v5 - 8;
  if (v5 < 8)
  {
    NSLog(@"Unable to read RTFD from data:%p", representation);
LABEL_3:

    return 0;
  }

  bytes = [representation bytes];
  if (*bytes ^ 0x64667472 | *(bytes + 4))
  {
    selfCopy2 = self;
    representationCopy = representation;
  }

  else
  {
    if (bytes[1])
    {
      NSLog(@"Bad version in RTFD data:%p", representation);
      goto LABEL_3;
    }

    representationCopy = [representation subdataWithRange:{8, v6}];
    selfCopy2 = self;
  }

  return [(NSRTFD *)selfCopy2 initWithPasteboardDataRepresentation:representationCopy];
}

- (id)createRandomKey:(id)key
{
  v5 = [(NSRTFD *)self zone];
  if (![(NSRTFD *)self objectForKey:key])
  {
    return key;
  }

  while (1)
  {
    v6 = mach_absolute_time();
    significantText = [key significantText];
    v9 = -[NSString initWithFormat:](+[NSString allocWithZone:](NSString, "allocWithZone:", v5), "initWithFormat:", @"%d_%@", v6, [key substringWithRange:{significantText, v8}]);
    if (![(NSRTFD *)self objectForKey:v9])
    {
      break;
    }
  }

  return v9;
}

- (id)createUniqueKey:(id)key
{
  do
  {
    v5 = [(NSRTFD *)self createRandomKey:key];
  }

  while ([(NSRTFD *)self objectForKey:[NSString stringWithFormat:@"%@.tiff", v5]]);
  return v5;
}

- (id)getDocument:(id)document docInfo:(id)info
{
  v6 = [(NSRTFD *)self zone];
  v7 = *(info + 9);
  if (v7)
  {
    return [[NSRTFD allocWithZone:?]error:"initFromDocument:error:", document, 0];
  }

  else
  {
    return newLeafDocument(document, v7, v6);
  }
}

- (id)replaceFile:(id)file data:(id)data
{
  data = [[NSData allocWithZone:?], "initWithData:", data];
  [(NSRTFD *)self setObject:data forKey:file];

  return self;
}

- (id)replaceFile:(id)file path:(id)path
{
  selfCopy = self;
  v7 = [(NSRTFD *)self zone];
  v8 = [(NSRTFD *)selfCopy getDirInfo:1];
  v9 = [v8 objectForKey:file];
  v10 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:path, 0];
  if (!v10)
  {
    return 0;
  }

  if (!v9)
  {
    v13 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v10];
    v14 = [(NSRTFD *)selfCopy getDocument:path docInfo:v13];
    if (!v14)
    {

      return selfCopy;
    }

    v12 = v14;
    [(NSRTFD *)selfCopy setObject:v14 forKey:file];
    [v8 setObject:v13 forKey:file];

    goto LABEL_8;
  }

  [v9 setFileAttributes:v10];
  v11 = [(NSRTFD *)selfCopy getDocument:path docInfo:v9];
  if (v11)
  {
    v12 = v11;
    [(NSRTFD *)selfCopy setObject:v11 forKey:file];
LABEL_8:
  }

  return selfCopy;
}

- (id)addCommon:(id)common docInfo:(id)info value:(id)value zone:(_NSZone *)zone
{
  v10 = [(NSRTFD *)self getDirInfo:1, info, value, zone];
  v11 = -[NSRTFD uniqueKey:](self, "uniqueKey:", [common lastPathComponent]);
  [(NSRTFD *)self setObject:value forKey:v11];
  if (info)
  {
    [v10 setObject:info forKey:v11];
  }

  return v11;
}

- (id)_getDocInfoForKey:(id)key
{
  v4 = [(NSRTFD *)self getDirInfo:0];

  return [v4 objectForKey:key];
}

- (id)addFile:(id)file
{
  v5 = [(NSRTFD *)self zone];
  v6 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:file, 0];
  if (!v6)
  {
    return 0;
  }

  v7 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v6];
  v8 = [(NSRTFD *)self getDocument:file docInfo:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [(NSRTFD *)self addCommon:file docInfo:v7 value:v8 zone:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addLink:(id)link
{
  v5 = [(NSRTFD *)self zone];
  result = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:link, 1];
  if (result)
  {
    result = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", result];
    *(&result->mode + 1) |= 4u;
    v8 = -[NSPageData initWithData:](+[NSData allocWithZone:](NSPageData, "allocWithZone:", v5), "initWithData:", [link dataUsingEncoding:4 allowLossyConversion:1]);
    v9 = [(NSRTFD *)self addCommon:link docInfo:result value:v8 zone:v5];

    return v9;
  }

  return result;
}

- (id)dataForFile:(id)file
{
  v5 = [(NSRTFD *)self objectForKey:?];
  if (!v5)
  {
    return v5;
  }

  v6 = [-[NSRTFD getDirInfo:](self getDirInfo:{0), "objectForKey:", file}];
  if (!v6 || (*(v6 + 18) & 4) == 0)
  {
    return v5;
  }

  v8 = [objc_allocWithZone(NSString) initWithData:v5 encoding:4];
  v9 = MEMORY[0x1E695DEF0];

  return [v9 dataWithContentsOfFile:v8];
}

- (id)removeFile:(id)file
{
  v5 = [(NSRTFD *)self getDirInfo:0];
  [(NSRTFD *)self removeObjectForKey:file];
  [v5 removeObjectForKey:file];
  return self;
}

- (id)copy:(id)copy into:(id)into
{
  v7 = [into zone];
  v8 = [(NSRTFD *)self getDirInfo:0];
  v9 = [into uniqueKey:copy];
  v10 = [-[NSRTFD objectForKey:](self objectForKey:{copy), "copyWithZone:", v7}];
  [into setObject:v10 forKey:v9];

  v11 = [v8 objectForKey:v9];
  if (v11)
  {
    v12 = v11;
    v13 = [into getDirInfo:1];
    v14 = [v12 copyWithZone:v7];
    [v13 setObject:v14 forKey:v9];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSRTFD *)self getDirInfo:0];
  keyEnumerator = [(NSRTFD *)self keyEnumerator];
  v8 = 0;
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v10 = nextObject;
    v11 = [(NSRTFD *)self objectForKey:nextObject];
    if (([v10 isEqual:@"."] & 1) == 0)
    {
      if (v6)
      {
        v12 = [v6 objectForKey:v10];
        if (v12)
        {
          v13 = v12;
          if (!v8)
          {
            v8 = [v5 getDirInfo:1];
          }

          v14 = [v13 copyWithZone:zone];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v15 = [v11 copyWithZone:zone];
      [v5 setObject:v15 forKey:v10];
    }
  }

  return v5;
}

- (id)addData:(id)data name:(id)name
{
  data = [[NSData allocWithZone:?], "initWithData:", data];
  v7 = -[NSRTFD uniqueKey:](self, "uniqueKey:", [name lastPathComponent]);
  [(NSRTFD *)self setObject:data forKey:v7];

  return v7;
}

- (int64_t)validatePath:(id)path ignore:(id)ignore
{
  v7 = [(NSRTFD *)self zone];
  keyEnumerator = [(NSRTFD *)self keyEnumerator];
  v9 = [(NSRTFD *)self getDirInfo:0];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  nextObject = [keyEnumerator nextObject];
  if (!nextObject)
  {
    return 0;
  }

  nextObject2 = nextObject;
  v26 = v7;
  v13 = 0;
  v14 = 0x1E69EE000uLL;
  do
  {
    if (-[NSRTFD objectForKey:](self, "objectForKey:", nextObject2) && ![ignore objectForKey:nextObject2])
    {
      v15 = v14;
      v16 = [objc_allocWithZone(*(v14 + 2328)) initWithFormat:@"%@/%@", path, nextObject2];
      v17 = [v10 objectForKey:nextObject2];
      if (v17)
      {
        v18 = v17;
        v19 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:v16, 0];
        if (v19)
        {
          [-[NSDictionary fileModificationDate](v19 "fileModificationDate")];
          if (*(v18 + 8) != v20)
          {
            if (!v13)
            {
              v13 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{v26), "init"}];
            }

            [v13 addObject:nextObject2];
          }
        }
      }

      v14 = v15;
    }

    nextObject2 = [keyEnumerator nextObject];
  }

  while (nextObject2);
  if (!v13)
  {
    return 0;
  }

  v21 = [v13 count];
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      v23 = [v13 objectAtIndex:i];
      v24 = [objc_allocWithZone(*(v14 + 2328)) initWithFormat:@"%@/%@", path, v23];
      [(NSRTFD *)self replaceFile:v23 path:v24];
    }
  }

  return v21;
}

- (id)initFromElement:(id)element ofDocument:(id)document
{
  v7 = [(NSRTFD *)self zone];
  v8 = [document objectForKey:element];
  if (v8)
  {
    v9 = v8;
    v10 = [(NSRTFD *)self init];
    v11 = [document getDirInfo:0];
    if (v11)
    {
      v12 = [v11 objectForKey:element];
      if (v12)
      {
        v13 = v12;
        v14 = [[NSDirInfo allocWithZone:?]];
        v15 = [v13 copyWithZone:v7];
        [(NSDirInfo *)v14 setObject:v15 forKey:@".."];
        [(NSRTFD *)v10 setObject:v14 forKey:@"."];
      }
    }

    v16 = [v9 copyWithZone:v7];
    [(NSRTFD *)v10 setObject:v16 forKey:@".."];
  }

  else
  {
    [(NSRTFD *)self dealloc];
    return 0;
  }

  return v10;
}

- (id)getDirInfo:(BOOL)info
{
  infoCopy = info;
  v5 = [(NSRTFD *)self objectForKey:@"."];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !infoCopy;
  }

  if (!v6)
  {
    v5 = [[NSDirInfo allocWithZone:?]];
    [(NSRTFD *)self setObject:v5 forKey:@"."];
  }

  return v5;
}

- (unint64_t)addFileNamed:(id)named fileAttributes:(id)attributes
{
  v7 = [(NSRTFD *)self zone];
  named = [[NSData allocWithZone:?], "initWithContentsOfMappedFile:", named];
  if (!named)
  {
    return 10;
  }

  v9 = named;
  v10 = [[NSDirInfo allocWithZone:?]];
  attributes = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", attributes];
  *(&attributes->mode + 1) |= 2u;
  [(NSDirInfo *)v10 setObject:attributes forKey:@".."];

  [(NSRTFD *)self setObject:v9 forKey:@".."];
  [(NSRTFD *)self setObject:v10 forKey:@"."];

  return 0;
}

- (unint64_t)insertItem:(id)item path:(id)path dirInfo:(id)info zone:(_NSZone *)zone plist:(id)plist
{
  zoneCopy = zone;
  infoCopy = info;
  if (info)
  {
    if (zone)
    {
      goto LABEL_3;
    }
  }

  else
  {
    infoCopy = [(NSRTFD *)self getDirInfo:0];
    if (zoneCopy)
    {
      goto LABEL_3;
    }
  }

  zoneCopy = [(NSRTFD *)self zone];
LABEL_3:
  v13 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:path, 0];
  if (v13)
  {
    v14 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v13];
    v15 = *(&v14->mode + 1);
    if (v15)
    {
      v17 = [[NSRTFD allocWithZone:?]];
      v18 = [(NSRTFD *)v17 addDirNamed:path];
      if (!v17)
      {
LABEL_16:

        return v18;
      }
    }

    else
    {
      v16 = newLeafDocument(path, v15, zoneCopy);
      v17 = v16;
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = 10;
      }

      if (!v16)
      {
        goto LABEL_16;
      }
    }

    if (!v18)
    {
      [plist setObject:v17 forKey:item];
      [infoCopy setObject:v14 forKey:item];
    }

    goto LABEL_16;
  }

  return 9;
}

- (unint64_t)addDirNamed:(id)named
{
  v5 = [(NSRTFD *)self zone];
  v6 = [[NSDirInfo allocWithZone:?]];
  named = [+[NSFileManager defaultManager](NSFileManager directoryContentsAtPath:"directoryContentsAtPath:", named];
  if (!named)
  {
    named = [MEMORY[0x1E695DEC8] array];
  }

  [(NSRTFD *)self setObject:v6 forKey:@"."];
  v8 = [(NSArray *)named count];
  if (v8 < 1)
  {
LABEL_7:
    v13 = 0;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [(NSArray *)named objectAtIndex:v10];
      v12 = [objc_allocWithZone(NSString) initWithFormat:@"%@/%@", named, v11];
      v13 = [(NSRTFD *)self insertItem:v11 path:v12 dirInfo:v6 zone:v5 plist:self];

      if (v13)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_7;
      }
    }
  }

  return v13;
}

- (id)serialize:(void *)serialize length:(unint64_t *)length
{
  v7 = [(NSRTFD *)self zone];
  v8 = [[NSAKSerializerStream allocWithZone:?]];
  v9 = [(NSAKSerializer *)[NSDocumentSerializer allocWithZone:?], "initForSerializerStream:", v8];
  v10 = [v9 serializeObject:self];
  *length = v10;
  *serialize = 0;
  v11 = vm_allocate(*MEMORY[0x1E69E9A60], serialize, v10, 1);
  if (v11)
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"NSAppKitVirtualMemoryException" reason:@"vm_allocate() failed in NSRTFD serialize:length:" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11), @"NSErrorCodeExceptionInfo", 0)), "raise"}];
  }

  [(NSAKSerializerStream *)v8 copySerializationInto:*serialize];

  return self;
}

- (id)freeSerialized:(void *)serialized length:(unint64_t)length
{
  v5 = mach_vm_deallocate(*MEMORY[0x1E69E9A60], serialized, length);
  if (v5)
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"NSAppKitVirtualMemoryException" reason:@"vm_allocate() failed in NSRTFD freeSerialized:length:" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v5), @"NSErrorCodeExceptionInfo", 0)), "raise"}];
  }

  return self;
}

- (id)pasteboardDataRepresentation
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  [(NSRTFD *)self serialize:v6 length:&v5];
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v6[0] length:v5];
  [(NSRTFD *)self freeSerialized:v6[0] length:v5];
  return v3;
}

- (NSRTFD)initWithPasteboardDataRepresentation:(id)representation
{
  v5 = [(NSRTFD *)self zone];
  v6 = -[NSAKDeserializerStream initFromMemoryNoCopy:length:freeWhenDone:](+[NSAKDeserializerStream allocWithZone:](NSAKDeserializerStream, "allocWithZone:", v5), "initFromMemoryNoCopy:length:freeWhenDone:", [representation bytes], objc_msgSend(representation, "length"), 0);
  v7 = [(NSAKDeserializer *)[NSDocumentDeserializer allocWithZone:?], "initForDeserializerStream:", v6];
  deserializeNewObject = [v7 deserializeNewObject];

  return deserializeNewObject;
}

- (BOOL)_isLink:(id)link
{
  v4 = [(NSRTFD *)self getDirInfo:0];
  if (v4)
  {
    v5 = [v4 objectForKey:link];
    LOBYTE(v4) = v5 && (*(v5 + 18) & 4) != 0;
  }

  return v4;
}

@end