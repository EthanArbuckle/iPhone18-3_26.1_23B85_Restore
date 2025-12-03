@interface NSMutableDictionary(AVCaptureMovieFileOutputAdditions)
- (uint64_t)mfo_addEntriesFromDictionaryWithRecursion:()AVCaptureMovieFileOutputAdditions;
@end

@implementation NSMutableDictionary(AVCaptureMovieFileOutputAdditions)

- (uint64_t)mfo_addEntriesFromDictionaryWithRecursion:()AVCaptureMovieFileOutputAdditions
{
  keyEnumerator = [a3 keyEnumerator];
  result = [keyEnumerator nextObject];
  if (result)
  {
    v7 = result;
    do
    {
      v8 = [self objectForKey:v7];
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
          selfCopy2 = self;
        }

        else
        {
          selfCopy2 = self;
          v10 = v9;
        }

        [selfCopy2 setObject:v10 forKey:v7];
      }

      result = [keyEnumerator nextObject];
      v7 = result;
    }

    while (result);
  }

  return result;
}

@end