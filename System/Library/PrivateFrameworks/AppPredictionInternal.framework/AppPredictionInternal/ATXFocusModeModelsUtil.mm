@interface ATXFocusModeModelsUtil
+ (id)setupPredictionModelNameForMode:(unint64_t)mode;
@end

@implementation ATXFocusModeModelsUtil

+ (id)setupPredictionModelNameForMode:(unint64_t)mode
{
  v3 = @"ATXModeHomeSetupPredictionModel";
  if (mode != 1)
  {
    v3 = 0;
  }

  if (mode == 2)
  {
    return @"ATXModeWorkingSetupPredictionModel";
  }

  else
  {
    return v3;
  }
}

@end