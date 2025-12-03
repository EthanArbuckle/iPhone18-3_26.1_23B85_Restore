@interface CameraSensorAnomalyInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializePredicates:(id)predicates;
@end

@implementation CameraSensorAnomalyInputs

- (BOOL)validateAndInitializePredicates:(id)predicates
{
  v9 = 0;
  if (predicates)
  {
    predicatesCopy = predicates;
    v5 = [NSSet setWithObjects:@"Front", @"Rear", @"RearTelephoto", @"RearSuperWide", @"RearSynced", 0];
    v6 = [predicatesCopy dk_stringFromRequiredKey:@"identifier" inSet:v5 failed:&v9];

    [(CameraSensorAnomalyInputs *)self setIdentifier:v6];
    v7 = v9 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v15 = 0;
  if (parameters)
  {
    parametersCopy = parameters;
    v5 = [parametersCopy dk_stringFromRequiredKey:@"drawColor" maxLength:7 failed:&v15];
    v14 = 0;
    v6 = [UIColor colorWithHexValue:v5 error:&v14];
    [(CameraSensorAnomalyInputs *)self setDrawColor:v6];

    drawColor = [(CameraSensorAnomalyInputs *)self drawColor];

    if (!drawColor)
    {
      v15 = 1;
    }

    v8 = [parametersCopy dk_numberFromRequiredKey:@"minimumSquareLength" lowerBound:&off_100015068 upperBound:&off_100015078 failed:&v15];
    [v8 doubleValue];
    *&v9 = v9;
    [(CameraSensorAnomalyInputs *)self setMinimumSquareLength:v9];

    -[CameraSensorAnomalyInputs setEnableMaxBrightness:](self, "setEnableMaxBrightness:", [parametersCopy dk_BOOLFromRequiredKey:@"enableMaxBrightness" failed:&v15]);
    -[CameraSensorAnomalyInputs setFlashModeOn:](self, "setFlashModeOn:", [parametersCopy dk_BOOLFromRequiredKey:@"flashModeOn" failed:&v15]);
    v10 = [parametersCopy dk_stringFromRequiredKey:@"viewfinderInstruction" maxLength:1000 failed:&v15];
    [(CameraSensorAnomalyInputs *)self setViewfinderInstruction:v10];

    v11 = [parametersCopy dk_BOOLFromKey:@"disableAmbientLightAdaptation" defaultValue:0 failed:&v15];
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