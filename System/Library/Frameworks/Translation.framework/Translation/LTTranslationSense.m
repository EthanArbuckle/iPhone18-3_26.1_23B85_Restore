@interface LTTranslationSense
@end

@implementation LTTranslationSense

id __39___LTTranslationSense_sensesFromArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [_LTTranslationSense senseFromDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end