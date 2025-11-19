@interface ButtonSwitchInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializePredicates:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
@end

@implementation ButtonSwitchInputs

- (BOOL)validateAndInitializePredicates:(id)a3
{
  v4 = a3;
  v26 = 0;
  [(ButtonSwitchInputs *)self setPredicates:v4];
  v5 = [NSSet setWithObjects:@"Button", @"TouchButton", @"Switch", 0];
  v6 = [v4 dk_stringFromRequiredKey:@"type" inSet:v5 failed:&v26];
  [(ButtonSwitchInputs *)self setType:v6];

  v7 = +[NSSet set];
  v8 = [(ButtonSwitchInputs *)self type];
  v9 = [v8 isEqualToString:@"Button"];

  if (v9)
  {
    [NSSet setWithObjects:@"Home", @"Sleep", @"VolumeIncrement", @"VolumeDecrement", @"DigitalCrown", @"Side", @"App", @"RingerButton", 0];
    v15 = LABEL_8:;

    v7 = v15;
    goto LABEL_9;
  }

  v10 = [(ButtonSwitchInputs *)self type];
  v11 = [v10 isEqualToString:@"TouchButton"];

  if (v11)
  {
    v12 = DAIdentifierCamera;
LABEL_7:
    [NSSet setWithObjects:*v12, 0, v19, v20, v21, v22, v23, v24, v25];
    goto LABEL_8;
  }

  v13 = [(ButtonSwitchInputs *)self type];
  v14 = [v13 isEqualToString:@"Switch"];

  if (v14)
  {
    v12 = DAIdentifierRingerSwitch;
    goto LABEL_7;
  }

LABEL_9:
  v16 = [v4 dk_stringFromRequiredKey:@"identifier" inSet:v7 failed:&v26];
  [(ButtonSwitchInputs *)self setIdentifier:v16];

  v17 = v26;
  return (v17 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v4 = a3;
  [(ButtonSwitchInputs *)self setSpecifications:v4];
  v5 = [[DAButtonSwitchSpecification alloc] initWithDictionary:v4];

  [(ButtonSwitchInputs *)self setButtonSwitchSpecification:v5];
  v6 = [(ButtonSwitchInputs *)self buttonSwitchSpecification];
  LOBYTE(self) = v6 != 0;

  return self;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  [(ButtonSwitchInputs *)self setParameters:v4];
  v5 = [(ButtonSwitchInputs *)self type];
  v6 = [v5 isEqualToString:@"Button"];

  if (v6)
  {
    v7 = [[DAButtonParameters alloc] initWithDictionary:v4];
    [(ButtonSwitchInputs *)self setButtonParameters:v7];

    v8 = [(ButtonSwitchInputs *)self buttonParameters];
  }

  else
  {
    v9 = [(ButtonSwitchInputs *)self type];
    v10 = [v9 isEqualToString:@"TouchButton"];

    if (v10)
    {
      v11 = [[DATouchButtonParameters alloc] initWithDictionary:v4];
      [(ButtonSwitchInputs *)self setTouchButtonParameters:v11];

      v8 = [(ButtonSwitchInputs *)self touchButtonParameters];
    }

    else
    {
      v12 = [(ButtonSwitchInputs *)self type];
      v13 = [v12 isEqualToString:@"Switch"];

      if (!v13)
      {
        v15 = 1;
        goto LABEL_8;
      }

      v14 = [[DASwitchParameters alloc] initWithDictionary:v4];
      [(ButtonSwitchInputs *)self setSwitchParameters:v14];

      v8 = [(ButtonSwitchInputs *)self switchParameters];
    }
  }

  v15 = v8 != 0;

LABEL_8:
  return v15;
}

@end