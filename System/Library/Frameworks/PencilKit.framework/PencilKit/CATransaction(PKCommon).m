@interface CATransaction(PKCommon)
+ (uint64_t)_pk_withDisabledActions:()PKCommon perform:;
@end

@implementation CATransaction(PKCommon)

+ (uint64_t)_pk_withDisabledActions:()PKCommon perform:
{
  v5 = MEMORY[0x1E6979518];
  v6 = a4;
  [v5 begin];
  [MEMORY[0x1E6979518] setDisableActions:a3];
  v6[2](v6);

  v7 = MEMORY[0x1E6979518];

  return [v7 commit];
}

@end