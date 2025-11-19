@interface NSPageData
+ (void)initialize;
- (NSPageData)initWithContentsOfFile:(id)a3;
- (NSPageData)initWithContentsOfMappedFile:(id)a3 withFileAttributes:(id)a4;
- (id)data;
- (id)deserializer;
- (id)initFromSerializerStream:(id)a3 length:(unint64_t)a4;
- (unint64_t)writeFile:(id)a3;
- (unint64_t)writePath:(id)a3 docInfo:(id)a4 errorHandler:(id)a5 remapContents:(BOOL)a6 hardLinkPath:(id)a7;
- (void)_setOriginalFileInfoFromFileAttributes:(id)a3;
- (void)dealloc;
@end

@implementation NSPageData

+ (void)initialize
{
  if (NSPageData == a1)
  {
    v3 = umask(0);
    _NSPageDataUmask = v3;

    umask(v3);
  }
}

- (void)_setOriginalFileInfoFromFileAttributes:(id)a3
{
  if (self->data)
  {
    v4 = [a3 fileModificationDate];

    self->_originalFileModDate = [v4 copy];
  }
}

- (NSPageData)initWithContentsOfFile:(id)a3
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:a3];
  self->data = v5;
  if (v5)
  {
    -[NSPageData _setOriginalFileInfoFromFileAttributes:](self, "_setOriginalFileInfoFromFileAttributes:", [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a3, 1]);
    self->_originalFilePath = [a3 copy];
  }

  return self;
}

- (NSPageData)initWithContentsOfMappedFile:(id)a3 withFileAttributes:(id)a4
{
  v4 = a4;
  if (!a4)
  {
    v4 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a3, 1];
    if (!v4)
    {
      if (self->data)
      {
        goto LABEL_4;
      }

LABEL_6:
      [(NSPageData *)self dealloc];
      return 0;
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfMappedFile:a3];
  self->data = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  [(NSPageData *)self _setOriginalFileInfoFromFileAttributes:v4];
  self->_originalFilePath = [a3 copy];
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPageData;
  [(NSPageData *)&v3 dealloc];
}

- (unint64_t)writePath:(id)a3 docInfo:(id)a4 errorHandler:(id)a5 remapContents:(BOOL)a6 hardLinkPath:(id)a7
{
  v8 = a6;
  if (a4)
  {
    if ((*(a4 + 9) & 4) != 0)
    {
      v19 = [objc_allocWithZone(NSString) initWithData:self encoding:4];
      v20 = [+[NSFileManager defaultManager](NSFileManager createSymbolicLinkAtPath:"createSymbolicLinkAtPath:pathContent:" pathContent:a3, v19];

      if (v20)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    v11 = *(a4 + 8);
    v12 = *(a4 + 1);
  }

  else
  {
    v12 = 0;
    v11 = 438;
  }

  if (!self->_originalFileModDate || ![a7 length] || (v13 = +[NSFileManager defaultManager](NSFileManager, "defaultManager"), (v14 = -[NSFileManager fileAttributesAtPath:traverseLink:](v13, "fileAttributesAtPath:traverseLink:", a7, 1)) == 0) || !-[NSDate isEqual:](self->_originalFileModDate, "isEqual:", -[NSDictionary fileModificationDate](v14, "fileModificationDate")) || (v15 = -[NSFileManager linkItemAtPath:toPath:error:](v13, "linkItemAtPath:toPath:error:", a7, a3, 0), result = 0, !v15))
  {
    if ([(NSData *)self writeToFile:a3 atomically:0, a5])
    {
      _NXChmodFile(a3, v11 & ~_NSPageDataUmask);
      if (v8)
      {

        self->data = [objc_msgSend(MEMORY[0x1E695DEF0] allocWithZone:{-[NSPageData zone](self, "zone")), "initWithContentsOfMappedFile:", a3}];
      }

      if (v12)
      {
        v17 = objc_allocWithZone(MEMORY[0x1E695DF20]);
        v18 = [v17 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSince1970:", v12), @"NSFileModificationDate", 0}];
      }

      else
      {
        v21 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
        v18 = [objc_allocWithZone(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v21, @"NSFileModificationDate", 0}];
      }

      [+[NSFileManager defaultManager](NSFileManager changeFileAttributes:"changeFileAttributes:atPath:" atPath:v18, a3];

      v22 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:a3, 1];
      result = 0;
      if (v22)
      {
        if (v8)
        {
          [(NSPageData *)self _setOriginalFileInfoFromFileAttributes:?];

          v23 = [a3 copy];
          result = 0;
          self->_originalFilePath = v23;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (id)initFromSerializerStream:(id)a3 length:(unint64_t)a4
{
  v7 = NSAllocateMemoryPages(a4);
  [a3 copySerializationInto:v7];
  [(NSPageData *)self initWithBytes:v7 length:a4];
  NSDeallocateMemoryPages(v7, a4);
  return self;
}

- (id)deserializer
{
  v3 = [NSAKDeserializerStream allocWithZone:[(NSPageData *)self zone]];
  v4 = [(NSPageData *)self bytes];
  v5 = [(NSPageData *)self length];

  return [(NSAKDeserializerStream *)v3 initFromMemoryNoCopy:v4 length:v5 freeWhenDone:0];
}

- (id)data
{
  v2 = self->data;

  return v2;
}

- (unint64_t)writeFile:(id)a3
{
  if (![(NSData *)self writeToFile:a3 atomically:0])
  {
    return 2;
  }

  _NXChmodFile(a3, ~_NSPageDataUmask & 0x1B6);
  return 0;
}

@end