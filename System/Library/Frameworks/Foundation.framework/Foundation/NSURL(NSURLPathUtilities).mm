@interface NSURL(NSURLPathUtilities)
+ (uint64_t)fileURLWithPathComponents:()NSURLPathUtilities;
- (CFURLRef)URLByAppendingPathComponent:()NSURLPathUtilities isDirectory:;
- (CFURLRef)URLByAppendingPathExtension:()NSURLPathUtilities;
- (CFURLRef)URLByDeletingLastPathComponent;
- (CFURLRef)URLByDeletingPathExtension;
- (id)URLByResolvingSymlinksInPath;
- (id)URLByStandardizingPath;
- (uint64_t)URLByAppendingPathComponent:()NSURLPathUtilities;
- (uint64_t)checkResourceIsReachableAndReturnError:()NSURLPathUtilities;
- (uint64_t)lastPathComponent;
- (uint64_t)pathComponents;
- (uint64_t)pathExtension;
@end

@implementation NSURL(NSURLPathUtilities)

- (id)URLByResolvingSymlinksInPath
{
  if (![self isFileURL])
  {
    goto LABEL_10;
  }

  if ([self isFileReferenceURL])
  {
    filePathURL = [self filePathURL];

    return [filePathURL URLByResolvingSymlinksInPath];
  }

  path = [self path];
  if (path)
  {
    stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];
    v6 = MEMORY[0x1E695DFF8];

    return [v6 fileURLWithPath:stringByResolvingSymlinksInPath];
  }

  else
  {
LABEL_10:
    selfCopy = self;

    return selfCopy;
  }
}

- (uint64_t)lastPathComponent
{
  path = [self path];

  return [path lastPathComponent];
}

- (CFURLRef)URLByDeletingLastPathComponent
{
  if (_foundation_swift_nsurl_feature_enabled())
  {
    _trueSelf = [self _trueSelf];

    return [_trueSelf URLByDeletingLastPathComponent];
  }

  else
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E4A8], self);

    return PathComponent;
  }
}

- (uint64_t)pathExtension
{
  path = [self path];

  return [path pathExtension];
}

- (CFURLRef)URLByDeletingPathExtension
{
  if (_foundation_swift_nsurl_feature_enabled())
  {
    _trueSelf = [self _trueSelf];

    return [_trueSelf URLByDeletingPathExtension];
  }

  else
  {
    v4 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x1E695E4A8], self);

    return v4;
  }
}

- (uint64_t)pathComponents
{
  path = [self path];

  return [path pathComponents];
}

- (id)URLByStandardizingPath
{
  if (![self isFileURL])
  {
    goto LABEL_11;
  }

  if ([self isFileReferenceURL])
  {
    filePathURL = [self filePathURL];

    return [filePathURL URLByStandardizingPath];
  }

  v4 = [objc_msgSend(self "path")];
  if (v4)
  {
    v5 = v4;
    v6 = [self checkResourceIsReachableAndReturnError:0];
    v7 = MEMORY[0x1E695DFF8];
    if (v6)
    {
      v8 = MEMORY[0x1E695DFF8];

      return [v8 fileURLWithPath:v5];
    }

    else
    {
      v10 = CFURLHasDirectoryPath(self) != 0;

      return [v7 fileURLWithPath:v5 isDirectory:v10];
    }
  }

  else
  {
LABEL_11:
    selfCopy = self;

    return selfCopy;
  }
}

+ (uint64_t)fileURLWithPathComponents:()NSURLPathUtilities
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: component, components, or pathExtension cannot be nil.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v4 = [NSString pathWithComponents:?];
  v5 = [objc_msgSend(a3 "lastObject")];
  v6 = MEMORY[0x1E695DFF8];
  if (v5)
  {

    return [v6 fileURLWithPath:v4 isDirectory:1];
  }

  else
  {

    return [v6 fileURLWithPath:v4];
  }
}

- (CFURLRef)URLByAppendingPathComponent:()NSURLPathUtilities isDirectory:
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: component, components, or pathExtension cannot be nil.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    _trueSelf = [(objc_class *)self _trueSelf];

    return [_trueSelf _URLByAppendingPathComponent:a3 isDirectory:a4 encodingSlashes:0];
  }

  else
  {
    v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E4A8], self, a3, a4);

    return v9;
  }
}

- (uint64_t)URLByAppendingPathComponent:()NSURLPathUtilities
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: component, components, or pathExtension cannot be nil.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  if (([a3 hasSuffix:@"/"] & 1) != 0 || !-[objc_class isFileURL](self, "isFileURL"))
  {
    v6 = [(objc_class *)self URLByAppendingPathComponent:a3 isDirectory:0];
    v12[5] = v6;
  }

  else
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3052000000;
    v10[3] = __Block_byref_object_copy__17;
    v10[4] = __Block_byref_object_dispose__17;
    v10[5] = 0;
    v5 = [(objc_class *)self URLByAppendingPathComponent:a3 isDirectory:0];
    v12[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__NSURL_NSURLPathUtilities__URLByAppendingPathComponent___block_invoke;
    v9[3] = &unk_1E69F64D8;
    v9[6] = &v11;
    v9[7] = v10;
    v9[4] = self;
    v9[5] = a3;
    [NSURL setIOPolicy:v9 type:? scope:? forBlock:?];
    _Block_object_dispose(v10, 8);
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (CFURLRef)URLByAppendingPathExtension:()NSURLPathUtilities
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: component, components, or pathExtension cannot be nil.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (_foundation_swift_nsurl_feature_enabled())
  {
    _trueSelf = [(objc_class *)self _trueSelf];

    return [_trueSelf _URLByAppendingPathExtension:a3];
  }

  else
  {
    v7 = CFURLCreateCopyAppendingPathExtension(*MEMORY[0x1E695E4A8], self, a3);

    return v7;
  }
}

- (uint64_t)checkResourceIsReachableAndReturnError:()NSURLPathUtilities
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _cfurl = [self _cfurl];
  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (_cfurl == qword_1ED43FBF0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: object was not initialized", _NSMethodExceptionProem(_cfurl, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (_cfurl)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__NSURL_NSURLPathUtilities__checkResourceIsReachableAndReturnError___block_invoke;
    v9[3] = &unk_1E69F6500;
    v9[4] = &v10;
    v9[5] = _cfurl;
    v9[6] = a3;
    [NSURL setIOPolicy:v9 type:? scope:? forBlock:?];
    if (a3)
    {
      if ((v11[3] & 1) == 0)
      {
        *a3 = *a3;
      }
    }
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

@end