@interface ATXScoreTypes
@end

@implementation ATXScoreTypes

void __38___ATXScoreTypes_scoreInputForString___block_invoke()
{
  v0 = objc_opt_new();
  v1 = scoreInputForString__scoreInputMap;
  scoreInputForString__scoreInputMap = v0;

  for (i = 0; i != 828; ++i)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v4 = scoreInputForString__scoreInputMap;
    v5 = [_ATXScoreTypes stringForScoreInput:i];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

void __42___ATXScoreTypes_scoreInputForAggdString___block_invoke()
{
  v0 = objc_opt_new();
  v1 = scoreInputForAggdString__scoreInputMap;
  scoreInputForAggdString__scoreInputMap = v0;

  for (i = 0; i != 828; ++i)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v4 = scoreInputForAggdString__scoreInputMap;
    v5 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

@end