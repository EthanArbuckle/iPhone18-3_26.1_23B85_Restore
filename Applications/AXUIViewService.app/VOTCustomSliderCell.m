@interface VOTCustomSliderCell
- (id)accessibilityValue;
- (void)accessibilityIncrementOrDecrement:(BOOL)a3;
@end

@implementation VOTCustomSliderCell

- (id)accessibilityValue
{
  v2 = [(VOTCustomSliderCell *)self specifier];
  v3 = [v2 propertyForKey:@"VOSSettingsItem"];

  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v4 valueForSettingsItem:v3];

  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 formattedValue:v5 withItem:v3];

  return v7;
}

- (void)accessibilityIncrementOrDecrement:(BOOL)a3
{
  v3 = a3;
  v5 = [(VOTCustomSliderCell *)self specifier];
  v6 = [v5 propertyForKey:@"VOSSettingsItem"];

  v7 = [(VOTCustomSliderCell *)self control];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = +[VOSSettingsItem Volume];
    v10 = v9;
    if (v6 == v9)
    {
    }

    else
    {
      v11 = +[VOSSettingsItem DuckingAmount];

      if (v6 != v11)
      {
        if (v3)
        {
          [(VOTCustomSliderCell *)&v28 accessibilityIncrement:v27.receiver];
        }

        else
        {
          [(VOTCustomSliderCell *)&v27 accessibilityDecrement:self];
        }

        goto LABEL_19;
      }
    }

    v12 = [(VOTCustomSliderCell *)self control];
    [v12 value];
    v14 = -0.05;
    if (v3)
    {
      v14 = 0.05;
    }

    v15 = (v13 + v14);
    [v12 minimumValue];
    v17 = v16;
    [v12 maximumValue];
    v19 = (v15 * 100.0);
    v20 = 5 * (v19 / 5);
    if (v19 % 5 >= 3)
    {
      v21 = 5;
    }

    else
    {
      v21 = 0;
    }

    v22 = (v20 + v21) / 100.0;
    if (v22 <= v17)
    {
      v22 = v17;
    }

    if (v22 <= *&v18)
    {
      v23 = v22;
    }

    else
    {
      v23 = *&v18;
    }

    *&v18 = v23;
    [v12 setValue:0 animated:v18];
    v24 = +[VOSSettingsHelper sharedInstance];
    *&v25 = v23;
    v26 = [NSNumber numberWithFloat:v25];
    [v24 setValue:v26 forSettingsItem:v6];
  }

LABEL_19:
}

@end