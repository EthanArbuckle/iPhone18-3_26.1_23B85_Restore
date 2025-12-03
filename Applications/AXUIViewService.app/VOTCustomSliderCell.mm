@interface VOTCustomSliderCell
- (id)accessibilityValue;
- (void)accessibilityIncrementOrDecrement:(BOOL)decrement;
@end

@implementation VOTCustomSliderCell

- (id)accessibilityValue
{
  specifier = [(VOTCustomSliderCell *)self specifier];
  v3 = [specifier propertyForKey:@"VOSSettingsItem"];

  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [v4 valueForSettingsItem:v3];

  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 formattedValue:v5 withItem:v3];

  return v7;
}

- (void)accessibilityIncrementOrDecrement:(BOOL)decrement
{
  decrementCopy = decrement;
  specifier = [(VOTCustomSliderCell *)self specifier];
  v6 = [specifier propertyForKey:@"VOSSettingsItem"];

  control = [(VOTCustomSliderCell *)self control];
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
        if (decrementCopy)
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

    control2 = [(VOTCustomSliderCell *)self control];
    [control2 value];
    v14 = -0.05;
    if (decrementCopy)
    {
      v14 = 0.05;
    }

    v15 = (v13 + v14);
    [control2 minimumValue];
    v17 = v16;
    [control2 maximumValue];
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
    [control2 setValue:0 animated:v18];
    v24 = +[VOSSettingsHelper sharedInstance];
    *&v25 = v23;
    v26 = [NSNumber numberWithFloat:v25];
    [v24 setValue:v26 forSettingsItem:v6];
  }

LABEL_19:
}

@end