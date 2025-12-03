@interface ButtonSwitchInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializePredicates:(id)predicates;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
@end

@implementation ButtonSwitchInputs

- (BOOL)validateAndInitializePredicates:(id)predicates
{
  predicatesCopy = predicates;
  v26 = 0;
  [(ButtonSwitchInputs *)self setPredicates:predicatesCopy];
  v5 = [NSSet setWithObjects:@"Button", @"TouchButton", @"Switch", 0];
  v6 = [predicatesCopy dk_stringFromRequiredKey:@"type" inSet:v5 failed:&v26];
  [(ButtonSwitchInputs *)self setType:v6];

  v7 = +[NSSet set];
  type = [(ButtonSwitchInputs *)self type];
  v9 = [type isEqualToString:@"Button"];

  if (v9)
  {
    [NSSet setWithObjects:@"Home", @"Sleep", @"VolumeIncrement", @"VolumeDecrement", @"DigitalCrown", @"Side", @"App", @"RingerButton", 0];
    v15 = LABEL_8:;

    v7 = v15;
    goto LABEL_9;
  }

  type2 = [(ButtonSwitchInputs *)self type];
  v11 = [type2 isEqualToString:@"TouchButton"];

  if (v11)
  {
    v12 = DAIdentifierCamera;
LABEL_7:
    [NSSet setWithObjects:*v12, 0, v19, v20, v21, v22, v23, v24, v25];
    goto LABEL_8;
  }

  type3 = [(ButtonSwitchInputs *)self type];
  v14 = [type3 isEqualToString:@"Switch"];

  if (v14)
  {
    v12 = DAIdentifierRingerSwitch;
    goto LABEL_7;
  }

LABEL_9:
  v16 = [predicatesCopy dk_stringFromRequiredKey:@"identifier" inSet:v7 failed:&v26];
  [(ButtonSwitchInputs *)self setIdentifier:v16];

  v17 = v26;
  return (v17 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  specificationsCopy = specifications;
  [(ButtonSwitchInputs *)self setSpecifications:specificationsCopy];
  v5 = [[DAButtonSwitchSpecification alloc] initWithDictionary:specificationsCopy];

  [(ButtonSwitchInputs *)self setButtonSwitchSpecification:v5];
  buttonSwitchSpecification = [(ButtonSwitchInputs *)self buttonSwitchSpecification];
  LOBYTE(self) = buttonSwitchSpecification != 0;

  return self;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  [(ButtonSwitchInputs *)self setParameters:parametersCopy];
  type = [(ButtonSwitchInputs *)self type];
  v6 = [type isEqualToString:@"Button"];

  if (v6)
  {
    v7 = [[DAButtonParameters alloc] initWithDictionary:parametersCopy];
    [(ButtonSwitchInputs *)self setButtonParameters:v7];

    buttonParameters = [(ButtonSwitchInputs *)self buttonParameters];
  }

  else
  {
    type2 = [(ButtonSwitchInputs *)self type];
    v10 = [type2 isEqualToString:@"TouchButton"];

    if (v10)
    {
      v11 = [[DATouchButtonParameters alloc] initWithDictionary:parametersCopy];
      [(ButtonSwitchInputs *)self setTouchButtonParameters:v11];

      buttonParameters = [(ButtonSwitchInputs *)self touchButtonParameters];
    }

    else
    {
      type3 = [(ButtonSwitchInputs *)self type];
      v13 = [type3 isEqualToString:@"Switch"];

      if (!v13)
      {
        v15 = 1;
        goto LABEL_8;
      }

      v14 = [[DASwitchParameters alloc] initWithDictionary:parametersCopy];
      [(ButtonSwitchInputs *)self setSwitchParameters:v14];

      buttonParameters = [(ButtonSwitchInputs *)self switchParameters];
    }
  }

  v15 = buttonParameters != 0;

LABEL_8:
  return v15;
}

@end