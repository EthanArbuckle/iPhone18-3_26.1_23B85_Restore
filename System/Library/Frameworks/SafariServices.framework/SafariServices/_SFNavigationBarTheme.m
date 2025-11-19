@interface _SFNavigationBarTheme
- (_SFNavigationBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
- (id)URLAccessoryButtonTintColorForInputMode:(unint64_t)a3;
- (id)_colorForPlatterTextColor:(id)a3 regularColor:(id)a4 withPlatterAlpha:(double)a5;
@end

@implementation _SFNavigationBarTheme

- (_SFNavigationBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v8 = a4;
  v54.receiver = self;
  v54.super_class = _SFNavigationBarTheme;
  v9 = [(_SFBarTheme *)&v54 initWithBarTintStyle:a3 preferredBarTintColor:v8 controlsTintColor:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(_SFBarTheme *)v9 preferredBarTintColor];

    v12 = [(_SFBarTheme *)v10 backdropIsDark];
    v13 = _SFIsPrivateTintStyle();
    v14 = v12 | v13;
    v10->_platterOverrideUserInterfaceStyle = v13;
    v15 = 2;
    if (!v13)
    {
      v15 = 0;
    }

    v10->_platterTextFieldOverrideUserInterfaceStyle = v15;
    v10->_platterKeyboardOverrideAppearance = 2 * (a3 == 3);
    v10->_platterBackdropIsDark = v14 & 1;
    v16 = redTextColorForDarkBackground(v12);
    v17 = greenTextColorForDarkBackground(v12);
    if (v11)
    {
      v10->_backdropIsRed = colorIsSimilarToColor(v11, v16);
      v10->_backdropIsGreen = colorIsSimilarToColor(v11, v17);
      v18 = v11;
      v58 = 0.0;
      v59 = 0.0;
      v56 = 0.0;
      v57 = 0.0;
      v55 = 0.0;
      v19 = v17;
      if ([v18 getRed:&v59 green:&v58 blue:&v57 alpha:0] && objc_msgSend(v18, "getHue:saturation:brightness:alpha:", 0, &v56, &v55, 0))
      {
        v20 = v16;
        if (v55 < 0.17)
        {
          goto LABEL_19;
        }

        v22 = v58;
        v21 = v59;
        if (v58 >= v57)
        {
          v23 = v57;
        }

        else
        {
          v23 = v58;
        }

        if (v58 <= v57)
        {
          v22 = v57;
        }

        if (v59 >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v59;
        }

        if (v59 <= v22)
        {
          v21 = v22;
        }

        v25 = (v24 + v21) * 0.5;
        if (v25 <= 0.95)
        {
          v26 = v56 < 0.15 && v25 > 0.9;
        }

        else
        {
LABEL_19:
          v26 = 1;
        }
      }

      else
      {
        v20 = v16;
        v26 = 0;
      }

      v10->_backdropIsExtreme = v26;
      v16 = v20;
      v17 = v19;
    }

    v27 = textColorForDarkBackground(v12);
    textColor = v10->_textColor;
    v10->_textColor = v27;

    v29 = v16;
    if (v10->_backdropIsRed)
    {
      v29 = v10->_textColor;
    }

    objc_storeStrong(&v10->_warningTextColor, v29);
    v30 = v17;
    if (v10->_backdropIsGreen)
    {
      v30 = v10->_textColor;
    }

    objc_storeStrong(&v10->_secureTextColor, v30);
    v31 = annotationTextColorForDarkBackground(v12);
    annotationTextColor = v10->_annotationTextColor;
    v10->_annotationTextColor = v31;

    v33 = [(_SFBarTheme *)v10 controlsTintColor];
    v34 = v33;
    if (a3 == 4)
    {
      v35 = [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      v35 = v33;
    }

    v36 = v35;

    progressBarTintColor = v10->_progressBarTintColor;
    v10->_progressBarTintColor = v36;

    v38 = textColorForDarkBackground(v14 & 1);
    platterTextColor = v10->_platterTextColor;
    v10->_platterTextColor = v38;

    backdropIsRed = v10->_backdropIsRed;
    if (backdropIsRed)
    {
      v41 = v10->_platterTextColor;
    }

    else
    {
      v41 = redTextColorForDarkBackground(v14 & 1);
    }

    objc_storeStrong(&v10->_platterWarningTextColor, v41);
    if (!backdropIsRed)
    {
    }

    backdropIsGreen = v10->_backdropIsGreen;
    if (backdropIsGreen)
    {
      v43 = v10->_platterTextColor;
    }

    else
    {
      v43 = greenTextColorForDarkBackground(v14 & 1);
    }

    objc_storeStrong(&v10->_platterSecureTextColor, v43);
    if (!backdropIsGreen)
    {
    }

    v44 = annotationTextColorForDarkBackground(v14 & 1);
    platterAnnotationTextColor = v10->_platterAnnotationTextColor;
    v10->_platterAnnotationTextColor = v44;

    if (v14)
    {
      [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.501960784 blue:0.988235294 alpha:1.0];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v46 = ;
    platterSelectionColor = v10->_platterSelectionColor;
    v10->_platterSelectionColor = v46;

    if (v14)
    {
      v48 = 0.7;
      v49 = 1.0;
    }

    else
    {
      v48 = 0.38;
      v49 = 0.0;
    }

    v50 = [MEMORY[0x1E69DC888] colorWithWhite:v49 alpha:v48];
    platterPlaceholderTextColor = v10->_platterPlaceholderTextColor;
    v10->_platterPlaceholderTextColor = v50;

    v52 = v10;
  }

  else
  {
    v11 = v8;
  }

  return v10;
}

- (id)URLAccessoryButtonTintColorForInputMode:(unint64_t)a3
{
  v3 = self;
  if (a3)
  {
    if (a3 == 1)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        [(_SFBarTheme *)v3 toolbarControlsTintColor];
      }

      else
      {
        [(_SFBarTheme *)v3 controlsTintColor];
      }
      self = ;
    }
  }

  else
  {
    self = self->_platterTextColor;
  }

  return self;
}

- (id)_colorForPlatterTextColor:(id)a3 regularColor:(id)a4 withPlatterAlpha:(double)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 == 1.0 || [v7 isEqual:v8])
  {
    v9 = v7;
LABEL_4:
    v10 = v9;
    goto LABEL_5;
  }

  if (a5 == 0.0)
  {
    v9 = v8;
    goto LABEL_4;
  }

  v12 = [v7 colorWithAlphaComponent:a5];
  v10 = [v8 _colorBlendedWithColor:v12];

LABEL_5:

  return v10;
}

@end