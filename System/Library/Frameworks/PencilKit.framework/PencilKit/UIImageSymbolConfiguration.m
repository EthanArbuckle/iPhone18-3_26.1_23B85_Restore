@interface UIImageSymbolConfiguration
+ (uint64_t)_pk_defaultImageSymbolConfiguration;
@end

@implementation UIImageSymbolConfiguration

+ (uint64_t)_pk_defaultImageSymbolConfiguration
{
  objc_opt_self();
  v0 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v1 = *&_MergedGlobals_123;
  objc_opt_self();
  if (PKIsVisionDevice())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  return [v0 configurationWithPointSize:6 weight:v2 scale:v1];
}

@end