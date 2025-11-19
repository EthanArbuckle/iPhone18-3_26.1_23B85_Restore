@interface ATXFocusModeModelsUtil
+ (id)setupPredictionModelNameForMode:(unint64_t)a3;
@end

@implementation ATXFocusModeModelsUtil

+ (id)setupPredictionModelNameForMode:(unint64_t)a3
{
  v3 = @"ATXModeHomeSetupPredictionModel";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return @"ATXModeWorkingSetupPredictionModel";
  }

  else
  {
    return v3;
  }
}

@end