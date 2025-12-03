@interface DisplayPatternToolInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation DisplayPatternToolInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = DisplayPatternToolInputs;
  v14 = ![(DisplayViewInputs *)&v13 validateAndInitializeParameters:parametersCopy];
  v5 = [parametersCopy dk_stringFromRequiredKey:@"drawColor" maxLength:7 failed:&v14];
  v12 = 0;
  v6 = [UIColor colorWithHexValue:v5 error:&v12];
  v7 = v12;
  [(DisplayPatternToolInputs *)self setDrawColor:v6];

  drawColor = [(DisplayPatternToolInputs *)self drawColor];

  if (!drawColor)
  {
    v14 = 1;
  }

  v9 = [parametersCopy dk_numberFromRequiredKey:@"minimumSquareLength" lowerBound:&off_1000107F0 upperBound:&off_100010800 failed:&v14];
  [v9 doubleValue];
  [(DisplayPatternToolInputs *)self setMinimumSquareLength:?];

  -[DisplayPatternToolInputs setRandomizeImageOrder:](self, "setRandomizeImageOrder:", [parametersCopy dk_BOOLFromRequiredKey:@"randomizeImageOrder" failed:&v14]);
  -[DisplayPatternToolInputs setBrightnessAdjustable:](self, "setBrightnessAdjustable:", [parametersCopy dk_BOOLFromKey:@"brightnessAdjustable" defaultValue:0 failed:&v14]);
  -[DisplayPatternToolInputs setResetBrightnessOnChange:](self, "setResetBrightnessOnChange:", [parametersCopy dk_BOOLFromKey:@"resetBrightnessOnChange" defaultValue:0 failed:&v14]);
  -[DisplayPatternToolInputs setDisableAmbientLightAdaptation:](self, "setDisableAmbientLightAdaptation:", [parametersCopy dk_BOOLFromKey:@"disableAmbientLightAdaptation" defaultValue:0 failed:&v14]);
  v10 = v14;

  return (v10 & 1) == 0;
}

@end