@interface NSPageData
+ (void)initialize;
- (NSPageData)initWithContentsOfFile:(id)file;
- (NSPageData)initWithContentsOfMappedFile:(id)file withFileAttributes:(id)attributes;
- (id)data;
- (id)deserializer;
- (id)initFromSerializerStream:(id)stream length:(unint64_t)length;
- (unint64_t)writeFile:(id)file;
- (unint64_t)writePath:(id)path docInfo:(id)info errorHandler:(id)handler remapContents:(BOOL)contents hardLinkPath:(id)linkPath;
- (void)_setOriginalFileInfoFromFileAttributes:(id)attributes;
- (void)dealloc;
@end

@implementation NSPageData

+ (void)initialize
{
  if (NSPageData == self)
  {
    v3 = umask(0);
    _NSPageDataUmask = v3;

    umask(v3);
  }
}

- (void)_setOriginalFileInfoFromFileAttributes:(id)attributes
{
  if (self->data)
  {
    fileModificationDate = [attributes fileModificationDate];

    self->_originalFileModDate = [fileModificationDate copy];
  }
}

- (NSPageData)initWithContentsOfFile:(id)file
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:file];
  self->data = v5;
  if (v5)
  {
    -[NSPageData _setOriginalFileInfoFromFileAttributes:](self, "_setOriginalFileInfoFromFileAttributes:", [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:file, 1]);
    self->_originalFilePath = [file copy];
  }

  return self;
}

- (NSPageData)initWithContentsOfMappedFile:(id)file withFileAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (!attributes)
  {
    attributesCopy = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:file, 1];
    if (!attributesCopy)
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

  v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfMappedFile:file];
  self->data = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  [(NSPageData *)self _setOriginalFileInfoFromFileAttributes:attributesCopy];
  self->_originalFilePath = [file copy];
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPageData;
  [(NSPageData *)&v3 dealloc];
}

- (unint64_t)writePath:(id)path docInfo:(id)info errorHandler:(id)handler remapContents:(BOOL)contents hardLinkPath:(id)linkPath
{
  contentsCopy = contents;
  if (info)
  {
    if ((*(info + 9) & 4) != 0)
    {
      v19 = [objc_allocWithZone(NSString) initWithData:self encoding:4];
      v20 = [+[NSFileManager defaultManager](NSFileManager createSymbolicLinkAtPath:"createSymbolicLinkAtPath:pathContent:" pathContent:path, v19];

      if (v20)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    v11 = *(info + 8);
    v12 = *(info + 1);
  }

  else
  {
    v12 = 0;
    v11 = 438;
  }

  if (!self->_originalFileModDate || ![linkPath length] || (v13 = +[NSFileManager defaultManager](NSFileManager, "defaultManager"), (v14 = -[NSFileManager fileAttributesAtPath:traverseLink:](v13, "fileAttributesAtPath:traverseLink:", linkPath, 1)) == 0) || !-[NSDate isEqual:](self->_originalFileModDate, "isEqual:", -[NSDictionary fileModificationDate](v14, "fileModificationDate")) || (v15 = -[NSFileManager linkItemAtPath:toPath:error:](v13, "linkItemAtPath:toPath:error:", linkPath, path, 0), result = 0, !v15))
  {
    if ([(NSData *)self writeToFile:path atomically:0, handler])
    {
      _NXChmodFile(path, v11 & ~_NSPageDataUmask);
      if (contentsCopy)
      {

        self->data = [objc_msgSend(MEMORY[0x1E695DEF0] allocWithZone:{-[NSPageData zone](self, "zone")), "initWithContentsOfMappedFile:", path}];
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

      [+[NSFileManager defaultManager](NSFileManager changeFileAttributes:"changeFileAttributes:atPath:" atPath:v18, path];

      v22 = [+[NSFileManager defaultManager](NSFileManager fileAttributesAtPath:"fileAttributesAtPath:traverseLink:" traverseLink:path, 1];
      result = 0;
      if (v22)
      {
        if (contentsCopy)
        {
          [(NSPageData *)self _setOriginalFileInfoFromFileAttributes:?];

          v23 = [path copy];
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

- (id)initFromSerializerStream:(id)stream length:(unint64_t)length
{
  v7 = NSAllocateMemoryPages(length);
  [stream copySerializationInto:v7];
  [(NSPageData *)self initWithBytes:v7 length:length];
  NSDeallocateMemoryPages(v7, length);
  return self;
}

- (id)deserializer
{
  v3 = [NSAKDeserializerStream allocWithZone:[(NSPageData *)self zone]];
  bytes = [(NSPageData *)self bytes];
  v5 = [(NSPageData *)self length];

  return [(NSAKDeserializerStream *)v3 initFromMemoryNoCopy:bytes length:v5 freeWhenDone:0];
}

- (id)data
{
  v2 = self->data;

  return v2;
}

- (unint64_t)writeFile:(id)file
{
  if (![(NSData *)self writeToFile:file atomically:0])
  {
    return 2;
  }

  _NXChmodFile(file, ~_NSPageDataUmask & 0x1B6);
  return 0;
}

@end