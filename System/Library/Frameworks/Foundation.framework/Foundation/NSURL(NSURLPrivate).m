@interface NSURL(NSURLPrivate)
+ (id)_fileURLWithPath:()NSURLPrivate cachingResourceValuesForKeys:error:;
- (char)_initFileURLWithPath:()NSURLPrivate cachingResourceValuesForKeys:error:;
@end

@implementation NSURL(NSURLPrivate)

- (char)_initFileURLWithPath:()NSURLPrivate cachingResourceValuesForKeys:error:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (![a3 length])
    {

      return 0;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: nil string parameter", _NSMethodExceptionProem(a1, a2)}];
  }

  if (([a3 isAbsolutePath] & 1) == 0)
  {
    [a3 stringByStandardizingPath];
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
      goto LABEL_15;
    }

    v11 = object_getClass(a1);
    if (qword_1ED43FC18 != -1)
    {
      dispatch_once(&qword_1ED43FC18, &__block_literal_global_500);
    }

    if (v11 != qword_1ED43FC10)
    {
LABEL_15:
      v14.receiver = a1;
      v14.super_class = NSURL_0;
      v9 = objc_msgSendSuper2(&v14, sel_init);
      if (!v9)
      {
        return v9;
      }

      v12 = _CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys();
      if (v12)
      {
        *&v9[*MEMORY[0x1E695E028]] = v12;
        return v9;
      }

      if (!a5)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  if (qword_1ED43FBF8 != -1)
  {
    dispatch_once(&qword_1ED43FBF8, &__block_literal_global_52);
  }

  if (qword_1ED43FBF0 != a1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@: object already initialized", _NSMethodExceptionProem(a1, a2)}];
  }

  v9 = _CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys();
  if (!v9)
  {
    if (!a5)
    {
      return 0;
    }

LABEL_26:
    if (*a5)
    {
      v9 = 0;
      *a5 = *a5;
      return v9;
    }

    return 0;
  }

  return v9;
}

+ (id)_fileURLWithPath:()NSURLPrivate cachingResourceValuesForKeys:error:
{
  v5 = [objc_allocWithZone(a1) _initFileURLWithPath:a3 cachingResourceValuesForKeys:a4 error:a5];

  return v5;
}

@end