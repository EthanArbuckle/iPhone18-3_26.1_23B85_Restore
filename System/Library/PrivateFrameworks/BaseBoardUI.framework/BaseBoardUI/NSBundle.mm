@interface NSBundle
+ (id)bs_baseBoardUIBundle;
@end

@implementation NSBundle

+ (id)bs_baseBoardUIBundle
{
  objc_opt_self();
  if (qword_1ED61C7F0 != -1)
  {
    dispatch_once(&qword_1ED61C7F0, &__block_literal_global_5);
  }

  v0 = _MergedGlobals_12;

  return v0;
}

uint64_t __45__NSBundle_BaseBoardUI__bs_baseBoardUIBundle__block_invoke()
{
  _MergedGlobals_12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

@end