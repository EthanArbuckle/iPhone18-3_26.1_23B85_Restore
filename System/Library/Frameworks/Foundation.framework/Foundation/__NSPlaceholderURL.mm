@interface __NSPlaceholderURL
- (__NSPlaceholderURL)init;
- (__NSPlaceholderURL)initWithDataRepresentation:(id)representation relativeToURL:(id)l;
- (__NSPlaceholderURL)initWithScheme:(id)scheme host:(id)host path:(id)path;
- (__NSPlaceholderURL)initWithString:(id)string relativeToURL:(id)l encodingInvalidCharacters:(BOOL)characters;
- (id)_initFileURLWithPath:(id)path cachingResourceValuesForKeys:(id)keys error:(id *)error;
- (id)initAbsoluteURLWithDataRepresentation:(id)representation relativeToURL:(id)l;
- (id)initByResolvingAliasFileAtURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error;
- (id)initFileURLWithFileSystemRepresentation:(const char *)representation isDirectory:(BOOL)directory relativeToURL:(id)l;
- (id)initFileURLWithPath:(id)path;
- (id)initFileURLWithPath:(id)path isDirectory:(BOOL)directory;
- (id)initFileURLWithPath:(id)path isDirectory:(BOOL)directory relativeToURL:(id)l;
- (id)initFileURLWithPath:(id)path relativeToURL:(id)l;
@end

@implementation __NSPlaceholderURL

- (__NSPlaceholderURL)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSPlaceholderURL;
  return [(NSURL *)&v3 init];
}

- (__NSPlaceholderURL)initWithString:(id)string relativeToURL:(id)l encodingInvalidCharacters:(BOOL)characters
{
  if (!string)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  v5 = [MEMORY[0x1E695DFF8] _urlWithString:string relativeToURL:l encodingInvalidCharacters:characters];

  return v5;
}

- (__NSPlaceholderURL)initWithScheme:(id)scheme host:(id)host path:(id)path
{
  if (([path isAbsolutePath] & 1) == 0)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: path %@ is not absolute.", _NSMethodExceptionProem(self, a2), path), 0}];
    objc_exception_throw(v16);
  }

  if (!scheme)
  {
    return 0;
  }

  if (host)
  {
    stringByAddingPercentEscapes = [host stringByAddingPercentEscapes];
    if (!stringByAddingPercentEscapes)
    {
      return 0;
    }
  }

  else
  {
    stringByAddingPercentEscapes = &stru_1EEEFDF90;
  }

  standardizedURLPath = [path standardizedURLPath];
  if (!standardizedURLPath)
  {
    return 0;
  }

  v12 = standardizedURLPath;
  v13 = objc_alloc_init(NSURLComponents);
  [(NSURLComponents *)v13 setScheme:scheme];

  v14 = [NSString stringWithFormat:@"%@://%@%@", scheme, stringByAddingPercentEscapes, v12];

  return [(__NSPlaceholderURL *)self initWithString:v14];
}

- (__NSPlaceholderURL)initWithDataRepresentation:(id)representation relativeToURL:(id)l
{
  v4 = [MEMORY[0x1E695DFF8] _urlWithDataRepresentation:representation relativeToURL:l isAbsolute:0];

  return v4;
}

- (id)initAbsoluteURLWithDataRepresentation:(id)representation relativeToURL:(id)l
{
  v4 = [MEMORY[0x1E695DFF8] _urlWithDataRepresentation:representation relativeToURL:l isAbsolute:1];

  return v4;
}

- (id)initFileURLWithPath:(id)path
{
  if (!path)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  result = [path length];
  if (result)
  {
    v5 = [MEMORY[0x1E695DFF8] _fileURLWithPath:path relativeToURL:0];

    return v5;
  }

  return result;
}

- (id)initFileURLWithPath:(id)path isDirectory:(BOOL)directory
{
  if (!path)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  directoryCopy = directory;
  result = [path length];
  if (result)
  {
    v7 = [MEMORY[0x1E695DFF8] _fileURLWithPath:path isDirectory:directoryCopy relativeToURL:0];

    return v7;
  }

  return result;
}

- (id)initFileURLWithPath:(id)path relativeToURL:(id)l
{
  if (!path)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  result = [path length];
  if (result)
  {
    v7 = [MEMORY[0x1E695DFF8] _fileURLWithPath:path relativeToURL:l];

    return v7;
  }

  return result;
}

- (id)initFileURLWithPath:(id)path isDirectory:(BOOL)directory relativeToURL:(id)l
{
  if (!path)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  directoryCopy = directory;
  result = [path length];
  if (result)
  {
    v9 = [MEMORY[0x1E695DFF8] _fileURLWithPath:path isDirectory:directoryCopy relativeToURL:l];

    return v9;
  }

  return result;
}

- (id)initFileURLWithFileSystemRepresentation:(const char *)representation isDirectory:(BOOL)directory relativeToURL:(id)l
{
  directoryCopy = directory;
  v8 = [NSString stringWithCString:representation encoding:4];

  return [(__NSPlaceholderURL *)self initFileURLWithPath:v8 isDirectory:directoryCopy relativeToURL:l];
}

- (id)initByResolvingBookmarkData:(id)data options:(unint64_t)options relativeToURL:(id)l bookmarkDataIsStale:(BOOL *)stale error:(id *)error
{
  _cfurl = [l _cfurl];
  if (_cfurl == &___immutablePlaceholderSwiftURL)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(&___immutablePlaceholderSwiftURL, a2)), 0}];
    objc_exception_throw(v16);
  }

  v13 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], data, options, _cfurl, 0, stale, error);
  v14 = v13;
  if (error && !v13 && *error)
  {
    *error = *error;
  }

  return v14;
}

- (id)initByResolvingAliasFileAtURL:(id)l options:(unint64_t)options error:(id *)error
{
  v6 = MEMORY[0x1865CFA00](*MEMORY[0x1E695E480], l, options, 0);
  v7 = v6;
  if (error && !v6 && *error)
  {
    *error = *error;
  }

  return v7;
}

- (id)_initFileURLWithPath:(id)path cachingResourceValuesForKeys:(id)keys error:(id *)error
{
  if (!path)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil string parameter", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  result = [path length];
  if (result)
  {
    if (([path isAbsolutePath] & 1) == 0)
    {
      [path stringByStandardizingPath];
    }

    result = _CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys();
    if (!result)
    {
      if (error)
      {
        result = *error;
        if (*error)
        {
          v8 = result;
          result = 0;
          *error = v8;
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