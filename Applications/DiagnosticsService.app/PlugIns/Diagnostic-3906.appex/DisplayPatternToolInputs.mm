@interface DisplayPatternToolInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation DisplayPatternToolInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DisplayPatternToolInputs;
  v14 = ![(DisplayViewInputs *)&v13 validateAndInitializeParameters:v4];
  v5 = [v4 dk_stringFromRequiredKey:@"drawColor" maxLength:7 failed:&v14];
  v12 = 0;
  v6 = [UIColor colorWithHexValue:v5 error:&v12];
  v7 = v12;
  [(DisplayPatternToolInputs *)self setDrawColor:v6];

  v8 = [(DisplayPatternToolInputs *)self drawColor];

  if (!v8)
  {
    v14 = 1;
  }

  v9 = [v4 dk_numberFromRequiredKey:@"minimumSquareLength" lowerBound:&off_1000107F0 upperBound:&off_100010800 failed:&v14];
  [v9 doubleValue];
  [(DisplayPatternToolInputs *)self setMinimumSquareLength:?];

  -[DisplayPatternToolInputs setRandomizeImageOrder:](self, "setRandomizeImageOrder:", [v4 dk_BOOLFromRequiredKey:@"randomizeImageOrder" failed:&v14]);
  -[DisplayPatternToolInputs setBrightnessAdjustable:](self, "setBrightnessAdjustable:", [v4 dk_BOOLFromKey:@"brightnessAdjustable" defaultValue:0 failed:&v14]);
  -[DisplayPatternToolInputs setResetBrightnessOnChange:](self, "setResetBrightnessOnChange:", [v4 dk_BOOLFromKey:@"resetBrightnessOnChange" defaultValue:0 failed:&v14]);
  -[DisplayPatternToolInputs setDisableAmbientLightAdaptation:](self, "setDisableAmbientLightAdaptation:", [v4 dk_BOOLFromKey:@"disableAmbientLightAdaptation" defaultValue:0 failed:&v14]);
  v10 = v14;

  return (v10 & 1) == 0;
}

@end