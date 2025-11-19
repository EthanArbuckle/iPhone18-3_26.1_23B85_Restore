@interface NSURL(NSURL)
+ (id)URLByResolvingAliasFileAtURL:()NSURL options:error:;
+ (id)URLByResolvingBookmarkData:()NSURL options:relativeToURL:bookmarkDataIsStale:error:;
+ (id)URLWithDataRepresentation:()NSURL relativeToURL:;
+ (id)URLWithString:()NSURL encodingInvalidCharacters:;
+ (id)URLWithString:()NSURL relativeToURL:;
+ (id)absoluteURLWithDataRepresentation:()NSURL relativeToURL:;
+ (id)allocWithZone:()NSURL;
+ (id)fileURLWithFileSystemRepresentation:()NSURL isDirectory:relativeToURL:;
+ (id)fileURLWithPath:()NSURL;
+ (id)fileURLWithPath:()NSURL isDirectory:;
+ (id)fileURLWithPath:()NSURL isDirectory:relativeToURL:;
+ (id)fileURLWithPath:()NSURL relativeToURL:;
- (CFIndex)retainCount;
- (CFStringRef)parameterString;
- (CFURLRef)absoluteURL;
- (CFURLRef)initAbsoluteURLWithDataRepresentation:()NSURL relativeToURL:;
- (CFURLRef)initFileURLWithPath:()NSURL;
- (CFURLRef)initFileURLWithPath:()NSURL isDirectory:;
- (CFURLRef)initWithCoder:()NSURL;
- (CFURLRef)initWithDataRepresentation:()NSURL relativeToURL:;
- (CFURLRef)initWithString:()NSURL relativeToURL:encodingInvalidCharacters:;
- (NSNumber)port;
- (NSString)description;
- (NSString)resourceSpecifier;
- (__CFString)fragment;
- (__CFString)host;
- (__CFString)path;
- (__CFString)query;
- (__CFString)relativePath;
- (__CFString)relativeString;
- (__CFString)scheme;
- (__CFString)user;
- (char)_trueSelf;
- (char)initByResolvingAliasFileAtURL:()NSURL options:error:;
- (char)initByResolvingBookmarkData:()NSURL options:relativeToURL:bookmarkDataIsStale:error:;
- (char)initFileURLWithFileSystemRepresentation:()NSURL isDirectory:relativeToURL:;
- (char)initFileURLWithPath:()NSURL isDirectory:relativeToURL:;
- (char)initFileURLWithPath:()NSURL relativeToURL:;
- (const)baseURL;
- (id)_tryRetain;
- (id)dealloc;
- (id)retain;
- (id)standardizedURL;
- (uint64_t)_clientsCreatingIfNecessary:()NSURL;
- (uint64_t)_encoding;
- (uint64_t)_securePath;
- (uint64_t)absoluteString;
- (uint64_t)dataRepresentation;
- (uint64_t)encodeWithCoder:()NSURL;
- (uint64_t)fileSystemRepresentation;
- (uint64_t)getFileSystemRepresentation:()NSURL maxLength:;
- (uint64_t)hasDirectoryPath;
- (uint64_t)hash;
- (uint64_t)init;
- (uint64_t)initWithScheme:()NSURL host:path:;
- (uint64_t)isEqual:()NSURL;
- (uint64_t)isFileURL;
- (uint64_t)isKindOfClass:()NSURL;
- (uint64_t)isMemberOfClass:()NSURL;
- (uint64_t)password;
- (unint64_t)_isDeallocating;
- (void)_freeClients;
- (void)release;
@end

@implementation NSURL(NSURL)

- (char)_trueSelf
{
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_8;
  }

  Class = object_getClass(a1);
  if (qword_1ED43FC18 != -1)
  {
    dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
  }

  if (Class != qword_1ED43FC10)
  {
LABEL_8:
    if (_foundation_swift_nsurl_feature_enabled())
    {
      return *&a1[*MEMORY[0x1E695E028]];
    }

    v3 = object_getClass(a1);
    if (qword_1ED43FC08 != -1)
    {
      dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
    }

    if (v3 != qword_1ED43FC00)
    {
      return *&a1[*MEMORY[0x1E695E028]];
    }
  }

  return a1;
}

- (id)retain
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class != qword_1ED43FC00)
  {
    v5.receiver = v1;
    v5.super_class = NSURL_0;
    return objc_msgSendSuper2(&v5, sel_retain);
  }

  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (qword_1ED43FBF0 == v1)
  {
    return v1;
  }

  return MEMORY[0x1EEDB8360](v1, v2);
}

- (uint64_t)isFileURL
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 isFileURL];
  }

  else
  {
    return v3 && _CFURLIsFileURL() != 0;
  }
}

- (void)release
{
  v4 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 != a1)
    {

      JUMPOUT(0x1865CF530);
    }
  }

  else
  {
    v3.receiver = a1;
    v3.super_class = NSURL_0;
    objc_msgSendSuper2(&v3, sel_release);
  }
}

- (uint64_t)hash
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!v3)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 hash];
  }

  else
  {

    return MEMORY[0x1EEDB8350](v3, v4);
  }
}

- (__CFString)path
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 path];
  }

  else if (v3 && (v5 = CFURLCopyAbsoluteURL(v3)) != 0)
  {
    v6 = v5;
    v7 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
    CFRelease(v6);

    return v7;
  }

  else
  {
    return 0;
  }
}

- (const)baseURL
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!v3)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 baseURL];
  }

  else
  {
    v5 = CFURLGetBaseURL(v3);

    return v5;
  }
}

- (NSString)description
{
  if ([objc_msgSend(a1 "scheme")])
  {
    if ([a1 baseURL])
    {
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ -- %@", [a1 relativeString], objc_msgSend(a1, "baseURL"));
    }

    else
    {

      return [a1 relativeString];
    }
  }

  else
  {
    v3 = [objc_msgSend(a1 "relativeString")];
    if (v3 > 0x80)
    {
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ... %@", [objc_msgSend(a1 "relativeString")], objc_msgSend(objc_msgSend(a1, "relativeString"), "substringFromIndex:", v3 - 8));
    }

    else
    {
      v4 = [a1 relativeString];
    }

    v5 = v4;
    if ([a1 baseURL])
    {
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ -- %@", v5, [a1 baseURL]);
    }

    else
    {
      return v5;
    }
  }
}

- (__CFString)scheme
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!v3)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 scheme];
  }

  else
  {
    v5 = CFURLCopyScheme(v3);

    return v5;
  }
}

- (__CFString)relativeString
{
  v4 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v4 == qword_1ED43FBF0)
  {
    v7 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)];
    v8 = MEMORY[0x1E695DF30];
    v9 = MEMORY[0x1E695D920];
    goto LABEL_14;
  }

  if (!v4)
  {
    v7 = [NSString stringWithFormat:@"%@: URL was not initialized", _NSMethodExceptionProem(a1, a2)];
    v8 = MEMORY[0x1E695DF30];
    v9 = MEMORY[0x1E695D940];
LABEL_14:
    objc_exception_throw([v8 exceptionWithName:*v9 reason:v7 userInfo:0]);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v4 relativeString];
  }

  else
  {
    v6 = CFURLGetString(v4);

    return v6;
  }
}

- (uint64_t)fileSystemRepresentation
{
  v4 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v4 == qword_1ED43FBF0)
  {
    v16 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)];
    v17 = MEMORY[0x1E695DF30];
    v18 = MEMORY[0x1E695D920];
    goto LABEL_25;
  }

  if (!v4)
  {
    v15 = [NSString stringWithFormat:@"%@: %@ was not initialized", _NSMethodExceptionProem(a1, a2), a1];
    goto LABEL_22;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v7 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (!v7)
    {
      v19 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(a1, a2), 1024];
      goto LABEL_24;
    }

    v8 = [objc_msgSend(MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v7 length:{1024), "bytes"}];
    if (CFURLGetFileSystemRepresentation(v4, 1u, v8, 1024))
    {
      return v8;
    }

    v9 = CFURLCopyAbsoluteURL(v4);
    if (v9)
    {
      v10 = v9;
      v11 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
      v8 = v11;
      if (!v11)
      {
        CFRelease(v10);
        return v8;
      }

      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v11);
      CFRelease(v8);
      if (MaximumSizeOfFileSystemRepresentation == -1)
      {
        CFRelease(v10);
        return 0;
      }

      v13 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
      if (v13)
      {
        v8 = [objc_msgSend(MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v13 length:{MaximumSizeOfFileSystemRepresentation), "bytes"}];
        v14 = CFURLGetFileSystemRepresentation(v10, 1u, v8, MaximumSizeOfFileSystemRepresentation);
        CFRelease(v10);
        if (v14)
        {
          return v8;
        }

        v15 = [NSString stringWithFormat:@"%@: conversion failed for %@", _NSMethodExceptionProem(a1, a2), a1];
        goto LABEL_22;
      }

      v19 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(a1, a2), MaximumSizeOfFileSystemRepresentation];
LABEL_24:
      v16 = v19;
      v17 = MEMORY[0x1E695DF30];
      v18 = MEMORY[0x1E695DA18];
LABEL_25:
      objc_exception_throw([v17 exceptionWithName:*v18 reason:v16 userInfo:0]);
    }

    v15 = [NSString stringWithFormat:@"%@: unable to copy absolute URL for %@", _NSMethodExceptionProem(a1, a2), a1];
LABEL_22:
    v16 = v15;
    v17 = MEMORY[0x1E695DF30];
    v18 = MEMORY[0x1E695D940];
    goto LABEL_25;
  }

  v5 = [(objc_class *)v4 path];

  return [v5 fileSystemRepresentation];
}

- (uint64_t)absoluteString
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (!v3)
  {
    return 0;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v5 = CFURLCopyAbsoluteURL(v3);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLGetString(v5);
      CFRelease(v6);
      return v7;
    }

    return 0;
  }

  return [(objc_class *)v3 absoluteString];
}

- (uint64_t)_securePath
{
  v1 = a1;
  if ([a1 isFileReferenceURL] && (objc_msgSend(v1, "_resolveFlags") & 1) == 0)
  {
    v1 = [v1 _URLByInsertingResolveFlags:1];
  }

  return [v1 path];
}

- (id)standardizedURL
{
  v3 = a1;
  v4 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v4 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!v4)
  {
    return 0;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    if (_CFURLCopyComponents())
    {
      return _CFURLCreateFromComponents();
    }

    return v3;
  }

  return [(objc_class *)v4 standardizedURL];
}

- (CFURLRef)absoluteURL
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!v3)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 absoluteURL];
  }

  else
  {
    v5 = CFURLCopyAbsoluteURL(v3);

    return v5;
  }
}

- (__CFString)query
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 query];
  }

  else if (v3)
  {
    String = CFURLCopyQueryString(v3, 0);

    return String;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)hasDirectoryPath
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 hasDirectoryPath];
  }

  else
  {
    return v3 && CFURLHasDirectoryPath(v3) != 0;
  }
}

- (__CFString)host
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 host];
  }

  else if (v3)
  {
    v5 = CFURLCopyHostName(v3);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (__CFString)relativePath
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 relativePath];
  }

  else if (v3)
  {
    v5 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (__CFString)fragment
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 fragment];
  }

  else if (v3)
  {
    v5 = CFURLCopyFragment(v3, 0);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)port
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 port];
  }

  else
  {
    if (!v3)
    {
      return 0;
    }

    v5 = CFURLGetPortNumber(v3);
    if (v5 == -1)
    {
      return 0;
    }

    else
    {

      return [NSNumber numberWithInteger:v5];
    }
  }
}

- (NSString)resourceSpecifier
{
  if ([a1 _isAbsolute])
  {
    v4 = [a1 _trueSelf];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (v4 == qword_1ED43FBF0)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)), 0}];
      objc_exception_throw(v9);
    }

    if (!v4)
    {
      return 0;
    }

    if (_foundation_swift_nsurl_feature_enabled())
    {

      return [(objc_class *)v4 resourceSpecifier];
    }

    if (!CFURLCanBeDecomposed(v4))
    {
      v6 = CFURLCopyResourceSpecifier(v4);
      goto LABEL_19;
    }

    if (CFURLGetBaseURL(v4))
    {
      v6 = CFURLGetString(v4);
LABEL_19:

      return v6;
    }

    v7 = CFURLCopyNetLocation(v4);
    v8 = CFURLCopyPath(v4);
    result = CFURLCopyResourceSpecifier(v4);
    if (v7)
    {
      if (v8)
      {
        if (result)
        {
          return [NSString stringWithFormat:@"//%@%@%@", v7, v8, result];
        }

        v11 = v8;
      }

      else
      {
        if (result)
        {
          return [NSString stringWithFormat:@"//%@", v7, v10, v12];
        }

        v11 = 0;
      }

      return [NSString stringWithFormat:@"//%@%@", v7, v11, v12];
    }

    else if (v8)
    {
      if (result)
      {
        return [NSString stringWithFormat:@"%@%@", v8, result, v12];
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {

    return [a1 relativeString];
  }

  return result;
}

- (unint64_t)_isDeallocating
{
  v5 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    return qword_1ED43FBF0 == a1 || _CFIsDeallocating() != 0;
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel__isDeallocating);
  }
}

- (id)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [a1 _freeClients];
  if ((_foundation_swift_nsurl_feature_enabled() & 1) == 0)
  {
    Class = object_getClass(a1);
    if (qword_1ED43FC08 != -1)
    {
      dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
    }

    if (Class != qword_1ED43FC00)
    {
      goto LABEL_9;
    }
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v3 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v3 != qword_1ED43FC10)
    {
LABEL_9:
    }
  }

  v5.receiver = a1;
  v5.super_class = NSURL_0;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

- (void)_freeClients
{
  if ((_foundation_swift_nsurl_feature_enabled() & 1) == 0)
  {
    v4 = [a1 _cfurl];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (v4 == qword_1ED43FBF0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)), 0}];
      objc_exception_throw(v6);
    }

    if (v4)
    {
      v5 = __CFURLReservedPtr();
      if (v5)
      {

        __CFURLSetReservedPtr();
      }
    }
  }
}

- (id)_tryRetain
{
  v5 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 == a1)
    {
      return 0;
    }

    else
    {
      return (_CFTryRetain() != 0);
    }
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel__tryRetain);
  }
}

- (__CFString)user
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 user];
  }

  else if (v3)
  {
    v5 = CFURLCopyUserName(v3);

    return v5;
  }

  else
  {
    return 0;
  }
}

+ (id)allocWithZone:()NSURL
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (qword_1ED43FC00 == a1)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    return qword_1ED43FBF0;
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NSURL_0;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (CFIndex)retainCount
{
  v5 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 == a1)
    {
      return -1;
    }

    else
    {

      return CFGetRetainCount(a1);
    }
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel_retainCount);
  }
}

- (uint64_t)isKindOfClass:()NSURL
{
  v9 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00 && qword_1ED43FC00 == a3)
  {
    return 1;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v6 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v6 == qword_1ED43FC10 && qword_1ED43FC10 == a3)
    {
      return 1;
    }
  }

  v8.receiver = a1;
  v8.super_class = NSURL_0;
  return objc_msgSendSuper2(&v8, sel_isKindOfClass_, a3);
}

- (uint64_t)isMemberOfClass:()NSURL
{
  v9 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00 && qword_1ED43FC00 == a3)
  {
    return 1;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v6 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v6 == qword_1ED43FC10)
    {
      if (qword_1ED43FC10 == a3)
      {
        return 1;
      }

      if (qword_1ED43FC08 != -1)
      {
        dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
      }

      if (qword_1ED43FC00 == a3)
      {
        return 1;
      }
    }
  }

  v8.receiver = a1;
  v8.super_class = NSURL_0;
  return objc_msgSendSuper2(&v8, sel_isMemberOfClass_, a3);
}

- (CFURLRef)initWithString:()NSURL relativeToURL:encodingInvalidCharacters:
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v17 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)];

    v18 = MEMORY[0x1E695DF30];
    v19 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class != qword_1ED43FC00)
  {
    if (!_foundation_swift_nsurl_feature_enabled())
    {
      goto LABEL_9;
    }

    v11 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v11 != qword_1ED43FC10)
    {
LABEL_9:
      v20.receiver = a1;
      v20.super_class = NSURL_0;
      v12 = [(objc_class *)&v20 init];
      if (!v12)
      {
        return v12;
      }

      if (_foundation_swift_nsurl_feature_enabled())
      {
        v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3 relativeToURL:a4 encodingInvalidCharacters:a5];
        if (v13)
        {
LABEL_12:
          *&v12[*MEMORY[0x1E695E028]] = v13;
          return v12;
        }
      }

      else
      {
        v13 = CFURLCreateWithString(0, a3, a4);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }
  }

  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (qword_1ED43FBF0 != a1)
  {
    v17 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

    v18 = MEMORY[0x1E695DF30];
    v19 = MEMORY[0x1E695D920];
LABEL_27:
    objc_exception_throw([v18 exceptionWithName:*v19 reason:v17 userInfo:0]);
  }

  if (dyld_program_sdk_at_least() && _os_feature_enabled_impl())
  {
    v14 = objc_autoreleasePoolPush();
    v15 = CFURLCreateWithString(0, [NSURLComponents _parseString:a3 encodingInvalidCharacters:a5 allowEmptyScheme:1], a4);
    objc_autoreleasePoolPop(v14);
    return v15;
  }

  else
  {

    return CFURLCreateWithString(0, a3, a4);
  }
}

- (uint64_t)_clientsCreatingIfNecessary:()NSURL
{
  if (_foundation_swift_nsurl_feature_enabled())
  {
    return 0;
  }

  v6 = [a1 _cfurl];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v6 == qword_1ED43FBF0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v6, a2)), 0}];
    objc_exception_throw(v9);
  }

  if (!v6)
  {
    return 0;
  }

  Mutable = __CFURLReservedPtr();
  if (!Mutable && a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __CFURLSetReservedPtr();
  }

  return Mutable;
}

- (uint64_t)_encoding
{
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  return [(objc_class *)v3 _encoding];
}

- (uint64_t)init
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v2 = [a1 initWithString:&stru_1EEEFDF90];
    v3 = @"this results in an NSURL instance with an empty URL string.";
  }

  else
  {

    v2 = 0;
    v3 = @"the NSURL object has been released and nil returned.";
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__NSURL_NSURL__init__block_invoke;
  v5[3] = &unk_1E69F2C00;
  v5[4] = v3;
  if (init_onceToken != -1)
  {
    dispatch_once(&init_onceToken, v5);
  }

  return v2;
}

+ (id)URLWithString:()NSURL relativeToURL:
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(a1) initWithString:a3 relativeToURL:a4];

  return v4;
}

+ (id)URLWithString:()NSURL encodingInvalidCharacters:
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(a1) initWithString:a3 relativeToURL:0 encodingInvalidCharacters:a4];

  return v4;
}

- (uint64_t)initWithScheme:()NSURL host:path:
{
  if (([a5 isAbsolutePath] & 1) == 0)
  {
    v21 = [NSString stringWithFormat:@"%@: path %@ is not absolute.", _NSMethodExceptionProem(a1, a2), a5];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0]);
  }

  if (a4)
  {
    v10 = [a4 stringByAddingPercentEscapes];
  }

  else
  {
    v10 = &stru_1EEEFDF90;
  }

  v11 = [a5 standardizedURLPath];
  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = v11;
  v13 = [a3 length];
  if (v13 >= 1)
  {
    v14 = v13;
    v15 = MEMORY[0x1E69E9830];
    do
    {
      v16 = v14 - 1;
      v17 = [a3 characterAtIndex:v14 - 1];
      v18 = v17;
      if (v17 > 0x7Fu)
      {
        if (__maskrune(v17, 0x100uLL))
        {
          goto LABEL_16;
        }
      }

      else if ((*(v15 + 4 * v17 + 60) & 0x100) != 0)
      {
        goto LABEL_16;
      }

      if (v14 < 2 || v18 - 48 >= 0xA && (v18 > 0x2E || ((1 << v18) & 0x680000000000) == 0))
      {
        goto LABEL_22;
      }

LABEL_16:
      --v14;
    }

    while (v16 + 1 > 1);
  }

  if (v10 && v12)
  {
    v19 = [NSString stringWithFormat:@"%@://%@%@", a3, v10, v12];

    return [(objc_class *)a1 initWithString:v19];
  }

  else
  {
LABEL_22:

    return 0;
  }
}

- (CFURLRef)initWithDataRepresentation:()NSURL relativeToURL:
{
  v7 = a1;
  v17 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_11;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_8;
  }

  v9 = object_getClass(v7);
  if (qword_1ED43FC18 != -1)
  {
    dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
  }

  if (v9 == qword_1ED43FC10)
  {
LABEL_11:
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 != v7)
    {
      v15 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(v7, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v15 userInfo:0]);
    }

    v11 = *MEMORY[0x1E695E480];
    v12 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], [a3 bytes], objc_msgSend(a3, "length"), 0x8000100u, a4);
    if (!v12)
    {
      v12 = CFURLCreateWithBytes(v11, [a3 bytes], objc_msgSend(a3, "length"), 0x201u, a4);
    }

    if (v12)
    {
      return v12;
    }
  }

  else
  {
LABEL_8:
    v16.receiver = v7;
    v16.super_class = NSURL_0;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    if (v7)
    {
      if (_foundation_swift_nsurl_feature_enabled())
      {
        v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithDataRepresentation:a3 relativeToURL:a4];
      }

      else
      {
        v13 = *MEMORY[0x1E695E480];
        v10 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], [a3 bytes], objc_msgSend(a3, "length"), 0x8000100u, a4);
        if (!v10)
        {
          v10 = CFURLCreateWithBytes(v13, [a3 bytes], objc_msgSend(a3, "length"), 0x201u, a4);
        }
      }

      *&v7[*MEMORY[0x1E695E030]] = 0;
      *&v7[*MEMORY[0x1E695E018]] = 0;
      *&v7[*MEMORY[0x1E695E020]] = 0;
      if (v10)
      {
        *&v7[*MEMORY[0x1E695E028]] = v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return v7;
}

+ (id)URLWithDataRepresentation:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(a1) initWithDataRepresentation:a3 relativeToURL:a4];

  return v4;
}

- (CFURLRef)initAbsoluteURLWithDataRepresentation:()NSURL relativeToURL:
{
  v7 = a1;
  v17 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_11;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_8;
  }

  v9 = object_getClass(v7);
  if (qword_1ED43FC18 != -1)
  {
    dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
  }

  if (v9 == qword_1ED43FC10)
  {
LABEL_11:
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 != v7)
    {
      v15 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(v7, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v15 userInfo:0]);
    }

    v11 = *MEMORY[0x1E695E480];
    v12 = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], [a3 bytes], objc_msgSend(a3, "length"), 0x8000100u, a4, 1u);
    if (!v12)
    {
      v12 = CFURLCreateAbsoluteURLWithBytes(v11, [a3 bytes], objc_msgSend(a3, "length"), 0x201u, a4, 1u);
    }

    if (v12)
    {
      return v12;
    }
  }

  else
  {
LABEL_8:
    v16.receiver = v7;
    v16.super_class = NSURL_0;
    v7 = objc_msgSendSuper2(&v16, sel_init);
    if (v7)
    {
      if (_foundation_swift_nsurl_feature_enabled())
      {
        v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initAbsoluteURLWithDataRepresentation:a3 relativeToURL:a4];
      }

      else
      {
        v13 = *MEMORY[0x1E695E480];
        v10 = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], [a3 bytes], objc_msgSend(a3, "length"), 0x8000100u, a4, 1u);
        if (!v10)
        {
          v10 = CFURLCreateAbsoluteURLWithBytes(v13, [a3 bytes], objc_msgSend(a3, "length"), 0x201u, a4, 1u);
        }
      }

      *&v7[*MEMORY[0x1E695E030]] = 0;
      *&v7[*MEMORY[0x1E695E018]] = 0;
      *&v7[*MEMORY[0x1E695E020]] = 0;
      if (v10)
      {
        *&v7[*MEMORY[0x1E695E028]] = v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return v7;
}

+ (id)absoluteURLWithDataRepresentation:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(a1) initAbsoluteURLWithDataRepresentation:a3 relativeToURL:a4];

  return v4;
}

- (uint64_t)dataRepresentation
{
  v4 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v4 == qword_1ED43FBF0)
  {
    v11 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v4, a2)];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D920];
    goto LABEL_21;
  }

  if (!v4)
  {
    v14 = [NSString stringWithFormat:@"%@: URL was not initialized", _NSMethodExceptionProem(a1, a2), v15];
LABEL_20:
    v11 = v14;
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D940];
LABEL_21:
    objc_exception_throw([v12 exceptionWithName:*v13 reason:v11 userInfo:0]);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v4 dataRepresentation];
  }

  v6 = CFURLGetBytes(v4, 0, 0);
  if (v6 == -1)
  {
    v14 = [NSString stringWithFormat:@"%@: unable to calculate bytes needed from %@", _NSMethodExceptionProem(a1, a2), a1];
    goto LABEL_20;
  }

  v7 = v6;
  v8 = malloc_type_malloc(v6, 0x361B7AA0uLL);
  if (!v8)
  {
    v11 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(a1, a2), v7];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695DA18];
    goto LABEL_21;
  }

  v9 = v8;
  if (CFURLGetBytes(v4, v8, v7) != v7)
  {
    free(v9);
    v14 = [NSString stringWithFormat:@"%@: unable to get bytes from %@", _NSMethodExceptionProem(a1, a2), a1];
    goto LABEL_20;
  }

  v10 = MEMORY[0x1E695DEF0];

  return [v10 dataWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
}

- (CFURLRef)initFileURLWithPath:()NSURL
{
  v4 = a1;
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v10 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)];

    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
    goto LABEL_29;
  }

  v5 = a3;
  if (![(__CFString *)a3 length])
  {
    goto LABEL_25;
  }

  if (([(__CFString *)v5 isAbsolutePath]& 1) == 0)
  {
    v5 = [(__CFString *)v5 stringByStandardizingPath];
  }

  isDirectory = 0;
  if ([(__CFString *)v5 characterAtIndex:[(__CFString *)v5 length]- 1]== 47)
  {
    isDirectory = 1;
  }

  else if ((_NSFileExists(v5, &isDirectory) & 1) == 0)
  {
    isDirectory = 0;
  }

  Class = object_getClass(v4);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_20;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v7 = object_getClass(v4);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v7 == qword_1ED43FC10)
    {
LABEL_20:
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (qword_1ED43FBF0 == v4)
      {

        return CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, isDirectory);
      }

      v10 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(v4, a2)];

      v11 = MEMORY[0x1E695DF30];
      v12 = MEMORY[0x1E695D920];
LABEL_29:
      objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
    }
  }

  v13.receiver = v4;
  v13.super_class = NSURL_0;
  v4 = [(objc_class *)&v13 init];
  if (v4)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v5];
      if (v8)
      {
LABEL_19:
        *&v4[*MEMORY[0x1E695E028]] = v8;
        return v4;
      }
    }

    else
    {
      v8 = CFURLCreateWithFileSystemPath(0, v5, kCFURLPOSIXPathStyle, isDirectory);
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_25:

    return 0;
  }

  return v4;
}

- (CFURLRef)initFileURLWithPath:()NSURL isDirectory:
{
  v5 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)];

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  v7 = a3;
  if (![(__CFString *)a3 length])
  {
    goto LABEL_23;
  }

  if (([(__CFString *)v7 isAbsolutePath]& 1) == 0)
  {
    v7 = [(__CFString *)v7 stringByStandardizingPath];
  }

  Class = object_getClass(v5);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class != qword_1ED43FC00)
  {
    if (!_foundation_swift_nsurl_feature_enabled())
    {
      goto LABEL_12;
    }

    v9 = object_getClass(v5);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v9 != qword_1ED43FC10)
    {
LABEL_12:
      v15.receiver = v5;
      v15.super_class = NSURL_0;
      v5 = [(objc_class *)&v15 init];
      if (!v5)
      {
        return v5;
      }

      if (_foundation_swift_nsurl_feature_enabled())
      {
        v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7 isDirectory:a4];
        if (v10)
        {
LABEL_15:
          *&v5[*MEMORY[0x1E695E028]] = v10;
          return v5;
        }
      }

      else
      {
        v10 = CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, a4);
        if (v10)
        {
          goto LABEL_15;
        }
      }

LABEL_23:

      return 0;
    }
  }

  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (qword_1ED43FBF0 != v5)
  {
    v12 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(v5, a2)];

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D920];
LABEL_27:
    objc_exception_throw([v13 exceptionWithName:*v14 reason:v12 userInfo:0]);
  }

  return CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, a4);
}

- (char)initFileURLWithPath:()NSURL isDirectory:relativeToURL:
{
  v6 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)];

    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  v9 = a3;
  if (![a3 length])
  {
    goto LABEL_23;
  }

  if (([v9 isAbsolutePath] & 1) == 0)
  {
    v9 = [v9 stringByStandardizingPath];
  }

  Class = object_getClass(v6);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_16;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v11 = object_getClass(v6);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v11 == qword_1ED43FC10)
    {
LABEL_16:
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (qword_1ED43FBF0 == v6)
      {

        JUMPOUT(0x1865CEC70);
      }

      v14 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(v6, a2)];

      v15 = MEMORY[0x1E695DF30];
      v16 = MEMORY[0x1E695D920];
LABEL_27:
      objc_exception_throw([v15 exceptionWithName:*v16 reason:v14 userInfo:0]);
    }
  }

  v17.receiver = v6;
  v17.super_class = NSURL_0;
  v6 = [(objc_class *)&v17 init];
  if (v6)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:a4 relativeToURL:a5];
      if (v12)
      {
LABEL_15:
        *&v6[*MEMORY[0x1E695E028]] = v12;
        return v6;
      }
    }

    else
    {
      v12 = MEMORY[0x1865CEC70](0, v9, 0, a4, a5);
      if (v12)
      {
        goto LABEL_15;
      }
    }

LABEL_23:

    return 0;
  }

  return v6;
}

- (char)initFileURLWithPath:()NSURL relativeToURL:
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (!a3)
  {
    v18 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
  }

  v7 = a3;
  if (![a3 length])
  {
    goto LABEL_19;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    Class = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (Class == qword_1ED43FC10)
    {
      v19 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0]);
    }
  }

  if (([v7 isAbsolutePath] & 1) == 0)
  {
    v7 = [v7 stringByStandardizingPath];
  }

  v9 = [v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}];
  v10 = *MEMORY[0x1E695E480];
  if (v9 == 47)
  {
    v11 = MEMORY[0x1865CEC70](v10, v7, 0, 1, a4);
    v23[3] = v11;
    if (!v11)
    {
LABEL_19:

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v12 = MEMORY[0x1865CEC70](v10, v7, 0, 0, a4);
    v23[3] = v12;
    if (!v12)
    {
      goto LABEL_19;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__NSURL_NSURL__initFileURLWithPath_relativeToURL___block_invoke;
    v21[3] = &unk_1E69F64B0;
    v21[5] = a4;
    v21[6] = &v22;
    v21[4] = v7;
    [NSURL setIOPolicy:v21 type:? scope:? forBlock:?];
    if (!v23[3])
    {
      goto LABEL_19;
    }
  }

  v13 = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (v13 == qword_1ED43FC00)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    v14 = v23[3];
    if (qword_1ED43FBF0 != a1)
    {
      CFRelease(v23[3]);
      v17 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v17 userInfo:0]);
    }
  }

  else
  {
    v20.receiver = a1;
    v20.super_class = NSURL_0;
    v14 = [(objc_class *)&v20 init];
    v15 = v23[3];
    if (!v14)
    {
      CFRelease(v15);
      goto LABEL_20;
    }

    *&v14[*MEMORY[0x1E695E028]] = v15;
  }

LABEL_21:
  _Block_object_dispose(&v22, 8);
  return v14;
}

+ (id)fileURLWithPath:()NSURL
{
  v3 = [objc_allocWithZone(a1) initFileURLWithPath:a3];

  return v3;
}

+ (id)fileURLWithPath:()NSURL isDirectory:
{
  v4 = [objc_allocWithZone(a1) initFileURLWithPath:a3 isDirectory:a4];

  return v4;
}

+ (id)fileURLWithPath:()NSURL isDirectory:relativeToURL:
{
  v5 = [objc_allocWithZone(a1) initFileURLWithPath:a3 isDirectory:a4 relativeToURL:a5];

  return v5;
}

+ (id)fileURLWithPath:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(a1) initFileURLWithPath:a3 relativeToURL:a4];

  return v4;
}

- (char)initFileURLWithFileSystemRepresentation:()NSURL isDirectory:relativeToURL:
{
  v18 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_11;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v11 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v11 == qword_1ED43FC10)
    {
LABEL_11:
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (qword_1ED43FBF0 == a1)
      {
        strlen(a3);

        JUMPOUT(0x1865CEC10);
      }

      v16 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v16 userInfo:0]);
    }
  }

  v17.receiver = a1;
  v17.super_class = NSURL_0;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  if (v12)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:a3 isDirectory:a4 relativeToURL:a5];
    }

    else
    {
      v14 = strlen(a3);
      v13 = MEMORY[0x1865CEC10](*MEMORY[0x1E695E480], a3, v14, a4, a5);
    }

    *&v12[*MEMORY[0x1E695E030]] = 0;
    *&v12[*MEMORY[0x1E695E018]] = 0;
    *&v12[*MEMORY[0x1E695E020]] = 0;
    if (v13)
    {
      *&v12[*MEMORY[0x1E695E028]] = v13;
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

+ (id)fileURLWithFileSystemRepresentation:()NSURL isDirectory:relativeToURL:
{
  v5 = [objc_allocWithZone(a1) initFileURLWithFileSystemRepresentation:a3 isDirectory:a4 relativeToURL:a5];

  return v5;
}

- (uint64_t)getFileSystemRepresentation:()NSURL maxLength:
{
  v7 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v7 == qword_1ED43FBF0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v7, a2)), 0}];
    objc_exception_throw(v10);
  }

  if (v7)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v8 = [(objc_class *)v7 path];

      return [v8 getFileSystemRepresentation:a3 maxLength:a4];
    }

    else
    {
      return CFURLGetFileSystemRepresentation(v7, 1u, a3, a4) != 0;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

- (char)initByResolvingBookmarkData:()NSURL options:relativeToURL:bookmarkDataIsStale:error:
{
  v26 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_14;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    v15 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v15 == qword_1ED43FC10)
    {
LABEL_14:
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (qword_1ED43FBF0 != a1)
      {
        v24 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

        v22 = MEMORY[0x1E695DF30];
        v23 = *MEMORY[0x1E695D920];
        v21 = v24;
LABEL_32:
        objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
      }

      v17 = [a5 _cfurl];
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (v17 != qword_1ED43FBF0)
      {
        v16 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], a3, a4, v17, 0, a6, a7);
        if (v16)
        {
          return v16;
        }

        if (a7 && *a7)
        {
          v16 = 0;
          *a7 = *a7;
          return v16;
        }

        return 0;
      }

LABEL_30:
      v21 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v17, a2)];
      v22 = MEMORY[0x1E695DF30];
      v23 = *MEMORY[0x1E695D920];
      goto LABEL_32;
    }
  }

  v25.receiver = a1;
  v25.super_class = NSURL_0;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  if (v16)
  {
    v17 = [a5 _cfurl];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (v17 != qword_1ED43FBF0)
    {
      v18 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], a3, a4, v17, 0, a6, a7);
      *&v16[*MEMORY[0x1E695E030]] = 0;
      *&v16[*MEMORY[0x1E695E018]] = 0;
      *&v16[*MEMORY[0x1E695E020]] = 0;
      v19 = *MEMORY[0x1E695E028];
      if (v18)
      {
        *&v16[v19] = v18;
        return v16;
      }

      *&v16[v19] = 0;
      if (a7 && *a7)
      {
        *a7 = *a7;
      }

      return 0;
    }

    goto LABEL_30;
  }

  return v16;
}

+ (id)URLByResolvingBookmarkData:()NSURL options:relativeToURL:bookmarkDataIsStale:error:
{
  v7 = [objc_allocWithZone(a1) initByResolvingBookmarkData:a3 options:a4 relativeToURL:a5 bookmarkDataIsStale:a6 error:a7];

  return v7;
}

- (char)initByResolvingAliasFileAtURL:()NSURL options:error:
{
  v18 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class == qword_1ED43FC00)
  {
    goto LABEL_11;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    goto LABEL_8;
  }

  v11 = object_getClass(a1);
  if (qword_1ED43FC18 != -1)
  {
    dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
  }

  if (v11 == qword_1ED43FC10)
  {
LABEL_11:
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (qword_1ED43FBF0 != a1)
    {
      v16 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v16 userInfo:0]);
    }

    v12 = MEMORY[0x1865CFA00](*MEMORY[0x1E695E480], a3, a4, 0, a5);
    if (!v12)
    {
      if (a5 && *a5)
      {
        v12 = 0;
        *a5 = *a5;
        return v12;
      }

      return 0;
    }
  }

  else
  {
LABEL_8:
    v17.receiver = a1;
    v17.super_class = NSURL_0;
    v12 = objc_msgSendSuper2(&v17, sel_init);
    if (v12)
    {
      v13 = MEMORY[0x1865CFA00](*MEMORY[0x1E695E480], a3, a4, 0, a5);
      *&v12[*MEMORY[0x1E695E030]] = 0;
      *&v12[*MEMORY[0x1E695E018]] = 0;
      *&v12[*MEMORY[0x1E695E020]] = 0;
      v14 = *MEMORY[0x1E695E028];
      if (v13)
      {
        *&v12[v14] = v13;
        return v12;
      }

      *&v12[v14] = 0;
      if (a5 && *a5)
      {
        *a5 = *a5;
      }

      return 0;
    }
  }

  return v12;
}

+ (id)URLByResolvingAliasFileAtURL:()NSURL options:error:
{
  v5 = [objc_allocWithZone(a1) initByResolvingAliasFileAtURL:a3 options:a4 error:a5];

  return v5;
}

- (uint64_t)isEqual:()NSURL
{
  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v6 == qword_1ED43FBF0)
  {
    v9 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v6, a2)];
    goto LABEL_16;
  }

  v7 = [a3 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v7 == qword_1ED43FBF0)
  {
    v9 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(v7, a2)];
LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0]);
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    return _CFNonObjCEqual() != 0;
  }

  return [(objc_class *)v6 isEqual:v7];
}

- (uint64_t)encodeWithCoder:()NSURL
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a3 allowsKeyedCoding];
  v6 = [a1 isFileReferenceURL];
  if (v5)
  {
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [a3 encodeObject:objc_msgSend(a1 forKey:{"baseURL"), @"NS.base"}];
      v7 = [a1 relativeString];
      v8 = @"NS.relative";
      v9 = a3;
LABEL_5:

      return [v9 encodeObject:v7 forKey:v8];
    }

    v12 = [a1 filePathURL];
    v13 = [a1 bookmarkDataWithOptions:512 includingResourceValuesForKeys:0 relativeToURL:0 error:0];
    if (!v12)
    {
      result = [MEMORY[0x1E695DFF8] URLWithString:@"com-apple-unresolvable-file-reference-url:"];
      if (!result)
      {
LABEL_19:
        if (!v13)
        {
          return result;
        }

        v8 = @"NS.minimalBookmarkData";
        v9 = a3;
        v7 = v13;
        goto LABEL_5;
      }

      v12 = result;
    }

    [a3 encodeObject:objc_msgSend(v12 forKey:{"baseURL"), @"NS.base"}];
    result = [a3 encodeObject:objc_msgSend(v12 forKey:{"relativeString"), @"NS.relative"}];
    goto LABEL_19;
  }

  if (v6)
  {
    a1 = [a1 filePathURL];
    if (!a1)
    {
      a1 = [MEMORY[0x1E695DFF8] URLWithString:@"com-apple-unresolvable-file-reference-url:"];
    }
  }

  v11 = [a1 baseURL];
  v14 = v11 != 0;
  [a3 encodeValueOfObjCType:"c" at:&v14];
  if (v11)
  {
    [a3 encodeObject:v11];
  }

  return [a3 encodeObject:{objc_msgSend(a1, "relativeString")}];
}

- (CFURLRef)initWithCoder:()NSURL
{
  v28 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    buf[0] = 0;
    [a3 decodeValueOfObjCType:"c" at:buf size:1];
    if (buf[0] == 1)
    {
      v7 = [a3 decodeObject];
      if (!v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      objc_opt_self();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v8 = 0;
    }

    v20 = [a3 decodeObject];
    if (v20)
    {
      v21 = v20;
      if (_NSIsNSString())
      {
        result = [a1 initWithString:v21 relativeToURL:v8];
        if (!result)
        {
          result = CFURLCreateWithString(0, v21, v8);
          if (result)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_33;
      }
    }

LABEL_30:

    LODWORD(a1) = 0;
    goto LABEL_37;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 containsValueForKey:@"NS.minimalBookmarkData"] && objc_msgSend(a3, "_strictSecureDecodingEnabled"))
  {
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = _NSMethodExceptionProem(a1, sel_initWithCoder_);
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "%@: Skipped decoding bookmark data due to NSKeyedUnarchiver mode.", buf, 0xCu);
    }

LABEL_18:
    v17 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.relative"];
    if (v17)
    {
      v18 = v17;
      if (_NSIsNSString())
      {
        v19 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.base"];
        result = [a1 initWithString:v18 relativeToURL:v19];
        if (result)
        {
          return result;
        }

        v15 = v18;
        v16 = v19;
LABEL_22:
        result = CFURLCreateWithString(0, v15, v16);
        if (result)
        {
LABEL_23:
          CFRelease(result);
          LODWORD(a1) = 1;
          goto LABEL_37;
        }

LABEL_36:
        LODWORD(a1) = 0;
        goto LABEL_37;
      }
    }

    goto LABEL_35;
  }

  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.minimalBookmarkData"];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  if (!_NSIsNSData())
  {
    goto LABEL_18;
  }

  if (a1)
  {
    v11 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v10 options:768 relativeToURL:0 bookmarkDataIsStale:0 error:0];
    if (v11)
    {
      v12 = [objc_msgSend(v11 "filePathURL")];
      if (v12)
      {
        v13 = v12;
        result = [a1 initWithString:v12];
        if (result)
        {
          return result;
        }

        v15 = v13;
        v16 = 0;
        goto LABEL_22;
      }

LABEL_35:

      goto LABEL_36;
    }

    v22 = *MEMORY[0x1E695DC40];
    v23 = *MEMORY[0x1E695DB78];
    v24 = [MEMORY[0x1E695DFF8] resourceValuesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] fromBookmarkData:{"arrayWithObjects:", *MEMORY[0x1E695DC40], *MEMORY[0x1E695DB78], 0), v10}];
    v25 = [v24 objectForKey:v22];
    if (!v25)
    {
      goto LABEL_35;
    }

    result = [a1 initFileURLWithPath:v25 isDirectory:{objc_msgSend(objc_msgSend(v24, "objectForKey:", v23), "BOOLValue")}];
LABEL_33:
    LODWORD(a1) = 0;
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  if (dyld_program_sdk_at_least() && (a1 & _os_feature_enabled_impl()) == 1)
  {
    return [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:&stru_1EEEFDF90];
  }

  [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"%@: invalid archived object", _NSMethodExceptionProem(objc_alloc(MEMORY[0x1E695DFF8]), a2))}];
  return 0;
}

- (uint64_t)password
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v10);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)v3 password];
  }

  else
  {
    if (!v3)
    {
      return 0;
    }

    v5 = CFURLCopyNetLocation(v3);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    location = CFStringFind(v5, @"@", 4uLL).location;
    if (location == -1 || (v8 = location, result.location = 0, result.length = 0, v14.location = 0, v14.length = location, !CFStringFindWithOptions(v6, @":", v14, 0, &result)))
    {
      v9 = 0;
    }

    else
    {
      v15.location = result.location + 1;
      v15.length = v8 + ~result.location;
      v9 = CFStringCreateWithSubstring(0, v6, v15);
    }

    CFRelease(v6);
    return v9;
  }
}

- (CFStringRef)parameterString
{
  block[5] = *MEMORY[0x1E69E9840];
  v3 = [a1 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (v3 == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(v3, a2)), 0}];
    objc_exception_throw(v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__NSURL_NSURL__parameterString__block_invoke;
  block[3] = &unk_1E69F2C00;
  block[4] = v3;
  if (_MergedGlobals_123 != -1)
  {
    dispatch_once(&_MergedGlobals_123, block);
  }

  v4 = _foundation_swift_nsurl_feature_enabled();
  result = 0;
  if ((v4 & 1) == 0)
  {
    if (v3)
    {
      return CFURLCopyParameterString(v3, 0);
    }
  }

  return result;
}

@end