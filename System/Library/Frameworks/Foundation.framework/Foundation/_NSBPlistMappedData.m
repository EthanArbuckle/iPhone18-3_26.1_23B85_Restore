@interface _NSBPlistMappedData
- (BOOL)_getBPlistMarker:(char *)a3 offset:(unint64_t *)a4 trailer:(id *)a5;
- (_NSBPlistMappedData)initWithBinaryPlistData:(void *)a3 size:(unint64_t)a4 trailer:(id *)a5 offset:(unint64_t)a6 marker:(unsigned __int8)a7;
- (_NSBPlistMappedData)initWithFileURL:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation _NSBPlistMappedData

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  ptr = self->ptr;
  if (ptr)
  {
    size = self->size;
    if (size)
    {
      munmap(ptr, size);
    }
  }

  v5.receiver = self;
  v5.super_class = _NSBPlistMappedData;
  [(_NSBPlistMappedData *)&v5 dealloc];
}

- (_NSBPlistMappedData)initWithBinaryPlistData:(void *)a3 size:(unint64_t)a4 trailer:(id *)a5 offset:(unint64_t)a6 marker:(unsigned __int8)a7
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSBPlistMappedData;
  result = [(_NSBPlistMappedData *)&v14 init];
  if (result)
  {
    result->ptr = a3;
    result->size = a4;
    result->mappingIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13 = *&a5->var5;
    *result->bplistTrailer._unused = *a5->var0;
    *&result->bplistTrailer._topObject = v13;
    result->bplistOffset = a6;
    result->bplistMarker = a7;
  }

  return result;
}

- (_NSBPlistMappedData)initWithFileURL:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 0;
  if (([MEMORY[0x1E695DEF0] _readBytesFromPath:objc_msgSend(a3 maxLength:"path") bytes:0x7FFFFFFFFFFFFFFFLL length:&v10 didMap:&v9 options:&v8 reportProgress:8 error:{v7, a4}] & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  if ((__CFBinaryPlistGetTopLevelInfo() & 1) == 0)
  {
    munmap(v10, v9);
    if (a4)
    {
      v14 = @"NSDebugDescription";
      v15[0] = @"File is not binary plist";
      *a4 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 256, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1]);
    }

    goto LABEL_7;
  }

  if ((v8 & 1) == 0)
  {
    __assert_rtn("[_NSBPlistMappedData initWithFileURL:error:]", "NSBPlistMappedClasses.m", 81, "mapped");
  }

  v11[0] = v12;
  v11[1] = v13;
  return [(_NSBPlistMappedData *)self initWithBinaryPlistData:v10 size:v9 trailer:v11 offset:0 marker:0];
}

- (BOOL)_getBPlistMarker:(char *)a3 offset:(unint64_t *)a4 trailer:(id *)a5
{
  if (a3)
  {
    *a3 = self->bplistMarker;
  }

  if (a4)
  {
    *a4 = self->bplistOffset;
  }

  if (a5)
  {
    v5 = *&self->bplistTrailer._topObject;
    *a5->var0 = *self->bplistTrailer._unused;
    *&a5->var5 = v5;
  }

  return 1;
}

@end