@interface _NSBPlistMappedData
- (BOOL)_getBPlistMarker:(char *)marker offset:(unint64_t *)offset trailer:(id *)trailer;
- (_NSBPlistMappedData)initWithBinaryPlistData:(void *)data size:(unint64_t)size trailer:(id *)trailer offset:(unint64_t)offset marker:(unsigned __int8)marker;
- (_NSBPlistMappedData)initWithFileURL:(id)l error:(id *)error;
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

- (_NSBPlistMappedData)initWithBinaryPlistData:(void *)data size:(unint64_t)size trailer:(id *)trailer offset:(unint64_t)offset marker:(unsigned __int8)marker
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSBPlistMappedData;
  result = [(_NSBPlistMappedData *)&v14 init];
  if (result)
  {
    result->ptr = data;
    result->size = size;
    result->mappingIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13 = *&trailer->var5;
    *result->bplistTrailer._unused = *trailer->var0;
    *&result->bplistTrailer._topObject = v13;
    result->bplistOffset = offset;
    result->bplistMarker = marker;
  }

  return result;
}

- (_NSBPlistMappedData)initWithFileURL:(id)l error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 0;
  if (([MEMORY[0x1E695DEF0] _readBytesFromPath:objc_msgSend(l maxLength:"path") bytes:0x7FFFFFFFFFFFFFFFLL length:&v10 didMap:&v9 options:&v8 reportProgress:8 error:{v7, error}] & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  if ((__CFBinaryPlistGetTopLevelInfo() & 1) == 0)
  {
    munmap(v10, v9);
    if (error)
    {
      v14 = @"NSDebugDescription";
      v15[0] = @"File is not binary plist";
      *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 256, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1]);
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

- (BOOL)_getBPlistMarker:(char *)marker offset:(unint64_t *)offset trailer:(id *)trailer
{
  if (marker)
  {
    *marker = self->bplistMarker;
  }

  if (offset)
  {
    *offset = self->bplistOffset;
  }

  if (trailer)
  {
    v5 = *&self->bplistTrailer._topObject;
    *trailer->var0 = *self->bplistTrailer._unused;
    *&trailer->var5 = v5;
  }

  return 1;
}

@end