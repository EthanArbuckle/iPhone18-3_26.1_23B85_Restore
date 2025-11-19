@interface NSRTFD
+ (void)initialize;
- (BOOL)_isLink:(id)a3;
- (NSRTFD)initWithDataRepresentation:(id)a3;
- (NSRTFD)initWithPasteboardDataRepresentation:(id)a3;
- (id)_getDocInfoForKey:(id)a3;
- (id)addCommon:(id)a3 docInfo:(id)a4 value:(id)a5 zone:(_NSZone *)a6;
- (id)addData:(id)a3 name:(id)a4;
- (id)addFile:(id)a3;
- (id)addLink:(id)a3;
- (id)copy:(id)a3 into:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createRandomKey:(id)a3;
- (id)createUniqueKey:(id)a3;
- (id)dataForFile:(id)a3;
- (id)dataRepresentation;
- (id)freeSerialized:(void *)a3 length:(unint64_t)a4;
- (id)getDirInfo:(BOOL)a3;
- (id)getDocument:(id)a3 docInfo:(id)a4;
- (id)initFromDocument:(id)a3 error:(unint64_t *)a4;
- (id)initFromElement:(id)a3 ofDocument:(id)a4;
- (id)pasteboardDataRepresentation;
- (id)removeFile:(id)a3;
- (id)replaceFile:(id)a3 data:(id)a4;
- (id)replaceFile:(id)a3 path:(id)a4;
- (id)serialize:(void *)a3 length:(unint64_t *)a4;
- (id)setPackage:(BOOL)a3;
- (id)tmpNameFromPath:(id)a3 extension:(id)a4;
- (int64_t)validatePath:(id)a3 ignore:(id)a4;
- (unint64_t)addDirNamed:(id)a3;
- (unint64_t)addFileNamed:(id)a3 fileAttributes:(id)a4;
- (unint64_t)initUnixFile:(id)a3;
- (unint64_t)insertItem:(id)a3 path:(id)a4 dirInfo:(id)a5 zone:(_NSZone *)a6 plist:(id)a7;
- (unint64_t)internalSaveTo:(id)a3 removeBackup:(BOOL)a4 errorHandler:(id)a5;
- (unint64_t)internalSaveTo:(id)a3 removeBackup:(BOOL)a4 errorHandler:(id)a5 temp:(id)a6 backup:(id)a7;
- (unint64_t)internalWritePath:(id)a3 errorHandler:(id)a4 remapContents:(BOOL)a5 hardLinkPath:(id)a6;
- (unint64_t)writePath:(id)a3 docInfo:(id)a4 errorHandler:(id)a5 remapContents:(BOOL)a6 markBusy:(BOOL)a7 hardLinkPath:(id)a8;
- (void)dealloc;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation NSRTFD

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSRTFD;
  [(NSRTFD *)&v3 dealloc];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (_NSIsNSData() && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = -[NSPageData initWithData:](+[NSData allocWithZone:](NSPageData, "allocWithZone:", [a3 zone]), "initWithData:", a3);
    [(NSMutableDictionary *)self->dict setObject:v8 forKey:a4];
  }

  else
  {
    dict = self->dict;

    [(NSMutableDictionary *)dict setObject:a3 forKey:a4];
  }
}

- (id)setPackage:(BOOL)a3
{
  v3 = a3;
  if ([(NSRTFD *)self isPackage]!= a3)
  {
    if (v3)
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

- (unint64_t)initUnixFile:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  [(NSRTFD *)self initFromDocument:a3 error:v4];
  return v4[0];
}

- (id)initFromDocument:(id)a3 error:(unint64_t *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = +[NSFileManager defaultManager];
  v8 = [(NSRTFD *)self init];
  if (![a3 length])
  {
    goto LABEL_8;
  }

  if (([a3 isAbsolutePath] & 1) == 0)
  {
    a3 = [(NSString *)[(NSFileManager *)v7 currentDirectoryPath] stringByAppendingPathComponent:a3];
  }

  v11 = 0;
  if (![(NSFileManager *)v7 fileExistsAtPath:a3 isDirectory:&v11])
  {
LABEL_8:
    if (a4)
    {
      *a4 = 9;
    }

    goto LABEL_13;
  }

  if (v11 == 1)
  {
    v9 = [(NSRTFD *)v8 addDirNamed:a3];
    if (!v9)
    {
      return v8;
    }

    goto LABEL_11;
  }

  v9 = [(NSRTFD *)v8 addFileNamed:a3 fileAttributes:[(NSFileManager *)v7 fileAttributesAtPath:a3 traverseLink:1]];
  if (v9)
  {
LABEL_11:
    if (a4)
    {
      *a4 = v9;
    }

LABEL_13:

    return 0;
  }

  return v8;
}

- (unint64_t)writePath:(id)a3 docInfo:(id)a4 errorHandler:(id)a5 remapContents:(BOOL)a6 markBusy:(BOOL)a7 hardLinkPath:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = [(NSRTFD *)self keyEnumerator];
  if (a4)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = 511;
  }

  v16 = [(NSRTFD *)self getDirInfo:0];
  if (_NXMakeDirs(a3, (v15 | 0x1C0) & ~+[NSPageData _umask]) < 0)
  {
    return 4;
  }

  v29 = v15 | 0x1C0;
  v30 = v15;
  v31 = v9;
  if (v9)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [[NSNumber alloc] initWithBool:1];
    v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"NSFileBusy", 0}];

    [(NSFileManager *)v17 changeFileAttributes:v19 atPath:a3];
  }

  v20 = [v14 nextObject];
  if (v20)
  {
    v21 = v20;
    do
    {
      v22 = [(NSRTFD *)self objectForKey:v21];
      if (v22)
      {
        v23 = [[NSString allocWithZone:?], "initWithFormat:", @"%@/%@", a3, v21];
        v22 = [v22 writePath:v23 docInfo:objc_msgSend(v16 errorHandler:"objectForKey:" remapContents:v21) hardLinkPath:{a5, v10, objc_msgSend(a8, "stringByAppendingPathComponent:", v21)}];
      }

      v24 = [v14 nextObject];
      if (!v24)
      {
        break;
      }

      v21 = v24;
    }

    while (!v22);
  }

  else
  {
    v22 = 0;
  }

  if (v29 != v30)
  {
    _NXChmodFile(a3, v30 & ~+[NSPageData _umask]);
  }

  if (v31)
  {
    v25 = +[NSFileManager defaultManager];
    v26 = [[NSNumber alloc] initWithBool:0];
    v27 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v26, @"NSFileBusy", 0}];

    [(NSFileManager *)v25 changeFileAttributes:v27 atPath:a3];
  }

  return v22;
}

- (unint64_t)internalWritePath:(id)a3 errorHandler:(id)a4 remapContents:(BOOL)a5 hardLinkPath:(id)a6
{
  v7 = a5;
  v11 = [(NSRTFD *)self isPackage];
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 8;
  }

  if (v11)
  {

    return [(NSRTFD *)self writePath:a3 docInfo:0 errorHandler:a4 remapContents:v7 markBusy:1 hardLinkPath:a6];
  }

  else
  {
    v13 = [(NSRTFD *)self objectForKey:@".."];
    v14 = [-[NSRTFD getDirInfo:](self getDirInfo:{0), "objectForKey:", @".."}];
    if (v13)
    {

      return [v13 writePath:a3 docInfo:v14 errorHandler:a4 remapContents:v7 hardLinkPath:0];
    }

    else
    {
      return 12;
    }
  }
}

- (unint64_t)internalSaveTo:(id)a3 removeBackup:(BOOL)a4 errorHandler:(id)a5 temp:(id)a6 backup:(id)a7
{
  v10 = a4;
  v13 = +[NSFileManager defaultManager];
  v14 = [(NSFileManager *)v13 fileExistsAtPath:a3];
  v15 = [(NSFileManager *)v13 isWritableFileAtPath:a3];
  v16 = [(NSFileManager *)v13 isDeletableFileAtPath:a3];
  if (v14)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  if (!v14 || v15)
  {
    goto LABEL_9;
  }

  if (!v16)
  {
    return 11;
  }

  v17 = a3;
  if (![a5 attemptOverwrite:a3])
  {
    return 1;
  }

LABEL_9:
  if ([(NSFileManager *)v13 fileExistsAtPath:a6]&& _NXRemoveDocument(a6) < 0)
  {
    return 7;
  }

  v18 = [(NSRTFD *)self internalWritePath:a6 errorHandler:a5 remapContents:v10 hardLinkPath:v17];
  if (v18)
  {
    a7 = a6;
LABEL_12:
    _NXRemoveDocument(a7);
    return v18;
  }

  if (_NXRemoveDocument(a7) < 0)
  {
    return 6;
  }

  if (v14 && _NXRenameFile(a3, a7) < 0)
  {
    return 5;
  }

  v20 = _NXRenameFile(a6, a3);
  if (v20 < 0)
  {
    result = 5;
  }

  else
  {
    result = 0;
  }

  if ((v20 & 0x8000000000000000) == 0 && v10)
  {
    goto LABEL_12;
  }

  return result;
}

- (id)tmpNameFromPath:(id)a3 extension:(id)a4
{
  v5 = [objc_msgSend(a3 "stringByDeletingLastPathComponent")];

  return [v5 stringByAppendingPathExtension:a4];
}

- (unint64_t)internalSaveTo:(id)a3 removeBackup:(BOOL)a4 errorHandler:(id)a5
{
  v6 = a4;
  v9 = [(NSRTFD *)self tmpNameFromPath:a3 extension:@"tmp"];
  if (v6)
  {
    v10 = [(NSRTFD *)self tmpNameFromPath:a3 extension:@"bak"];
  }

  else
  {
    v10 = [(NSRTFD *)self nameFromPath:a3 extra:@"~"];
  }

  return [(NSRTFD *)self internalSaveTo:a3 removeBackup:v6 errorHandler:a5 temp:v9 backup:v10];
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

- (NSRTFD)initWithDataRepresentation:(id)a3
{
  v5 = [a3 length];
  v6 = v5 - 8;
  if (v5 < 8)
  {
    NSLog(@"Unable to read RTFD from data:%p", a3);
LABEL_3:

    return 0;
  }

  v8 = [a3 bytes];
  if (*v8 ^ 0x64667472 | *(v8 + 4))
  {
    v9 = self;
    v10 = a3;
  }

  else
  {
    if (v8[1])
    {
      NSLog(@"Bad version in RTFD data:%p", a3);
      goto LABEL_3;
    }

    v10 = [a3 subdataWithRange:{8, v6}];
    v9 = self;
  }

  return [(NSRTFD *)v9 initWithPasteboardDataRepresentation:v10];
}

- (id)createRandomKey:(id)a3
{
  v5 = [(NSRTFD *)self zone];
  if (![(NSRTFD *)self objectForKey:a3])
  {
    return a3;
  }

  while (1)
  {
    v6 = mach_absolute_time();
    v7 = [a3 significantText];
    v9 = -[NSString initWithFormat:](+[NSString allocWithZone:](NSString, "allocWithZone:", v5), "initWithFormat:", @"%d_%@", v6, [a3 substringWithRange:{v7, v8}]);
    if (![(NSRTFD *)self objectForKey:v9])
    {
      break;
    }
  }

  return v9;
}

- (id)createUniqueKey:(id)a3
{
  do
  {
    v5 = [(NSRTFD *)self createRandomKey:a3];
  }

  while ([(NSRTFD *)self objectForKey:[NSString stringWithFormat:@"%@.tiff", v5]]);
  return v5;
}

- (id)getDocument:(id)a3 docInfo:(id)a4
{
  v6 = [(NSRTFD *)self zone];
  v7 = *(a4 + 9);
  if (v7)
  {
    return [[NSRTFD allocWithZone:?]error:"initFromDocument:error:", a3, 0];
  }

  else
  {
    return newLeafDocument(a3, v7, v6);
  }
}

- (id)replaceFile:(id)a3 data:(id)a4
{
  v6 = [[NSData allocWithZone:?], "initWithData:", a4];
  [(NSRTFD *)self setObject:v6 forKey:a3];

  return self;
}

- (id)replaceFile:(id)a3 path:(id)a4
{
  v6 = self;
  v7 = [(NSRTFD *)self zone];
  v8 = [(NSRTFD *)v6 getDirInfo:1];
  v9 = [v8 objectForKey:a3];
  v10 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a4, 0];
  if (!v10)
  {
    return 0;
  }

  if (!v9)
  {
    v13 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v10];
    v14 = [(NSRTFD *)v6 getDocument:a4 docInfo:v13];
    if (!v14)
    {

      return v6;
    }

    v12 = v14;
    [(NSRTFD *)v6 setObject:v14 forKey:a3];
    [v8 setObject:v13 forKey:a3];

    goto LABEL_8;
  }

  [v9 setFileAttributes:v10];
  v11 = [(NSRTFD *)v6 getDocument:a4 docInfo:v9];
  if (v11)
  {
    v12 = v11;
    [(NSRTFD *)v6 setObject:v11 forKey:a3];
LABEL_8:
  }

  return v6;
}

- (id)addCommon:(id)a3 docInfo:(id)a4 value:(id)a5 zone:(_NSZone *)a6
{
  v10 = [(NSRTFD *)self getDirInfo:1, a4, a5, a6];
  v11 = -[NSRTFD uniqueKey:](self, "uniqueKey:", [a3 lastPathComponent]);
  [(NSRTFD *)self setObject:a5 forKey:v11];
  if (a4)
  {
    [v10 setObject:a4 forKey:v11];
  }

  return v11;
}

- (id)_getDocInfoForKey:(id)a3
{
  v4 = [(NSRTFD *)self getDirInfo:0];

  return [v4 objectForKey:a3];
}

- (id)addFile:(id)a3
{
  v5 = [(NSRTFD *)self zone];
  v6 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a3, 0];
  if (!v6)
  {
    return 0;
  }

  v7 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v6];
  v8 = [(NSRTFD *)self getDocument:a3 docInfo:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [(NSRTFD *)self addCommon:a3 docInfo:v7 value:v8 zone:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addLink:(id)a3
{
  v5 = [(NSRTFD *)self zone];
  result = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a3, 1];
  if (result)
  {
    v7 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", result];
    *(&v7->mode + 1) |= 4u;
    v8 = -[NSPageData initWithData:](+[NSData allocWithZone:](NSPageData, "allocWithZone:", v5), "initWithData:", [a3 dataUsingEncoding:4 allowLossyConversion:1]);
    v9 = [(NSRTFD *)self addCommon:a3 docInfo:v7 value:v8 zone:v5];

    return v9;
  }

  return result;
}

- (id)dataForFile:(id)a3
{
  v5 = [(NSRTFD *)self objectForKey:?];
  if (!v5)
  {
    return v5;
  }

  v6 = [-[NSRTFD getDirInfo:](self getDirInfo:{0), "objectForKey:", a3}];
  if (!v6 || (*(v6 + 18) & 4) == 0)
  {
    return v5;
  }

  v8 = [objc_allocWithZone(NSString) initWithData:v5 encoding:4];
  v9 = MEMORY[0x1E695DEF0];

  return [v9 dataWithContentsOfFile:v8];
}

- (id)removeFile:(id)a3
{
  v5 = [(NSRTFD *)self getDirInfo:0];
  [(NSRTFD *)self removeObjectForKey:a3];
  [v5 removeObjectForKey:a3];
  return self;
}

- (id)copy:(id)a3 into:(id)a4
{
  v7 = [a4 zone];
  v8 = [(NSRTFD *)self getDirInfo:0];
  v9 = [a4 uniqueKey:a3];
  v10 = [-[NSRTFD objectForKey:](self objectForKey:{a3), "copyWithZone:", v7}];
  [a4 setObject:v10 forKey:v9];

  v11 = [v8 objectForKey:v9];
  if (v11)
  {
    v12 = v11;
    v13 = [a4 getDirInfo:1];
    v14 = [v12 copyWithZone:v7];
    [v13 setObject:v14 forKey:v9];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSRTFD *)self getDirInfo:0];
  v7 = [(NSRTFD *)self keyEnumerator];
  v8 = 0;
  while (1)
  {
    v9 = [v7 nextObject];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = [(NSRTFD *)self objectForKey:v9];
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

          v14 = [v13 copyWithZone:a3];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v15 = [v11 copyWithZone:a3];
      [v5 setObject:v15 forKey:v10];
    }
  }

  return v5;
}

- (id)addData:(id)a3 name:(id)a4
{
  v6 = [[NSData allocWithZone:?], "initWithData:", a3];
  v7 = -[NSRTFD uniqueKey:](self, "uniqueKey:", [a4 lastPathComponent]);
  [(NSRTFD *)self setObject:v6 forKey:v7];

  return v7;
}

- (int64_t)validatePath:(id)a3 ignore:(id)a4
{
  v7 = [(NSRTFD *)self zone];
  v8 = [(NSRTFD *)self keyEnumerator];
  v9 = [(NSRTFD *)self getDirInfo:0];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v8 nextObject];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v26 = v7;
  v13 = 0;
  v14 = 0x1E69EE000uLL;
  do
  {
    if (-[NSRTFD objectForKey:](self, "objectForKey:", v12) && ![a4 objectForKey:v12])
    {
      v15 = v14;
      v16 = [objc_allocWithZone(*(v14 + 2328)) initWithFormat:@"%@/%@", a3, v12];
      v17 = [v10 objectForKey:v12];
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

            [v13 addObject:v12];
          }
        }
      }

      v14 = v15;
    }

    v12 = [v8 nextObject];
  }

  while (v12);
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
      v24 = [objc_allocWithZone(*(v14 + 2328)) initWithFormat:@"%@/%@", a3, v23];
      [(NSRTFD *)self replaceFile:v23 path:v24];
    }
  }

  return v21;
}

- (id)initFromElement:(id)a3 ofDocument:(id)a4
{
  v7 = [(NSRTFD *)self zone];
  v8 = [a4 objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [(NSRTFD *)self init];
    v11 = [a4 getDirInfo:0];
    if (v11)
    {
      v12 = [v11 objectForKey:a3];
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

- (id)getDirInfo:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSRTFD *)self objectForKey:@"."];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = [[NSDirInfo allocWithZone:?]];
    [(NSRTFD *)self setObject:v5 forKey:@"."];
  }

  return v5;
}

- (unint64_t)addFileNamed:(id)a3 fileAttributes:(id)a4
{
  v7 = [(NSRTFD *)self zone];
  v8 = [[NSData allocWithZone:?], "initWithContentsOfMappedFile:", a3];
  if (!v8)
  {
    return 10;
  }

  v9 = v8;
  v10 = [[NSDirInfo allocWithZone:?]];
  v11 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", a4];
  *(&v11->mode + 1) |= 2u;
  [(NSDirInfo *)v10 setObject:v11 forKey:@".."];

  [(NSRTFD *)self setObject:v9 forKey:@".."];
  [(NSRTFD *)self setObject:v10 forKey:@"."];

  return 0;
}

- (unint64_t)insertItem:(id)a3 path:(id)a4 dirInfo:(id)a5 zone:(_NSZone *)a6 plist:(id)a7
{
  v8 = a6;
  v9 = a5;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [(NSRTFD *)self getDirInfo:0];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v8 = [(NSRTFD *)self zone];
LABEL_3:
  v13 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a4, 0];
  if (v13)
  {
    v14 = [[NSDocInfo allocWithZone:?], "initWithFileAttributes:", v13];
    v15 = *(&v14->mode + 1);
    if (v15)
    {
      v17 = [[NSRTFD allocWithZone:?]];
      v18 = [(NSRTFD *)v17 addDirNamed:a4];
      if (!v17)
      {
LABEL_16:

        return v18;
      }
    }

    else
    {
      v16 = newLeafDocument(a4, v15, v8);
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
      [a7 setObject:v17 forKey:a3];
      [v9 setObject:v14 forKey:a3];
    }

    goto LABEL_16;
  }

  return 9;
}

- (unint64_t)addDirNamed:(id)a3
{
  v5 = [(NSRTFD *)self zone];
  v6 = [[NSDirInfo allocWithZone:?]];
  v7 = [+[NSFileManager defaultManager](NSFileManager directoryContentsAtPath:"directoryContentsAtPath:", a3];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  [(NSRTFD *)self setObject:v6 forKey:@"."];
  v8 = [(NSArray *)v7 count];
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
      v11 = [(NSArray *)v7 objectAtIndex:v10];
      v12 = [objc_allocWithZone(NSString) initWithFormat:@"%@/%@", a3, v11];
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

- (id)serialize:(void *)a3 length:(unint64_t *)a4
{
  v7 = [(NSRTFD *)self zone];
  v8 = [[NSAKSerializerStream allocWithZone:?]];
  v9 = [(NSAKSerializer *)[NSDocumentSerializer allocWithZone:?], "initForSerializerStream:", v8];
  v10 = [v9 serializeObject:self];
  *a4 = v10;
  *a3 = 0;
  v11 = vm_allocate(*MEMORY[0x1E69E9A60], a3, v10, 1);
  if (v11)
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:@"NSAppKitVirtualMemoryException" reason:@"vm_allocate() failed in NSRTFD serialize:length:" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11), @"NSErrorCodeExceptionInfo", 0)), "raise"}];
  }

  [(NSAKSerializerStream *)v8 copySerializationInto:*a3];

  return self;
}

- (id)freeSerialized:(void *)a3 length:(unint64_t)a4
{
  v5 = mach_vm_deallocate(*MEMORY[0x1E69E9A60], a3, a4);
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

- (NSRTFD)initWithPasteboardDataRepresentation:(id)a3
{
  v5 = [(NSRTFD *)self zone];
  v6 = -[NSAKDeserializerStream initFromMemoryNoCopy:length:freeWhenDone:](+[NSAKDeserializerStream allocWithZone:](NSAKDeserializerStream, "allocWithZone:", v5), "initFromMemoryNoCopy:length:freeWhenDone:", [a3 bytes], objc_msgSend(a3, "length"), 0);
  v7 = [(NSAKDeserializer *)[NSDocumentDeserializer allocWithZone:?], "initForDeserializerStream:", v6];
  v8 = [v7 deserializeNewObject];

  return v8;
}

- (BOOL)_isLink:(id)a3
{
  v4 = [(NSRTFD *)self getDirInfo:0];
  if (v4)
  {
    v5 = [v4 objectForKey:a3];
    LOBYTE(v4) = v5 && (*(v5 + 18) & 4) != 0;
  }

  return v4;
}

@end