@interface SFDismissButton
+ (SFDismissButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4;
+ (id)_imageForDismissButtonStyle:(void *)a3 compatibleWithTraitCollection:;
+ (id)accessibilityLabelWithStyle:(uint64_t)a1;
+ (id)titleForDismissButtonStyle:(uint64_t)a1;
- (SFDismissButton)init;
- (uint64_t)_updateButtonStyle;
- (uint64_t)setStyle:(uint64_t)result;
- (uint64_t)style;
- (void)setPreferredTraitCollection:(id *)a1;
@end

@implementation SFDismissButton

- (SFDismissButton)init
{
  v9.receiver = self;
  v9.super_class = SFDismissButton;
  v3 = [-[SFDismissButton class](&v9 class)];

  if (v3)
  {
    v3->_style = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v5 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] labelFontSize];
    v6 = [v5 systemFontOfSize:?];
    v7 = [(SFDismissButton *)v3 titleLabel];
    [v7 setFont:v6];

    [(SFDismissButton *)v3 _updateButtonStyle];
    v8 = v3;
  }

  return v3;
}

+ (id)_imageForDismissButtonStyle:(void *)a3 compatibleWithTraitCollection:
{
  v5 = a3;
  objc_opt_self();
  if (a2 <= 2)
  {
    a1 = [MEMORY[0x1E69DCAB8] systemImageNamed:off_1E8496858[a2] compatibleWithTraitCollection:v5];
  }

  return a1;
}

+ (id)accessibilityLabelWithStyle:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (a2 <= 2)
  {
    v3 = _WBSLocalizedString();
  }

  return v3;
}

+ (id)titleForDismissButtonStyle:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (a2 <= 2)
  {
    v3 = _WBSLocalizedString();
  }

  return v3;
}

- (uint64_t)_updateButtonStyle
{
  if (result)
  {
    v1 = result;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v2 = [v1 configuration];
      v3 = [v2 copy];

      [SFDismissButton _imageForDismissButtonStyle:*(v1 + 752) compatibleWithTraitCollection:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_19() setImage:?];

      [v1 setConfiguration:v3];
      v4 = [SFDismissButton accessibilityLabelWithStyle:?];
      [v1 setAccessibilityLabel:v4];
    }

    else
    {
      v3 = [SFDismissButton titleForDismissButtonStyle:?];
      [v1 setTitle:v3 forState:0];
    }

    return [v1 sizeToFit];
  }

  return result;
}

+ (SFDismissButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [SFDismissButton _imageForDismissButtonStyle:0 compatibleWithTraitCollection:?];
  [v7 setImage:v8];

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___SFDismissButton;
  v9 = objc_msgSendSuper2(&v11, sel_buttonWithConfiguration_primaryAction_, v7, v6);

  [SFDismissButton accessibilityLabelWithStyle:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_19() setAccessibilityIdentifier:?];

  if (v9 && v9[93] != 1)
  {
    v9[93] = 1;
    [(SFDismissButton *)v9 _updateButtonStyle];
  }

  return v9;
}

- (uint64_t)setStyle:(uint64_t)result
{
  if (result)
  {
    if (*(result + 744) != a2)
    {
      *(result + 744) = a2;
      return [(SFDismissButton *)result _updateButtonStyle];
    }
  }

  return result;
}

- (void)setPreferredTraitCollection:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[94];
    if (v5 != v4)
    {
      v11 = v4;
      v6 = [v5 isEqual:v4];
      v4 = v11;
      if ((v6 & 1) == 0)
      {
        objc_storeStrong(a1 + 94, a2);
        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          [(SFDismissButton *)a1 _updateButtonStyle];
        }

        else
        {
          v7 = [MEMORY[0x1E69DCA40] defaultMetrics];
          v8 = MEMORY[0x1E69DB878];
          [MEMORY[0x1E69DB878] labelFontSize];
          [v8 systemFontOfSize:?];
          objc_claimAutoreleasedReturnValue();
          v9 = [OUTLINED_FUNCTION_19() scaledFontForFont:? compatibleWithTraitCollection:?];
          v10 = [a1 titleLabel];
          [v10 setFont:v9];
        }

        [a1 sizeToFit];
        v4 = v11;
      }
    }
  }
}

- (uint64_t)style
{
  if (result)
  {
    return *(result + 744);
  }

  return result;
}

@end