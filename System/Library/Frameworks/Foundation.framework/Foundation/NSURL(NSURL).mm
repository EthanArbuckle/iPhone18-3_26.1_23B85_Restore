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

  Class = object_getClass(self);
  if (qword_1ED43FC18 != -1)
  {
    dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
  }

  if (Class != qword_1ED43FC10)
  {
LABEL_8:
    if (_foundation_swift_nsurl_feature_enabled())
    {
      return *&self[*MEMORY[0x1E695E028]];
    }

    v3 = object_getClass(self);
    if (qword_1ED43FC08 != -1)
    {
      dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
    }

    if (v3 != qword_1ED43FC00)
    {
      return *&self[*MEMORY[0x1E695E028]];
    }
  }

  return self;
}

- (id)retain
{
  selfCopy = self;
  v6 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
  if (qword_1ED43FC08 != -1)
  {
    dispatch_once(&qword_1ED43FC08, &__block_literal_global_498);
  }

  if (Class != qword_1ED43FC00)
  {
    v5.receiver = selfCopy;
    v5.super_class = NSURL_0;
    return objc_msgSendSuper2(&v5, sel_retain);
  }

  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (qword_1ED43FBF0 == selfCopy)
  {
    return selfCopy;
  }

  return MEMORY[0x1EEDB8360](selfCopy, v2);
}

- (uint64_t)isFileURL
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf isFileURL];
  }

  else
  {
    return _trueSelf && _CFURLIsFileURL() != 0;
  }
}

- (void)release
{
  v4 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

    if (qword_1ED43FBF0 != self)
    {

      JUMPOUT(0x1865CF530);
    }
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSURL_0;
    objc_msgSendSuper2(&v3, sel_release);
  }
}

- (uint64_t)hash
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf hash];
  }

  else
  {

    return MEMORY[0x1EEDB8350](_trueSelf, v4);
  }
}

- (__CFString)path
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf path];
  }

  else if (_trueSelf && (v5 = CFURLCopyAbsoluteURL(_trueSelf)) != 0)
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
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf baseURL];
  }

  else
  {
    v5 = CFURLGetBaseURL(_trueSelf);

    return v5;
  }
}

- (NSString)description
{
  if ([objc_msgSend(self "scheme")])
  {
    if ([self baseURL])
    {
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ -- %@", [self relativeString], objc_msgSend(self, "baseURL"));
    }

    else
    {

      return [self relativeString];
    }
  }

  else
  {
    v3 = [objc_msgSend(self "relativeString")];
    if (v3 > 0x80)
    {
      relativeString = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ... %@", [objc_msgSend(self "relativeString")], objc_msgSend(objc_msgSend(self, "relativeString"), "substringFromIndex:", v3 - 8));
    }

    else
    {
      relativeString = [self relativeString];
    }

    v5 = relativeString;
    if ([self baseURL])
    {
      return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ -- %@", v5, [self baseURL]);
    }

    else
    {
      return v5;
    }
  }
}

- (__CFString)scheme
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf scheme];
  }

  else
  {
    v5 = CFURLCopyScheme(_trueSelf);

    return v5;
  }
}

- (__CFString)relativeString
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v7 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)];
    v8 = MEMORY[0x1E695DF30];
    v9 = MEMORY[0x1E695D920];
    goto LABEL_14;
  }

  if (!_trueSelf)
  {
    v7 = [NSString stringWithFormat:@"%@: URL was not initialized", _NSMethodExceptionProem(self, a2)];
    v8 = MEMORY[0x1E695DF30];
    v9 = MEMORY[0x1E695D940];
LABEL_14:
    objc_exception_throw([v8 exceptionWithName:*v9 reason:v7 userInfo:0]);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf relativeString];
  }

  else
  {
    v6 = CFURLGetString(_trueSelf);

    return v6;
  }
}

- (uint64_t)fileSystemRepresentation
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v16 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)];
    v17 = MEMORY[0x1E695DF30];
    v18 = MEMORY[0x1E695D920];
    goto LABEL_25;
  }

  if (!_trueSelf)
  {
    v15 = [NSString stringWithFormat:@"%@: %@ was not initialized", _NSMethodExceptionProem(self, a2), self];
    goto LABEL_22;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v7 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (!v7)
    {
      1024 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(self, a2), 1024];
      goto LABEL_24;
    }

    v8 = [objc_msgSend(MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v7 length:{1024), "bytes"}];
    if (CFURLGetFileSystemRepresentation(_trueSelf, 1u, v8, 1024))
    {
      return v8;
    }

    v9 = CFURLCopyAbsoluteURL(_trueSelf);
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

        v15 = [NSString stringWithFormat:@"%@: conversion failed for %@", _NSMethodExceptionProem(self, a2), self];
        goto LABEL_22;
      }

      1024 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(self, a2), MaximumSizeOfFileSystemRepresentation];
LABEL_24:
      v16 = 1024;
      v17 = MEMORY[0x1E695DF30];
      v18 = MEMORY[0x1E695DA18];
LABEL_25:
      objc_exception_throw([v17 exceptionWithName:*v18 reason:v16 userInfo:0]);
    }

    v15 = [NSString stringWithFormat:@"%@: unable to copy absolute URL for %@", _NSMethodExceptionProem(self, a2), self];
LABEL_22:
    v16 = v15;
    v17 = MEMORY[0x1E695DF30];
    v18 = MEMORY[0x1E695D940];
    goto LABEL_25;
  }

  path = [(objc_class *)_trueSelf path];

  return [path fileSystemRepresentation];
}

- (uint64_t)absoluteString
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v5 = CFURLCopyAbsoluteURL(_trueSelf);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLGetString(v5);
      CFRelease(v6);
      return v7;
    }

    return 0;
  }

  return [(objc_class *)_trueSelf absoluteString];
}

- (uint64_t)_securePath
{
  selfCopy = self;
  if ([self isFileReferenceURL] && (objc_msgSend(selfCopy, "_resolveFlags") & 1) == 0)
  {
    selfCopy = [selfCopy _URLByInsertingResolveFlags:1];
  }

  return [selfCopy path];
}

- (id)standardizedURL
{
  selfCopy = self;
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    if (_CFURLCopyComponents())
    {
      return _CFURLCreateFromComponents();
    }

    return selfCopy;
  }

  return [(objc_class *)_trueSelf standardizedURL];
}

- (CFURLRef)absoluteURL
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (!_trueSelf)
  {
    return 0;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf absoluteURL];
  }

  else
  {
    v5 = CFURLCopyAbsoluteURL(_trueSelf);

    return v5;
  }
}

- (__CFString)query
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf query];
  }

  else if (_trueSelf)
  {
    String = CFURLCopyQueryString(_trueSelf, 0);

    return String;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)hasDirectoryPath
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf hasDirectoryPath];
  }

  else
  {
    return _trueSelf && CFURLHasDirectoryPath(_trueSelf) != 0;
  }
}

- (__CFString)host
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf host];
  }

  else if (_trueSelf)
  {
    v5 = CFURLCopyHostName(_trueSelf);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (__CFString)relativePath
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf relativePath];
  }

  else if (_trueSelf)
  {
    v5 = CFURLCopyFileSystemPath(_trueSelf, kCFURLPOSIXPathStyle);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (__CFString)fragment
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf fragment];
  }

  else if (_trueSelf)
  {
    v5 = CFURLCopyFragment(_trueSelf, 0);

    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)port
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf port];
  }

  else
  {
    if (!_trueSelf)
    {
      return 0;
    }

    v5 = CFURLGetPortNumber(_trueSelf);
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
  if ([self _isAbsolute])
  {
    _trueSelf = [self _trueSelf];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (_trueSelf == qword_1ED43FBF0)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
      objc_exception_throw(v9);
    }

    if (!_trueSelf)
    {
      return 0;
    }

    if (_foundation_swift_nsurl_feature_enabled())
    {

      return [(objc_class *)_trueSelf resourceSpecifier];
    }

    if (!CFURLCanBeDecomposed(_trueSelf))
    {
      v6 = CFURLCopyResourceSpecifier(_trueSelf);
      goto LABEL_19;
    }

    if (CFURLGetBaseURL(_trueSelf))
    {
      v6 = CFURLGetString(_trueSelf);
LABEL_19:

      return v6;
    }

    v7 = CFURLCopyNetLocation(_trueSelf);
    v8 = CFURLCopyPath(_trueSelf);
    result = CFURLCopyResourceSpecifier(_trueSelf);
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

    return [self relativeString];
  }

  return result;
}

- (unint64_t)_isDeallocating
{
  v5 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

    return qword_1ED43FBF0 == self || _CFIsDeallocating() != 0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel__isDeallocating);
  }
}

- (id)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [self _freeClients];
  if ((_foundation_swift_nsurl_feature_enabled() & 1) == 0)
  {
    Class = object_getClass(self);
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
    v3 = object_getClass(self);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v3 != qword_1ED43FC10)
    {
LABEL_9:
    }
  }

  v5.receiver = self;
  v5.super_class = NSURL_0;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

- (void)_freeClients
{
  if ((_foundation_swift_nsurl_feature_enabled() & 1) == 0)
  {
    _cfurl = [self _cfurl];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (_cfurl == qword_1ED43FBF0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_cfurl, a2)), 0}];
      objc_exception_throw(v6);
    }

    if (_cfurl)
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
  Class = object_getClass(self);
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

    if (qword_1ED43FBF0 == self)
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
    v4.receiver = self;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel__tryRetain);
  }
}

- (__CFString)user
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf user];
  }

  else if (_trueSelf)
  {
    v5 = CFURLCopyUserName(_trueSelf);

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

  if (qword_1ED43FC00 == self)
  {
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    return qword_1ED43FBF0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NSURL_0;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (CFIndex)retainCount
{
  v5 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

    if (qword_1ED43FBF0 == self)
    {
      return -1;
    }

    else
    {

      return CFGetRetainCount(self);
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSURL_0;
    return objc_msgSendSuper2(&v4, sel_retainCount);
  }
}

- (uint64_t)isKindOfClass:()NSURL
{
  v9 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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
    v6 = object_getClass(self);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v6 == qword_1ED43FC10 && qword_1ED43FC10 == a3)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = NSURL_0;
  return objc_msgSendSuper2(&v8, sel_isKindOfClass_, a3);
}

- (uint64_t)isMemberOfClass:()NSURL
{
  v9 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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
    v6 = object_getClass(self);
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

  v8.receiver = self;
  v8.super_class = NSURL_0;
  return objc_msgSendSuper2(&v8, sel_isMemberOfClass_, a3);
}

- (CFURLRef)initWithString:()NSURL relativeToURL:encodingInvalidCharacters:
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v17 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(self, a2)];

    v18 = MEMORY[0x1E695DF30];
    v19 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  Class = object_getClass(self);
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

    v11 = object_getClass(self);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v11 != qword_1ED43FC10)
    {
LABEL_9:
      v20.receiver = self;
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

  if (qword_1ED43FBF0 != self)
  {
    v17 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

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

  _cfurl = [self _cfurl];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_cfurl == qword_1ED43FBF0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_cfurl, a2)), 0}];
    objc_exception_throw(v9);
  }

  if (!_cfurl)
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
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v5);
  }

  if (!_trueSelf)
  {
    return 0xFFFFFFFFLL;
  }

  return [(objc_class *)_trueSelf _encoding];
}

- (uint64_t)init
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v2 = [self initWithString:&stru_1EEEFDF90];
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

  v4 = [objc_allocWithZone(self) initWithString:a3 relativeToURL:a4];

  return v4;
}

+ (id)URLWithString:()NSURL encodingInvalidCharacters:
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(self) initWithString:a3 relativeToURL:0 encodingInvalidCharacters:a4];

  return v4;
}

- (uint64_t)initWithScheme:()NSURL host:path:
{
  if (([a5 isAbsolutePath] & 1) == 0)
  {
    v21 = [NSString stringWithFormat:@"%@: path %@ is not absolute.", _NSMethodExceptionProem(self, a2), a5];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0]);
  }

  if (a4)
  {
    stringByAddingPercentEscapes = [a4 stringByAddingPercentEscapes];
  }

  else
  {
    stringByAddingPercentEscapes = &stru_1EEEFDF90;
  }

  standardizedURLPath = [a5 standardizedURLPath];
  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = standardizedURLPath;
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

  if (stringByAddingPercentEscapes && v12)
  {
    v19 = [NSString stringWithFormat:@"%@://%@%@", a3, stringByAddingPercentEscapes, v12];

    return [(objc_class *)self initWithString:v19];
  }

  else
  {
LABEL_22:

    return 0;
  }
}

- (CFURLRef)initWithDataRepresentation:()NSURL relativeToURL:
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

  v9 = object_getClass(selfCopy);
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

    if (qword_1ED43FBF0 != selfCopy)
    {
      v15 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(selfCopy, a2)];

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
    v16.receiver = selfCopy;
    v16.super_class = NSURL_0;
    selfCopy = objc_msgSendSuper2(&v16, sel_init);
    if (selfCopy)
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

      *&selfCopy[*MEMORY[0x1E695E030]] = 0;
      *&selfCopy[*MEMORY[0x1E695E018]] = 0;
      *&selfCopy[*MEMORY[0x1E695E020]] = 0;
      if (v10)
      {
        *&selfCopy[*MEMORY[0x1E695E028]] = v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return selfCopy;
}

+ (id)URLWithDataRepresentation:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(self) initWithDataRepresentation:a3 relativeToURL:a4];

  return v4;
}

- (CFURLRef)initAbsoluteURLWithDataRepresentation:()NSURL relativeToURL:
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

  v9 = object_getClass(selfCopy);
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

    if (qword_1ED43FBF0 != selfCopy)
    {
      v15 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(selfCopy, a2)];

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
    v16.receiver = selfCopy;
    v16.super_class = NSURL_0;
    selfCopy = objc_msgSendSuper2(&v16, sel_init);
    if (selfCopy)
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

      *&selfCopy[*MEMORY[0x1E695E030]] = 0;
      *&selfCopy[*MEMORY[0x1E695E018]] = 0;
      *&selfCopy[*MEMORY[0x1E695E020]] = 0;
      if (v10)
      {
        *&selfCopy[*MEMORY[0x1E695E028]] = v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return selfCopy;
}

+ (id)absoluteURLWithDataRepresentation:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(self) initAbsoluteURLWithDataRepresentation:a3 relativeToURL:a4];

  return v4;
}

- (uint64_t)dataRepresentation
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v11 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D920];
    goto LABEL_21;
  }

  if (!_trueSelf)
  {
    v14 = [NSString stringWithFormat:@"%@: URL was not initialized", _NSMethodExceptionProem(self, a2), v15];
LABEL_20:
    v11 = v14;
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695D940];
LABEL_21:
    objc_exception_throw([v12 exceptionWithName:*v13 reason:v11 userInfo:0]);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf dataRepresentation];
  }

  v6 = CFURLGetBytes(_trueSelf, 0, 0);
  if (v6 == -1)
  {
    v14 = [NSString stringWithFormat:@"%@: unable to calculate bytes needed from %@", _NSMethodExceptionProem(self, a2), self];
    goto LABEL_20;
  }

  v7 = v6;
  v8 = malloc_type_malloc(v6, 0x361B7AA0uLL);
  if (!v8)
  {
    v11 = [NSString stringWithFormat:@"%@: unable to allocate memory for length (%ld)", _NSMethodExceptionProem(self, a2), v7];
    v12 = MEMORY[0x1E695DF30];
    v13 = MEMORY[0x1E695DA18];
    goto LABEL_21;
  }

  v9 = v8;
  if (CFURLGetBytes(_trueSelf, v8, v7) != v7)
  {
    free(v9);
    v14 = [NSString stringWithFormat:@"%@: unable to get bytes from %@", _NSMethodExceptionProem(self, a2), self];
    goto LABEL_20;
  }

  v10 = MEMORY[0x1E695DEF0];

  return [v10 dataWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
}

- (CFURLRef)initFileURLWithPath:()NSURL
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v10 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(self, a2)];

    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E695D940];
    goto LABEL_29;
  }

  stringByStandardizingPath = a3;
  if (![(__CFString *)a3 length])
  {
    goto LABEL_25;
  }

  if (([(__CFString *)stringByStandardizingPath isAbsolutePath]& 1) == 0)
  {
    stringByStandardizingPath = [(__CFString *)stringByStandardizingPath stringByStandardizingPath];
  }

  isDirectory = 0;
  if ([(__CFString *)stringByStandardizingPath characterAtIndex:[(__CFString *)stringByStandardizingPath length]- 1]== 47)
  {
    isDirectory = 1;
  }

  else if ((_NSFileExists(stringByStandardizingPath, &isDirectory) & 1) == 0)
  {
    isDirectory = 0;
  }

  Class = object_getClass(selfCopy);
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
    v7 = object_getClass(selfCopy);
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

      if (qword_1ED43FBF0 == selfCopy)
      {

        return CFURLCreateWithFileSystemPath(0, stringByStandardizingPath, kCFURLPOSIXPathStyle, isDirectory);
      }

      v10 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(selfCopy, a2)];

      v11 = MEMORY[0x1E695DF30];
      v12 = MEMORY[0x1E695D920];
LABEL_29:
      objc_exception_throw([v11 exceptionWithName:*v12 reason:v10 userInfo:0]);
    }
  }

  v13.receiver = selfCopy;
  v13.super_class = NSURL_0;
  selfCopy = [(objc_class *)&v13 init];
  if (selfCopy)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:stringByStandardizingPath];
      if (v8)
      {
LABEL_19:
        *&selfCopy[*MEMORY[0x1E695E028]] = v8;
        return selfCopy;
      }
    }

    else
    {
      v8 = CFURLCreateWithFileSystemPath(0, stringByStandardizingPath, kCFURLPOSIXPathStyle, isDirectory);
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_25:

    return 0;
  }

  return selfCopy;
}

- (CFURLRef)initFileURLWithPath:()NSURL isDirectory:
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(self, a2)];

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  stringByStandardizingPath = a3;
  if (![(__CFString *)a3 length])
  {
    goto LABEL_23;
  }

  if (([(__CFString *)stringByStandardizingPath isAbsolutePath]& 1) == 0)
  {
    stringByStandardizingPath = [(__CFString *)stringByStandardizingPath stringByStandardizingPath];
  }

  Class = object_getClass(selfCopy);
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

    v9 = object_getClass(selfCopy);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v9 != qword_1ED43FC10)
    {
LABEL_12:
      v15.receiver = selfCopy;
      v15.super_class = NSURL_0;
      selfCopy = [(objc_class *)&v15 init];
      if (!selfCopy)
      {
        return selfCopy;
      }

      if (_foundation_swift_nsurl_feature_enabled())
      {
        v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:stringByStandardizingPath isDirectory:a4];
        if (v10)
        {
LABEL_15:
          *&selfCopy[*MEMORY[0x1E695E028]] = v10;
          return selfCopy;
        }
      }

      else
      {
        v10 = CFURLCreateWithFileSystemPath(0, stringByStandardizingPath, kCFURLPOSIXPathStyle, a4);
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

  if (qword_1ED43FBF0 != selfCopy)
  {
    v12 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(selfCopy, a2)];

    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D920];
LABEL_27:
    objc_exception_throw([v13 exceptionWithName:*v14 reason:v12 userInfo:0]);
  }

  return CFURLCreateWithFileSystemPath(0, stringByStandardizingPath, kCFURLPOSIXPathStyle, a4);
}

- (char)initFileURLWithPath:()NSURL isDirectory:relativeToURL:
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v14 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(self, a2)];

    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E695D940];
    goto LABEL_27;
  }

  stringByStandardizingPath = a3;
  if (![a3 length])
  {
    goto LABEL_23;
  }

  if (([stringByStandardizingPath isAbsolutePath] & 1) == 0)
  {
    stringByStandardizingPath = [stringByStandardizingPath stringByStandardizingPath];
  }

  Class = object_getClass(selfCopy);
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
    v11 = object_getClass(selfCopy);
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

      if (qword_1ED43FBF0 == selfCopy)
      {

        JUMPOUT(0x1865CEC70);
      }

      v14 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(selfCopy, a2)];

      v15 = MEMORY[0x1E695DF30];
      v16 = MEMORY[0x1E695D920];
LABEL_27:
      objc_exception_throw([v15 exceptionWithName:*v16 reason:v14 userInfo:0]);
    }
  }

  v17.receiver = selfCopy;
  v17.super_class = NSURL_0;
  selfCopy = [(objc_class *)&v17 init];
  if (selfCopy)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:stringByStandardizingPath isDirectory:a4 relativeToURL:a5];
      if (v12)
      {
LABEL_15:
        *&selfCopy[*MEMORY[0x1E695E028]] = v12;
        return selfCopy;
      }
    }

    else
    {
      v12 = MEMORY[0x1865CEC70](0, stringByStandardizingPath, 0, a4, a5);
      if (v12)
      {
        goto LABEL_15;
      }
    }

LABEL_23:

    return 0;
  }

  return selfCopy;
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
    v18 = [NSString stringWithFormat:@"%@: nil string parameter", _NSMethodExceptionProem(self, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
  }

  stringByStandardizingPath = a3;
  if (![a3 length])
  {
    goto LABEL_19;
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    Class = object_getClass(self);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (Class == qword_1ED43FC10)
    {
      v19 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v19 userInfo:0]);
    }
  }

  if (([stringByStandardizingPath isAbsolutePath] & 1) == 0)
  {
    stringByStandardizingPath = [stringByStandardizingPath stringByStandardizingPath];
  }

  v9 = [stringByStandardizingPath characterAtIndex:{objc_msgSend(stringByStandardizingPath, "length") - 1}];
  v10 = *MEMORY[0x1E695E480];
  if (v9 == 47)
  {
    v11 = MEMORY[0x1865CEC70](v10, stringByStandardizingPath, 0, 1, a4);
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
    v12 = MEMORY[0x1865CEC70](v10, stringByStandardizingPath, 0, 0, a4);
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
    v21[4] = stringByStandardizingPath;
    [NSURL setIOPolicy:v21 type:? scope:? forBlock:?];
    if (!v23[3])
    {
      goto LABEL_19;
    }
  }

  v13 = object_getClass(self);
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
    if (qword_1ED43FBF0 != self)
    {
      CFRelease(v23[3]);
      v17 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v17 userInfo:0]);
    }
  }

  else
  {
    v20.receiver = self;
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
  v3 = [objc_allocWithZone(self) initFileURLWithPath:a3];

  return v3;
}

+ (id)fileURLWithPath:()NSURL isDirectory:
{
  v4 = [objc_allocWithZone(self) initFileURLWithPath:a3 isDirectory:a4];

  return v4;
}

+ (id)fileURLWithPath:()NSURL isDirectory:relativeToURL:
{
  v5 = [objc_allocWithZone(self) initFileURLWithPath:a3 isDirectory:a4 relativeToURL:a5];

  return v5;
}

+ (id)fileURLWithPath:()NSURL relativeToURL:
{
  v4 = [objc_allocWithZone(self) initFileURLWithPath:a3 relativeToURL:a4];

  return v4;
}

- (char)initFileURLWithFileSystemRepresentation:()NSURL isDirectory:relativeToURL:
{
  v18 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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
    v11 = object_getClass(self);
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

      if (qword_1ED43FBF0 == self)
      {
        strlen(a3);

        JUMPOUT(0x1865CEC10);
      }

      v16 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v16 userInfo:0]);
    }
  }

  v17.receiver = self;
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
  v5 = [objc_allocWithZone(self) initFileURLWithFileSystemRepresentation:a3 isDirectory:a4 relativeToURL:a5];

  return v5;
}

- (uint64_t)getFileSystemRepresentation:()NSURL maxLength:
{
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v10);
  }

  if (_trueSelf)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      path = [(objc_class *)_trueSelf path];

      return [path getFileSystemRepresentation:a3 maxLength:a4];
    }

    else
    {
      return CFURLGetFileSystemRepresentation(_trueSelf, 1u, a3, a4) != 0;
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
  Class = object_getClass(self);
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
    v15 = object_getClass(self);
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

      if (qword_1ED43FBF0 != self)
      {
        v24 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

        v22 = MEMORY[0x1E695DF30];
        v23 = *MEMORY[0x1E695D920];
        v21 = v24;
LABEL_32:
        objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
      }

      _cfurl = [a5 _cfurl];
      if (qword_1ED43FBF8 != -1)
      {
        dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
      }

      if (_cfurl != qword_1ED43FBF0)
      {
        v16 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], a3, a4, _cfurl, 0, a6, a7);
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
      v21 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_cfurl, a2)];
      v22 = MEMORY[0x1E695DF30];
      v23 = *MEMORY[0x1E695D920];
      goto LABEL_32;
    }
  }

  v25.receiver = self;
  v25.super_class = NSURL_0;
  v16 = objc_msgSendSuper2(&v25, sel_init);
  if (v16)
  {
    _cfurl = [a5 _cfurl];
    if (qword_1ED43FBF8 != -1)
    {
      dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
    }

    if (_cfurl != qword_1ED43FBF0)
    {
      v18 = MEMORY[0x1865CEBC0](*MEMORY[0x1E695E480], a3, a4, _cfurl, 0, a6, a7);
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
  v7 = [objc_allocWithZone(self) initByResolvingBookmarkData:a3 options:a4 relativeToURL:a5 bookmarkDataIsStale:a6 error:a7];

  return v7;
}

- (char)initByResolvingAliasFileAtURL:()NSURL options:error:
{
  v18 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
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

  v11 = object_getClass(self);
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

    if (qword_1ED43FBF0 != self)
    {
      v16 = [NSString stringWithFormat:@"%@: object already initialized", _NSMethodExceptionProem(self, a2)];

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
    v17.receiver = self;
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
  v5 = [objc_allocWithZone(self) initByResolvingAliasFileAtURL:a3 options:a4 error:a5];

  return v5;
}

- (uint64_t)isEqual:()NSURL
{
  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v9 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)];
    goto LABEL_16;
  }

  _trueSelf2 = [a3 _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf2 == qword_1ED43FBF0)
  {
    v9 = [NSString stringWithFormat:@"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf2, a2)];
LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v9 userInfo:0]);
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    return _CFNonObjCEqual() != 0;
  }

  return [(objc_class *)_trueSelf isEqual:_trueSelf2];
}

- (uint64_t)encodeWithCoder:()NSURL
{
  v15 = *MEMORY[0x1E69E9840];
  allowsKeyedCoding = [a3 allowsKeyedCoding];
  isFileReferenceURL = [self isFileReferenceURL];
  if (allowsKeyedCoding)
  {
    if (!isFileReferenceURL || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [a3 encodeObject:objc_msgSend(self forKey:{"baseURL"), @"NS.base"}];
      relativeString = [self relativeString];
      v8 = @"NS.relative";
      v9 = a3;
LABEL_5:

      return [v9 encodeObject:relativeString forKey:v8];
    }

    filePathURL = [self filePathURL];
    v13 = [self bookmarkDataWithOptions:512 includingResourceValuesForKeys:0 relativeToURL:0 error:0];
    if (!filePathURL)
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
        relativeString = v13;
        goto LABEL_5;
      }

      filePathURL = result;
    }

    [a3 encodeObject:objc_msgSend(filePathURL forKey:{"baseURL"), @"NS.base"}];
    result = [a3 encodeObject:objc_msgSend(filePathURL forKey:{"relativeString"), @"NS.relative"}];
    goto LABEL_19;
  }

  if (isFileReferenceURL)
  {
    self = [self filePathURL];
    if (!self)
    {
      self = [MEMORY[0x1E695DFF8] URLWithString:@"com-apple-unresolvable-file-reference-url:"];
    }
  }

  baseURL = [self baseURL];
  v14 = baseURL != 0;
  [a3 encodeValueOfObjCType:"c" at:&v14];
  if (baseURL)
  {
    [a3 encodeObject:baseURL];
  }

  return [a3 encodeObject:{objc_msgSend(self, "relativeString")}];
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
      decodeObject = [a3 decodeObject];
      if (!decodeObject)
      {
        goto LABEL_30;
      }

      v8 = decodeObject;
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

    decodeObject2 = [a3 decodeObject];
    if (decodeObject2)
    {
      v21 = decodeObject2;
      if (_NSIsNSString())
      {
        result = [self initWithString:v21 relativeToURL:v8];
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

    LODWORD(self) = 0;
    goto LABEL_37;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 containsValueForKey:@"NS.minimalBookmarkData"] && objc_msgSend(a3, "_strictSecureDecodingEnabled"))
  {
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = _NSMethodExceptionProem(self, sel_initWithCoder_);
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
        result = [self initWithString:v18 relativeToURL:v19];
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
          LODWORD(self) = 1;
          goto LABEL_37;
        }

LABEL_36:
        LODWORD(self) = 0;
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

  if (self)
  {
    v11 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v10 options:768 relativeToURL:0 bookmarkDataIsStale:0 error:0];
    if (v11)
    {
      v12 = [objc_msgSend(v11 "filePathURL")];
      if (v12)
      {
        v13 = v12;
        result = [self initWithString:v12];
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

    result = [self initFileURLWithPath:v25 isDirectory:{objc_msgSend(objc_msgSend(v24, "objectForKey:", v23), "BOOLValue")}];
LABEL_33:
    LODWORD(self) = 0;
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  if (dyld_program_sdk_at_least() && (self & _os_feature_enabled_impl()) == 1)
  {
    return [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:&stru_1EEEFDF90];
  }

  [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"%@: invalid archived object", _NSMethodExceptionProem(objc_alloc(MEMORY[0x1E695DFF8]), a2))}];
  return 0;
}

- (uint64_t)password
{
  v12 = *MEMORY[0x1E69E9840];
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v10);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {

    return [(objc_class *)_trueSelf password];
  }

  else
  {
    if (!_trueSelf)
    {
      return 0;
    }

    v5 = CFURLCopyNetLocation(_trueSelf);
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
  _trueSelf = [self _trueSelf];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_trueSelf == qword_1ED43FBF0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_trueSelf, a2)), 0}];
    objc_exception_throw(v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__NSURL_NSURL__parameterString__block_invoke;
  block[3] = &unk_1E69F2C00;
  block[4] = _trueSelf;
  if (_MergedGlobals_123 != -1)
  {
    dispatch_once(&_MergedGlobals_123, block);
  }

  v4 = _foundation_swift_nsurl_feature_enabled();
  result = 0;
  if ((v4 & 1) == 0)
  {
    if (_trueSelf)
    {
      return CFURLCopyParameterString(_trueSelf, 0);
    }
  }

  return result;
}

@end