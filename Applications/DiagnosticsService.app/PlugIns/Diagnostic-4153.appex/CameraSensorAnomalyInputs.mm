@interface CameraSensorAnomalyInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializePredicates:(id)a3;
@end

@implementation CameraSensorAnomalyInputs

- (BOOL)validateAndInitializePredicates:(id)a3
{
  v9 = 0;
  if (a3)
  {
    v4 = a3;
    v5 = [NSSet setWithObjects:@"Front", @"Rear", @"RearTelephoto", @"RearSuperWide", @"RearSynced", 0];
    v6 = [v4 dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v9];

    [(CameraSensorAnomalyInputs *)self setIdentifier:v6];
    v7 = v9 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v15 = 0;
  if (a3)
  {
    v4 = a3;
    v5 = [v4 dk_stringFromRequiredKey:@"drawColor" maxLength:7 failed:&v15];
    v14 = 0;
    v6 = [UIColor colorWithHexValue:v5 error:&v14];
    [(CameraSensorAnomalyInputs *)self setDrawColor:v6];

    v7 = [(CameraSensorAnomalyInputs *)self drawColor];

    if (!v7)
    {
      v15 = 1;
    }

    v8 = [v4 dk_numberFromRequiredKey:@"minimumSquareLength" lowerBound:&off_100015068 upperBound:&off_100015078 failed:&v15];
    [v8 doubleValue];
    *&v9 = v9;
    [(CameraSensorAnomalyInputs *)self setMinimumSquareLength:v9];

    -[CameraSensorAnomalyInputs setEnableMaxBrightness:](self, "setEnableMaxBrightness:", [v4 dk_BOOLFromRequiredKey:@"enableMaxBrightness" failed:&v15]);
    -[CameraSensorAnomalyInputs setFlashModeOn:](self, "setFlashModeOn:", [v4 dk_BOOLFromRequiredKey:@"flashModeOn" failed:&v15]);
    v10 = [v4 dk_stringFromRequiredKey:@"viewfinderInstruction" maxLength:1000 failed:&v15];
    [(CameraSensorAnomalyInputs *)self setViewfinderInstruction:v10];

    v11 = [v4 dk_BOOLFromKey:@"disableAmbientLightAdaptation" defaultValue:0 failed:&v15];
    [(CameraSensorAnomalyInputs *)self setDisableAmbientLightAdaptation:v11];
    v12 = v15 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

@end