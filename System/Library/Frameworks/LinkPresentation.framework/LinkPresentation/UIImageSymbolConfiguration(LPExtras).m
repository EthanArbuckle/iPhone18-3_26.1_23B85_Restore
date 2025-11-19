@interface UIImageSymbolConfiguration(LPExtras)
+ (id)_lp_configurationWithTextStyle:()LPExtras weight:scale:;
@end

@implementation UIImageSymbolConfiguration(LPExtras)

+ (id)_lp_configurationWithTextStyle:()LPExtras weight:scale:
{
  v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:a3 scale:a5];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithWeight:a4];
  v8 = [v6 configurationByApplyingConfiguration:v7];

  return v8;
}

@end