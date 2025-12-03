@interface PasscodeContentViewBackground
- (void)_removePreviousBackgroundFromView:(id)view;
- (void)applyBackgroundForStyle:(id)style toView:(id)view;
@end

@implementation PasscodeContentViewBackground

- (void)applyBackgroundForStyle:(id)style toView:(id)view
{
  styleCopy = style;
  viewCopy = view;
  [(PasscodeContentViewBackground *)self _removePreviousBackgroundFromView:viewCopy];
  if ([styleCopy backgroundStyle] == 1)
  {
    v7 = 2020;
  }

  else
  {
    v8 = +[Passcode currentPasscode];
    if ([v8 isComplex])
    {
      v7 = 2029;
    }

    else
    {
      v7 = 2020;
    }
  }

  rawValue = [styleCopy rawValue];
  if (rawValue == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 2030;
  }

  backgroundStyle = [styleCopy backgroundStyle];
  if (backgroundStyle <= 1)
  {
    if (backgroundStyle)
    {
      if (backgroundStyle != 1)
      {
        goto LABEL_28;
      }

      v12 = [_UIBackdropViewSettings settingsForPrivateStyle:v10 graphicsQuality:100];
      [v12 setStackingLevel:_UIBackdropViewSettingsStackingLevelHigh];
      if (rawValue == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      [v12 setRenderingHint:v13];
      v14 = [[PasscodeBackdropView alloc] initWithSettings:v12];
      [(PasscodeBackdropView *)v14 setAutoresizingMask:18];
      [(PasscodeBackdropView *)v14 setConfiguration:1];
      [(PasscodeBackdropView *)v14 setAlpha:1.0];
      [viewCopy addSubview:v14];
      [viewCopy sendSubviewToBack:v14];
      v15 = +[UIColor clearColor];
      goto LABEL_24;
    }

    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:v10];
    combinedTintColor = [v12 combinedTintColor];
    v14 = combinedTintColor;
    v17 = 1.0;
LABEL_23:
    v15 = [(PasscodeBackdropView *)combinedTintColor colorWithAlphaComponent:v17];
LABEL_24:
    v18 = v15;
    [viewCopy setBackgroundColor:v15];

    goto LABEL_27;
  }

  if (backgroundStyle == 2)
  {
    v12 = [_UIBackdropViewSettings settingsForPrivateStyle:v10];
    combinedTintColor = [v12 combinedTintColor];
    v14 = combinedTintColor;
    v17 = 0.75;
    goto LABEL_23;
  }

  if (backgroundStyle != 3)
  {
    goto LABEL_28;
  }

  if (rawValue == 1)
  {
    [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1.0];
  }

  else
  {
    +[UIColor darkGrayColor];
  }
  v12 = ;
  [viewCopy setBackgroundColor:v12];
LABEL_27:

LABEL_28:
}

- (void)_removePreviousBackgroundFromView:(id)view
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviews = [view subviews];
  v4 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isMemberOfClass:objc_opt_class()])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v4 removeFromSuperview];
}

@end