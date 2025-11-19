@interface __NSPlaceholderURL
- (__NSPlaceholderURL)init;
- (__NSPlaceholderURL)initWithDataRepresentation:(id)a3 relativeToURL:(id)a4;
- (__NSPlaceholderURL)initWithScheme:(id)a3 host:(id)a4 path:(id)a5;
- (__NSPlaceholderURL)initWithString:(id)a3 relativeToURL:(id)a4 encodingInvalidCharacters:(BOOL)a5;
- (id)_initFileURLWithPath:(id)a3 cachingResourceValuesForKeys:(id)a4 error:(id *)a5;
- (id)initAbsoluteURLWithDataRepresentation:(id)a3 relativeToURL:(id)a4;
- (id)initByResolvingAliasFileAtURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)initByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7;
- (id)initFileURLWithFileSystemRepresentation:(const char *)a3 isDirectory:(BOOL)a4 relativeToURL:(id)a5;
- (id)initFileURLWithPath:(id)a3;
- (id)initFileURLWithPath:(id)a3 isDirectory:(BOOL)a4;
- (id)initFileURLWithPath:(id)a3 isDirectory:(BOOL)a4 relativeToURL:(id)a5;
- (id)initFileURLWithPath:(id)a3 relativeToURL:(id)a4;
@end

@implementation __NSPlaceholderURL

- (__NSPlaceholderURL)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSPlaceholderURL;
  return [(NSURL *)&v3 init];
}

- (__NSPlaceholderURL)initWithString:(id)a3 relativeToURL:(id)a4 encodingInvalidCharacters:(BOOL)a5
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  v5 = [MEMORY[0x1E695DFF8] _urlWithString:a3 relativeToURL:a4 encodingInvalidCharacters:a5];

  return v5;
}

- (__NSPlaceholderURL)initWithScheme:(id)a3 host:(id)a4 path:(id)a5
{
  if (([a5 isAbsolutePath] & 1) == 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: path %@ is not absolute.", _NSMethodExceptionProem(self, a2), a5), 0}];
    objc_exception_throw(v16);
  }

  if (!a3)
  {
    return 0;
  }

  if (a4)
  {
    v10 = [a4 stringByAddingPercentEscapes];
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v10 = &stru_1EEEFDF90;
  }

  v11 = [a5 standardizedURLPath];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = objc_alloc_init(NSURLComponents);
  [(NSURLComponents *)v13 setScheme:a3];

  v14 = [NSString stringWithFormat:@"%@://%@%@", a3, v10, v12];

  return [(__NSPlaceholderURL *)self initWithString:v14];
}

- (__NSPlaceholderURL)initWithDataRepresentation:(id)a3 relativeToURL:(id)a4
{
  v4 = [MEMORY[0x1E695DFF8] _urlWithDataRepresentation:a3 relativeToURL:a4 isAbsolute:0];

  return v4;
}

- (id)initAbsoluteURLWithDataRepresentation:(id)a3 relativeToURL:(id)a4
{
  v4 = [MEMORY[0x1E695DFF8] _urlWithDataRepresentation:a3 relativeToURL:a4 isAbsolute:1];

  return v4;
}

- (id)initFileURLWithPath:(id)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  result = [a3 length];
  if (result)
  {
    v5 = [MEMORY[0x1E695DFF8] _fileURLWithPath:a3 relativeToURL:0];

    return v5;
  }

  return result;
}

- (id)initFileURLWithPath:(id)a3 isDirectory:(BOOL)a4
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v4 = a4;
  result = [a3 length];
  if (result)
  {
    v7 = [MEMORY[0x1E695DFF8] _fileURLWithPath:a3 isDirectory:v4 relativeToURL:0];

    return v7;
  }

  return result;
}

- (id)initFileURLWithPath:(id)a3 relativeToURL:(id)a4
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  result = [a3 length];
  if (result)
  {
    v7 = [MEMORY[0x1E695DFF8] _fileURLWithPath:a3 relativeToURL:a4];

    return v7;
  }

  return result;
}

- (id)initFileURLWithPath:(id)a3 isDirectory:(BOOL)a4 relativeToURL:(id)a5
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  v6 = a4;
  result = [a3 length];
  if (result)
  {
    v9 = [MEMORY[0x1E695DFF8] _fileURLWithPath:a3 isDirectory:v6 relativeToURL:a5];

    return v9;
  }

  return result;
}

- (id)initFileURLWithFileSystemRepresentation:(const char *)a3 isDirectory:(BOOL)a4 relativeToURL:(id)a5
{
  v6 = a4;
  v8 = [NSString stringWithCString:a3 encoding:4];

  return [(__NSPlaceholderURL *)self initFileURLWithPath:v8 isDirectory:v6 relativeToURL:a5];
}

- (id)initByResolvingBookmarkData:(id)a3 options:(unint64_t)a4 relativeToURL:(id)a5 bookmarkDataIsStale:(BOOL *)a6 error:(id *)a7
{
  v12 = [a5 _cfurl];
  if (v12 == &___immutablePlaceholderSwiftURL)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(&___immutablePlaceholderSwiftURL, a2)), 0}];
    objc_exception_throw(v16);
  }

  v13 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], a3, a4, v12, 0, a6, a7);
  v14 = v13;
  if (a7 && !v13 && *a7)
  {
    *a7 = *a7;
  }

  return v14;
}

- (id)initByResolvingAliasFileAtURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = MEMORY[0x1865CFA00](*MEMORY[0x1E695E480], a3, a4, 0);
  v7 = v6;
  if (a5 && !v6 && *a5)
  {
    *a5 = *a5;
  }

  return v7;
}

- (id)_initFileURLWithPath:(id)a3 cachingResourceValuesForKeys:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  result = [a3 length];
  if (result)
  {
    if (([a3 isAbsolutePath] & 1) == 0)
    {
      [a3 stringByStandardizingPath];
    }

    result = _CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys();
    if (!result)
    {
      if (a5)
      {
        result = *a5;
        if (*a5)
        {
          v8 = result;
          result = 0;
          *a5 = v8;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

@end