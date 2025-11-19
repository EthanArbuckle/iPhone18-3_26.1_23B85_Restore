@interface CNMonogrammer
+ (id)_initialsForContact:(id)a3;
+ (id)descriptorForRequiredKeysIncludingImage:(BOOL)a3;
+ (int64_t)monogramTypeForContact:(id)a3;
- (CNMonogrammer)init;
- (CNMonogrammer)initWithStyle:(int64_t)a3 diameter:(double)a4;
- (NSArray)keysToFetch;
- (UIImage)knockoutMaskMonogram;
- (UIImage)questionMarkMonogram;
- (UIImage)silhouetteMonogram;
- (id)_copyMonogramWithImageData:(id)a3;
- (id)_copyMonogramWithInitials:(id)a3;
- (id)_copyMonogramWithKnockoutMask;
- (id)_copyMonogramWithSilhouette;
- (id)_initialsForFirstName:(id)a3 lastName:(id)a4;
- (id)monogramForContact:(id)a3;
- (id)monogramForContact:(id)a3 isContactImage:(BOOL *)a4;
- (id)monogramForContacts:(id)a3;
- (id)monogramForPersonWithFirstName:(id)a3 lastName:(id)a4;
- (void)_clearMonogramCache;
- (void)dealloc;
- (void)monogramsAsFlatImages;
- (void)monogramsForStark;
- (void)monogramsWithTint:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDiameter:(double)a3;
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextKnockout:(BOOL)a3;
@end

@implementation CNMonogrammer

- (id)_copyMonogramWithSilhouette
{
  diameter = self->_diameter;
  v13.width = diameter;
  v13.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v13, 0, self->_scale);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  v5 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  [(UIColor *)self->_backgroundColor set];
  [v5 setLineWidth:self->_innerBorderWidth];
  [v5 addClip];
  [v5 fill];
  v6 = [MEMORY[0x1E69DCAB8] cnui_imageNamed:self->_silhouetteImageName];
  v7 = v6;
  if (self->_tintColor)
  {
    v8 = [v6 imageWithTintColor:?];

    v7 = v8;
  }

  if (self->_textKnockout)
  {
    v9 = 23;
  }

  else
  {
    v9 = 0;
  }

  [v7 drawInRect:v9 blendMode:0.0 alpha:{0.0, diameter, diameter, 1.0}];
  v10 = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(v10, kCGBlendModeCopy);
  [v5 stroke];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (UIImage)silhouetteMonogram
{
  silhouetteMonogram = self->_silhouetteMonogram;
  if (!silhouetteMonogram)
  {
    v4 = [(CNMonogrammer *)self _copyMonogramWithSilhouette];
    v5 = self->_silhouetteMonogram;
    self->_silhouetteMonogram = v4;

    silhouetteMonogram = self->_silhouetteMonogram;
  }

  return silhouetteMonogram;
}

- (NSArray)keysToFetch
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C240];
  v6[0] = *MEMORY[0x1E695C400];
  v6[1] = v2;
  v3 = *MEMORY[0x1E695C410];
  v6[2] = *MEMORY[0x1E695C230];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

- (id)_copyMonogramWithKnockoutMask
{
  diameter = self->_diameter;
  v7.width = diameter;
  v7.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v7, 0, self->_scale);
  v3 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  [v3 addClip];
  v4 = +[CNUIColorRepository monogrammerBackgroundFlatDarkColor];
  [v4 set];

  [v3 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

- (id)_copyMonogramWithInitials:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  diameter = self->_diameter;
  scale = self->_scale;
  v6 = a3;
  v32.width = diameter;
  v32.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v32, 0, scale);
  v7 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  [v7 addClip];
  [(UIColor *)self->_backgroundColor set];
  [v7 fill];
  v8 = objc_alloc(MEMORY[0x1E696AAB0]);
  v9 = *MEMORY[0x1E69DB648];
  v31[0] = self->_font;
  v10 = *MEMORY[0x1E69DB650];
  v29 = v9;
  v30 = v10;
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    tintColor = self->_textColor;
  }

  v31[1] = tintColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v29 count:2];
  v13 = [v8 initWithString:v6 attributes:v12];

  [v13 size];
  v28 = self->_scale;
  UIRectCenteredXInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UIFont *)self->_font capHeight:*&v28];
  v21 = (diameter - v20) * -0.5;
  [(UIFont *)self->_font pointSize];
  v23 = diameter - v22 + v21;
  CurrentContext = UIGraphicsGetCurrentContext();
  if (self->_textKnockout)
  {
    v25 = kCGBlendModeClear;
  }

  else
  {
    v25 = kCGBlendModeNormal;
  }

  CGContextSetBlendMode(CurrentContext, v25);
  [v13 drawInRect:{v15, v23, v17, v19}];
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

- (id)_copyMonogramWithImageData:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  diameter = self->_diameter;
  scale = self->_scale;
  v5 = a3;
  v10.width = diameter;
  v10.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v10, 0, scale);
  v6 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  [v6 addClip];
  v7 = [MEMORY[0x1E69DCAB8] imageWithData:v5];

  [v7 drawInRect:{0.0, 0.0, diameter, diameter}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

- (id)_initialsForFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!(v5 | v6) || !_isRomanName(v5) || !_isRomanName(v6))
  {
    goto LABEL_12;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 length];
  if (v8)
  {
    v9 = [v5 substringWithRange:{0, 1}];
  }

  else
  {
    v9 = &stru_1F0CE7398;
  }

  if (![v6 length])
  {
    v11 = [v7 stringWithFormat:@"%@%@", v9, &stru_1F0CE7398];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = [v6 substringWithRange:{0, 1}];
  v11 = [v7 stringWithFormat:@"%@%@", v9, v10];

  if (v8)
  {
LABEL_9:
  }

LABEL_10:
  if ([v11 length])
  {
    goto LABEL_13;
  }

LABEL_12:
  v11 = 0;
LABEL_13:
  v12 = [v11 uppercaseString];

  return v12;
}

- (void)_clearMonogramCache
{
  silhouetteMonogram = self->_silhouetteMonogram;
  if (silhouetteMonogram)
  {
    self->_silhouetteMonogram = 0;
  }

  questionMarkMonogram = self->_questionMarkMonogram;
  if (questionMarkMonogram)
  {
    self->_questionMarkMonogram = 0;
  }

  knockoutMaskMonogram = self->_knockoutMaskMonogram;
  if (knockoutMaskMonogram)
  {
    self->_knockoutMaskMonogram = 0;
  }
}

- (UIImage)knockoutMaskMonogram
{
  knockoutMaskMonogram = self->_knockoutMaskMonogram;
  if (!knockoutMaskMonogram)
  {
    v4 = [(CNMonogrammer *)self _copyMonogramWithKnockoutMask];
    v5 = self->_knockoutMaskMonogram;
    self->_knockoutMaskMonogram = v4;

    knockoutMaskMonogram = self->_knockoutMaskMonogram;
  }

  return knockoutMaskMonogram;
}

- (UIImage)questionMarkMonogram
{
  questionMarkMonogram = self->_questionMarkMonogram;
  if (!questionMarkMonogram)
  {
    v4 = [(CNMonogrammer *)self _copyMonogramWithInitials:@"?"];
    v5 = self->_questionMarkMonogram;
    self->_questionMarkMonogram = v4;

    questionMarkMonogram = self->_questionMarkMonogram;
  }

  return questionMarkMonogram;
}

- (id)monogramForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [(CNMonogrammer *)self monogramForContact:v5];
LABEL_3:

    goto LABEL_11;
  }

  if ([v4 count] >= 2)
  {
    v7 = (self->_diameter + self->_diameter) / 3.0;
    subMonogrammer = self->_subMonogrammer;
    if (!subMonogrammer)
    {
      v9 = [[CNMonogrammer alloc] initWithStyle:self->_monogrammerStyle diameter:v7];
      v10 = self->_subMonogrammer;
      self->_subMonogrammer = v9;

      subMonogrammer = self->_subMonogrammer;
    }

    v11 = [v4 objectAtIndexedSubscript:0];
    v5 = [(CNMonogrammer *)subMonogrammer monogramForContact:v11];

    v12 = self->_subMonogrammer;
    v13 = [v4 objectAtIndexedSubscript:1];
    v14 = [(CNMonogrammer *)v12 monogramForContact:v13];

    if (v5 && v14)
    {
      diameter = self->_diameter;
      v16 = diameter - v7;
      v17 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, diameter, diameter}];
      v18 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{diameter - v7, diameter - v7, v7, v7}];
      v26.width = diameter;
      v26.height = diameter;
      UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
      v19 = [MEMORY[0x1E69DC888] clearColor];
      [v19 set];

      [v17 fill];
      [v5 drawInRect:0 blendMode:0.0 alpha:{0.0, v7, v7, 1.0}];
      v20 = round(self->_diameter / 12.0);
      v21 = [MEMORY[0x1E69DC888] clearColor];
      [v21 set];

      v22 = MEMORY[0x1E69DC728];
      v27.origin.x = v16;
      v27.origin.y = v16;
      v27.size.width = v7;
      v27.size.height = v7;
      v28 = CGRectInset(v27, v20 * -0.5, v20 * -0.5);
      v23 = [v22 bezierPathWithOvalInRect:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
      [v23 fillWithBlendMode:17 alpha:1.0];
      [v18 addClip];
      [v14 drawInRect:17 blendMode:v16 alpha:{v16, v7, v7, 1.0}];
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {

      v6 = 0;
    }

    goto LABEL_3;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)monogramForPersonWithFirstName:(id)a3 lastName:(id)a4
{
  v5 = [(CNMonogrammer *)self _initialsForFirstName:a3 lastName:a4];
  v6 = [(CNMonogrammer *)self _copyMonogramWithInitials:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(CNMonogrammer *)self silhouetteMonogram];
  }

  v8 = v7;

  return v8;
}

- (id)monogramForContact:(id)a3
{
  v5 = 0;
  v3 = [(CNMonogrammer *)self monogramForContact:a3 isContactImage:&v5];

  return v3;
}

- (id)monogramForContact:(id)a3 isContactImage:(BOOL *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_opt_class() descriptorForRequiredKeysIncludingImage:0];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v6 assertKeysAreAvailable:v8];

  if (a4)
  {
    *a4 = 0;
  }

  if (self->_diameter == 0.0)
  {
    v9 = 0;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    if ([v6 isKeyAvailable:*MEMORY[0x1E695C400]] && (objc_msgSend(v6, "thumbnailImageData"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) || objc_msgSend(v6, "isKeyAvailable:", *MEMORY[0x1E695C278]) && (objc_msgSend(v6, "imageData"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = [(CNMonogrammer *)self _copyMonogramWithImageData:v10];
      v9 = v12;
      if (a4)
      {
        *a4 = v12 != 0;
      }
    }

    else
    {
      v13 = [objc_opt_class() _initialsForContact:v6];
      v9 = [(CNMonogrammer *)self _copyMonogramWithInitials:v13];

      v11 = 0;
    }

    if (!v9)
    {
LABEL_14:
      v9 = [(CNMonogrammer *)self silhouetteMonogram];
    }
  }

  return v9;
}

- (void)setTextKnockout:(BOOL)a3
{
  if (self->_textKnockout != a3)
  {
    self->_textKnockout = a3;
    [(CNMonogrammer *)self _clearMonogramCache];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  p_textColor = &self->_textColor;
  if (self->_textColor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_textColor, a3);
    p_textColor = [(CNMonogrammer *)self _clearMonogramCache];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_textColor, v5);
}

- (void)setFont:(id)a3
{
  v5 = a3;
  p_font = &self->_font;
  if (self->_font != v5)
  {
    v7 = v5;
    objc_storeStrong(p_font, a3);
    p_font = [(CNMonogrammer *)self _clearMonogramCache];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_font, v5);
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  p_backgroundColor = &self->_backgroundColor;
  if (self->_backgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_backgroundColor, a3);
    p_backgroundColor = [(CNMonogrammer *)self _clearMonogramCache];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_backgroundColor, v5);
}

- (void)setDiameter:(double)a3
{
  if (self->_diameter != a3)
  {
    self->_diameter = a3;
    [(CNMonogrammer *)self _clearMonogramCache];
  }
}

- (void)monogramsForStark
{
  v4 = [MEMORY[0x1E69DCEB0] _carScreen];
  [v4 scale];
  self->_scale = v3;
}

- (void)monogramsWithTint:(id)a3
{
  v5 = a3;
  if (self->_monogrammerStyle <= 1uLL)
  {
    v6 = v5;
    objc_storeStrong(&self->_tintColor, a3);
    v5 = v6;
  }
}

- (void)monogramsAsFlatImages
{
  if ((self->_monogrammerStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = +[CNUIColorRepository monogrammerBackgroundFlatDarkColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v4;

    [(CNMonogrammer *)self _clearMonogramCache];
  }
}

- (void)dealloc
{
  [(CNMonogrammer *)self _clearMonogramCache];
  v3.receiver = self;
  v3.super_class = CNMonogrammer;
  [(CNMonogrammer *)&v3 dealloc];
}

- (CNMonogrammer)initWithStyle:(int64_t)a3 diameter:(double)a4
{
  v28.receiver = self;
  v28.super_class = CNMonogrammer;
  v6 = [(CNMonogrammer *)&v28 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_diameter = a4;
  v6->_innerBorderWidth = 1.0;
  tintColor = v6->_tintColor;
  v6->_tintColor = 0;

  v7->_scale = 0.0;
  if (a4 <= 14.0)
  {
    v11 = MEMORY[0x1E69DB878];
    v12 = *MEMORY[0x1E69DB978];
    v13 = 7.0;
LABEL_19:
    v9 = [v11 systemFontOfSize:v13 weight:v12];
    v10 = @"silhouette-S";
    goto LABEL_20;
  }

  if (a4 <= 20.0)
  {
    v11 = MEMORY[0x1E69DB878];
    v12 = *MEMORY[0x1E69DB978];
    v13 = 10.0;
    goto LABEL_19;
  }

  if (a4 <= 32.0)
  {
    v11 = MEMORY[0x1E69DB878];
    v12 = *MEMORY[0x1E69DB978];
    v13 = 14.0;
    goto LABEL_19;
  }

  if (a4 <= 45.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB978]];
    v10 = @"silhouette-M";
    goto LABEL_20;
  }

  if (a4 <= 60.0)
  {
    v26 = MEMORY[0x1E69DB878];
    v27 = 24.0;
LABEL_37:
    v9 = [v26 systemFontOfSize:v27];
    v10 = @"silhouette-L";
    goto LABEL_20;
  }

  if (a4 <= 76.0)
  {
    v26 = MEMORY[0x1E69DB878];
    v27 = 30.0;
    goto LABEL_37;
  }

  if (a4 <= 96.0)
  {
    v26 = MEMORY[0x1E69DB878];
    v27 = 38.0;
    goto LABEL_37;
  }

  if (a4 <= 118.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:48.0];
LABEL_40:
    v10 = @"silhouette-ATV-M";
    goto LABEL_20;
  }

  if (a4 <= 120.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:52.0 weight:*MEMORY[0x1E69DB988]];
    goto LABEL_40;
  }

  if (a4 <= 148.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:52.0];
    v10 = @"silhouette-ATV-L";
    goto LABEL_20;
  }

  if (a4 <= 178.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:76.0];
LABEL_44:
    v10 = @"silhouette-ATV-XL";
    goto LABEL_20;
  }

  if (a4 <= 180.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:76.0 weight:*MEMORY[0x1E69DB988]];
    goto LABEL_44;
  }

  if (a4 <= 250.0)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:87.0];
    v10 = @"silhouette-ATV-XXL";
  }

  else
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:109.0 weight:*MEMORY[0x1E69DB988]];
    v10 = @"silhouette-EDU-XL";
  }

LABEL_20:
  font = v7->_font;
  v7->_font = v9;

  silhouetteImageName = v7->_silhouetteImageName;
  v7->_silhouetteImageName = &v10->isa;

  v7->_monogrammerStyle = a3;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v20 = +[CNUIColorRepository monogrammerBackgroundLightColor];
    }

    else
    {
      if (a3 != 3)
      {
        return v7;
      }

      v20 = +[CNUIColorRepository monogrammerBackgroundDarkColor];
    }

    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = v20;

    v18 = [MEMORY[0x1E69DC888] clearColor];
LABEL_30:
    v19 = 1;
    goto LABEL_31;
  }

  if (!a3)
  {
    v21 = +[CNUIColorRepository monogrammerBackgroundWhiteColor];
    v22 = v7->_backgroundColor;
    v7->_backgroundColor = v21;

    v18 = +[CNUIColorRepository monogrammerBackTextWhiteColor];
    goto LABEL_30;
  }

  if (a3 == 1)
  {
    v16 = +[CNUIColorRepository monogrammerBackgroundGrayColor];
    v17 = v7->_backgroundColor;
    v7->_backgroundColor = v16;

    v18 = +[CNUIColorRepository monogrammerTextGrayColor];
    v19 = 0;
LABEL_31:
    textColor = v7->_textColor;
    v7->_textColor = v18;

    v7->_textKnockout = v19;
  }

  return v7;
}

- (CNMonogrammer)init
{
  v15.receiver = self;
  v15.super_class = CNMonogrammer;
  v2 = [(CNMonogrammer *)&v15 init];
  v7 = v2;
  if (v2)
  {
    v2->_diameter = 0.0;
    v8 = +[CNUIColorRepository monogrammerBackgroundStandardGrayColor];
    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = v8;

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    font = v7->_font;
    v7->_font = v10;

    v12 = +[CNUIColorRepository monogrammerTextStandardGrayColor];
    textColor = v7->_textColor;
    v7->_textColor = v12;

    v7->_textKnockout = 0;
  }

  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNMonogrammer.m", 91, 4, @"Please switch to initWithStyle:diameter: when creating ABMonogrammer objects", v3, v4, v5, v6, v15.receiver);
  return v7;
}

+ (id)_initialsForContact:(id)a3
{
  v3 = a3;
  if ([v3 contactType])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 givenName];
    v6 = [v3 familyName];
    if (v5 | v6 && _isRomanName(v5) && _isRomanName(v6))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v5 length];
      if (v8)
      {
        v9 = [v5 substringWithRange:{0, 1}];
      }

      else
      {
        v9 = &stru_1F0CE7398;
      }

      if ([v6 length])
      {
        v12 = [v6 substringWithRange:{0, 1}];
        v4 = [v7 stringWithFormat:@"%@%@", v9, v12];
      }

      else
      {
        v4 = [v7 stringWithFormat:@"%@%@", v9, &stru_1F0CE7398];
      }

      if (v8)
      {
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (![v4 length])
  {

    v4 = 0;
  }

  v10 = [v4 uppercaseString];

  return v10;
}

+ (int64_t)monogramTypeForContact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isKeyAvailable:*MEMORY[0x1E695C400]];
    if (v6)
    {
      v7 = [v5 thumbnailImageData];
      if (v7)
      {

LABEL_20:
        v10 = 2;
        goto LABEL_21;
      }
    }

    if ([v5 isKeyAvailable:*MEMORY[0x1E695C278]])
    {
      v8 = [v5 imageData];
      if (v8)
      {
        v9 = 1;
      }

      else if ([v5 isKeyAvailable:*MEMORY[0x1E695C270]])
      {
        v9 = [v5 imageDataAvailable];
      }

      else
      {
        v9 = 0;
      }

      if (v6)
      {
LABEL_19:
        if (v9)
        {
          goto LABEL_20;
        }

LABEL_14:
        v11 = [a1 _initialsForContact:v5];
        v10 = v11 != 0;

        goto LABEL_21;
      }
    }

    else if ([v5 isKeyAvailable:*MEMORY[0x1E695C270]])
    {
      v9 = [v5 imageDataAvailable];
      if (v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = 0;
      if (v6)
      {
        goto LABEL_19;
      }
    }

    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

+ (id)descriptorForRequiredKeysIncludingImage:(BOOL)a3
{
  if (a3)
  {
    if (descriptorForRequiredKeysIncludingImage__cn_once_token_1 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysIncludingImage__cn_once_token_1, &__block_literal_global_37509);
    }

    v3 = &descriptorForRequiredKeysIncludingImage__cn_once_object_1;
  }

  else
  {
    if (descriptorForRequiredKeysIncludingImage__cn_once_token_2 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysIncludingImage__cn_once_token_2, &__block_literal_global_4_37510);
    }

    v3 = &descriptorForRequiredKeysIncludingImage__cn_once_object_2;
  }

  v4 = *v3;

  return v4;
}

void __57__CNMonogrammer_descriptorForRequiredKeysIncludingImage___block_invoke_2()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = *MEMORY[0x1E695C230];
  v6[0] = *MEMORY[0x1E695C240];
  v6[1] = v1;
  v6[2] = *MEMORY[0x1E695C410];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMonogrammer descriptorForRequiredKeysIncludingImage:]_block_invoke_2"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeysIncludingImage__cn_once_object_2;
  descriptorForRequiredKeysIncludingImage__cn_once_object_2 = v4;
}

void __57__CNMonogrammer_descriptorForRequiredKeysIncludingImage___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = *MEMORY[0x1E695C240];
  v7[0] = *MEMORY[0x1E695C400];
  v7[1] = v1;
  v2 = *MEMORY[0x1E695C410];
  v7[2] = *MEMORY[0x1E695C230];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMonogrammer descriptorForRequiredKeysIncludingImage:]_block_invoke"];
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:v4];
  v6 = descriptorForRequiredKeysIncludingImage__cn_once_object_1;
  descriptorForRequiredKeysIncludingImage__cn_once_object_1 = v5;
}

@end