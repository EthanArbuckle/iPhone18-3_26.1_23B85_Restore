@interface NSMutableDictionary(AVCaptureMovieFileOutputAdditions)
- (uint64_t)mfo_addEntriesFromDictionaryWithRecursion:()AVCaptureMovieFileOutputAdditions;
@end

@implementation NSMutableDictionary(AVCaptureMovieFileOutputAdditions)

- (uint64_t)mfo_addEntriesFromDictionaryWithRecursion:()AVCaptureMovieFileOutputAdditions
{
  v5 = [a3 keyEnumerator];
  result = [v5 nextObject];
  if (result)
  {
    v7 = result;
    do
    {
      v8 = [a1 objectForKey:v7];
      v9 = [a3 objectForKey:v7];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v8 mfo_addEntriesFromDictionaryWithRecursion:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 mutableCopy];
          v11 = a1;
        }

        else
        {
          v11 = a1;
          v10 = v9;
        }

        [v11 setObject:v10 forKey:v7];
      }

      result = [v5 nextObject];
      v7 = result;
    }

    while (result);
  }

  return result;
}

@end