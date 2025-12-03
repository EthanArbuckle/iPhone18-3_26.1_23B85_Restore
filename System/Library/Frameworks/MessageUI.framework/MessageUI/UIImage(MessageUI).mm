@interface UIImage(MessageUI)
+ (double)mf_scaledImageLayoutValue:()MessageUI forView:;
+ (id)_mf_symbolConfigurationForView:()MessageUI imageSymbolType:;
+ (id)_mf_systemImageNamed:()MessageUI textStyle:scale:weight:imageSymbolType:traits:maximumContentSizeCategory:;
+ (id)mf_assistantBarSystemImageNamed:()MessageUI;
+ (id)mf_imageWithColor:()MessageUI size:;
+ (id)mf_imageWithImage:()MessageUI scaledToSize:;
+ (id)mf_largeContentSizeImageNamed:()MessageUI;
+ (id)mf_symbolConfigurationForImageSymbolType:()MessageUI textStyle:scale:weight:traits:maximumContentSizeCategory:;
+ (id)mf_symbolImageCapAtContentSizeCategoryForView:()MessageUI;
+ (id)mf_symbolImageFontTextStyleForView:()MessageUI;
+ (id)mf_systemImageNamed:()MessageUI forView:;
+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:;
+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:weight:;
+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:weight:maximumContentSizeCategory:;
+ (uint64_t)mf_imageSymbolTypeForView:()MessageUI;
+ (uint64_t)mf_symbolConfigurationForView:()MessageUI;
+ (uint64_t)mf_symbolImageScaleForView:()MessageUI;
+ (uint64_t)mf_symbolImageWeightForView:()MessageUI;
+ (uint64_t)mf_symbolicTraitsForView:()MessageUI;
@end

@implementation UIImage(MessageUI)

+ (id)mf_imageWithColor:()MessageUI size:
{
  v7 = a5;
  v8 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{self, a2}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__UIImage_MessageUI__mf_imageWithColor_size___block_invoke;
  v12[3] = &unk_1E8070A18;
  v9 = v7;
  v13 = v9;
  selfCopy = self;
  v15 = a2;
  v10 = [v8 imageWithActions:v12];

  return v10;
}

+ (uint64_t)mf_symbolImageScaleForView:()MessageUI
{
  result = 2;
  if (a3 <= 0x19)
  {
    if (((1 << a3) & 0x34A808D) != 0)
    {
      return 3;
    }

    else if (((1 << a3) & 0x102600) != 0)
    {
      return 1;
    }

    else if (a3 == 21)
    {
      if (_UISolariumEnabled())
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

+ (id)mf_symbolImageFontTextStyleForView:()MessageUI
{
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = MEMORY[0x1E69DDDB8];
  if (a3 <= 12)
  {
    if (a3 >= 2)
    {
      if (a3 != 11)
      {
        if (a3 != 12)
        {
          goto LABEL_15;
        }

        v5 = MEMORY[0x1E69DDD08];
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_14:
    v6 = *v5;

    v4 = v6;
    goto LABEL_15;
  }

  if (a3 > 19)
  {
    if (a3 != 20)
    {
      if (a3 != 21)
      {
        goto LABEL_15;
      }

      v5 = MEMORY[0x1E69DDD28];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a3 == 13)
  {
LABEL_13:
    v5 = MEMORY[0x1E69DDD80];
    goto LABEL_14;
  }

  if (a3 == 15)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

+ (uint64_t)mf_symbolImageWeightForView:()MessageUI
{
  v3 = 9;
  if (((1 << a3) & 0x800007) == 0)
  {
    v3 = 0;
  }

  if (a3 <= 0x17)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)mf_symbolicTraitsForView:()MessageUI
{
  v4 = [self mf_symbolImageCapAtContentSizeCategoryForView:?];

  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v7 = *MEMORY[0x1E69DDC90];

  if (v4 != v7 && IsAccessibilityCategory)
  {
    return 0;
  }

  if (((1 << a3) & 0x800600) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (a3 <= 0x17)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

+ (id)mf_symbolImageCapAtContentSizeCategoryForView:()MessageUI
{
  v4 = *MEMORY[0x1E69DDC90];
  v5 = a3 - 12;
  if (a3 - 12) <= 7 && ((0x93u >> v5))
  {
    v6 = **(&unk_1E8070A38 + v5);

    v4 = v6;
  }

  return v4;
}

+ (uint64_t)mf_imageSymbolTypeForView:()MessageUI
{
  if ((a3 - 12) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_1BE985A98[a3 - 12];
  }
}

+ (id)mf_systemImageNamed:()MessageUI forView:
{
  v5 = a3;
  v6 = [MEMORY[0x1E69DCAB8] mf_symbolImageFontTextStyleForView:a4];
  v7 = [MEMORY[0x1E69DCAB8] mf_symbolImageScaleForView:a4];
  v8 = [MEMORY[0x1E69DCAB8] mf_symbolImageWeightForView:a4];
  v9 = [MEMORY[0x1E69DCAB8] mf_imageSymbolTypeForView:a4];
  v10 = [MEMORY[0x1E69DCAB8] mf_symbolicTraitsForView:a4];
  v11 = [MEMORY[0x1E69DCAB8] mf_symbolImageCapAtContentSizeCategoryForView:a4];
  v12 = [MEMORY[0x1E69DCAB8] _mf_systemImageNamed:v5 textStyle:v6 scale:v7 weight:v8 imageSymbolType:v9 traits:v10 maximumContentSizeCategory:v11];

  return v12;
}

+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:
{
  v5 = [self mf_systemImageNamed:a3 textStyle:a4 scale:a5 weight:0];

  return v5;
}

+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:weight:
{
  v6 = [self mf_systemImageNamed:a3 textStyle:a4 scale:a5 weight:a6 maximumContentSizeCategory:*MEMORY[0x1E69DDC90]];

  return v6;
}

+ (id)mf_systemImageNamed:()MessageUI textStyle:scale:weight:maximumContentSizeCategory:
{
  v7 = [self _mf_systemImageNamed:a3 textStyle:a4 scale:a5 weight:a6 imageSymbolType:2 traits:0 maximumContentSizeCategory:a7];

  return v7;
}

+ (id)_mf_systemImageNamed:()MessageUI textStyle:scale:weight:imageSymbolType:traits:maximumContentSizeCategory:
{
  v15 = a3;
  v16 = [self mf_symbolConfigurationForImageSymbolType:a7 textStyle:a4 scale:a5 weight:a6 traits:a8 maximumContentSizeCategory:a9];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v15 withConfiguration:v16];

  return v17;
}

+ (id)mf_assistantBarSystemImageNamed:()MessageUI
{
  v3 = [MEMORY[0x1E69DCAB8] _mf_systemImageNamed:a3 textStyle:*MEMORY[0x1E69DDCF8] scale:3 weight:0 imageSymbolType:1 traits:0 maximumContentSizeCategory:*MEMORY[0x1E69DDC90]];

  return v3;
}

+ (id)mf_largeContentSizeImageNamed:()MessageUI
{
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:?];
  [v0 size];
  if (v1 > 0.0 && v2 > 0.0)
  {
    if (v1 >= v2)
    {
      if (v1 <= v2)
      {
        v3 = 75.0;
        v4 = 75.0;
      }

      else
      {
        v4 = 75.0;
        v3 = v2 * 75.0 / v1;
      }
    }

    else
    {
      v3 = 75.0;
      v4 = v1 * 75.0 / v2;
    }

    v5 = [v0 imageByPreparingThumbnailOfSize:{v4, v3}];

    v0 = v5;
  }

  return v0;
}

+ (uint64_t)mf_symbolConfigurationForView:()MessageUI
{
  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E69DCAB8] mf_imageSymbolTypeForView:?];

  return [v4 _mf_symbolConfigurationForView:a3 imageSymbolType:v5];
}

+ (id)_mf_symbolConfigurationForView:()MessageUI imageSymbolType:
{
  v7 = [MEMORY[0x1E69DCAB8] mf_symbolImageFontTextStyleForView:?];
  v8 = [MEMORY[0x1E69DCAB8] mf_symbolImageScaleForView:a3];
  v9 = [MEMORY[0x1E69DCAB8] mf_symbolImageWeightForView:a3];
  v10 = [MEMORY[0x1E69DCAB8] mf_symbolicTraitsForView:a3];
  v11 = [MEMORY[0x1E69DCAB8] mf_symbolImageCapAtContentSizeCategoryForView:a3];
  v12 = [self mf_symbolConfigurationForImageSymbolType:a4 textStyle:v7 scale:v8 weight:v9 traits:v10 maximumContentSizeCategory:v11];

  return v12;
}

+ (id)mf_symbolConfigurationForImageSymbolType:()MessageUI textStyle:scale:weight:traits:maximumContentSizeCategory:
{
  v13 = a4;
  v14 = a8;
  if (a6)
  {
    v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v13 scale:a5];
    goto LABEL_14;
  }

  if (!a7)
  {
    v17 = *MEMORY[0x1E69DDCF8];
    if (v13)
    {
      v17 = v13;
    }

    v16 = v17;

    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v19 = preferredContentSizeCategory;
    if (a3 == 1)
    {
      _defaultContentSizeCategory = [MEMORY[0x1E69DC668] _defaultContentSizeCategory];
    }

    else
    {
      if (a3 != 2)
      {
LABEL_12:
        CTFontDescriptorGetTextStyleSize();
        v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:0 weight:a5 scale:?];

        goto LABEL_13;
      }

      _defaultContentSizeCategory = MFUIContentSizeCategoryMin(preferredContentSizeCategory, v14);
    }

    v21 = _defaultContentSizeCategory;

    v19 = v21;
    goto LABEL_12;
  }

  v16 = MEMORY[0x1BFB4AF30](v13, a7);

  v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v16 scale:a5];
LABEL_13:
  v13 = v16;
LABEL_14:

  return v15;
}

+ (id)mf_imageWithImage:()MessageUI scaledToSize:
{
  v7 = a5;
  [v7 size];
  v9 = v8;
  [v7 size];
  v11 = a2 / v10;
  if (self / v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = self / v9;
  }

  [v7 size];
  v14 = v13;
  [v7 size];
  v16 = v15;
  v20.width = self;
  v20.height = a2;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  [v7 drawInRect:{(self - v12 * v14) * 0.5, (a2 - v12 * v16) * 0.5}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

+ (double)mf_scaledImageLayoutValue:()MessageUI forView:
{
  v6 = [MEMORY[0x1E69DCAB8] mf_symbolImageFontTextStyleForView:?];
  v7 = [MEMORY[0x1E69DCAB8] mf_imageSymbolTypeForView:a4];
  if (!v7)
  {
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
    [v9 _scaledValueForValue:self];
    self = v12;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v8 = MEMORY[0x1E69DB878];
    v9 = [MEMORY[0x1E69DCAB8] mf_symbolImageCapAtContentSizeCategoryForView:a4];
    v10 = [v8 _preferredFontForTextStyle:v6 maximumContentSizeCategory:v9];
    [v10 _scaledValueForValue:self];
    self = v11;

LABEL_5:
  }

  return self;
}

@end