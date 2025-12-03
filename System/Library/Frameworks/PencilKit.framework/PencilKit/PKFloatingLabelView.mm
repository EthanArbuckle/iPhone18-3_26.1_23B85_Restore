@interface PKFloatingLabelView
+ (PKFloatingLabelView)floatingLabelViewWithAttributedString:(uint64_t)string font:(void *)font location:(void *)location traitCollection:(void *)collection;
+ (id)attributedStringFromString:(void *)string font:;
+ (id)defaultFloatingLabelFont;
+ (id)floatingLabelViewWithString:(uint64_t)string font:(void *)font location:(void *)location traitCollection:(void *)collection;
@end

@implementation PKFloatingLabelView

+ (id)defaultFloatingLabelFont
{
  objc_opt_self();
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v1 = MEMORY[0x1E69DB878];
  fontDescriptor = [v0 fontDescriptor];
  v3 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  [v0 pointSize];
  v4 = [v1 fontWithDescriptor:v3 size:?];

  return v4;
}

+ (id)attributedStringFromString:(void *)string font:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  stringCopy = string;
  objc_opt_self();
  if ([v4 length])
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = *MEMORY[0x1E69DB650];
    v12[0] = *MEMORY[0x1E69DB648];
    v12[1] = v7;
    v13[0] = stringCopy;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13[1] = secondaryLabelColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v6 initWithString:v4 attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)floatingLabelViewWithString:(uint64_t)string font:(void *)font location:(void *)location traitCollection:(void *)collection
{
  fontCopy = font;
  locationCopy = location;
  collectionCopy = collection;
  v13 = objc_opt_self();
  if (!locationCopy)
  {
    locationCopy = +[PKFloatingLabelView defaultFloatingLabelFont];
  }

  v14 = [(PKFloatingLabelView *)v13 attributedStringFromString:fontCopy font:locationCopy];
  collectionCopy = [(PKFloatingLabelView *)self floatingLabelViewWithAttributedString:a2 font:v13 location:v14 traitCollection:locationCopy, collectionCopy];

  return collectionCopy;
}

+ (PKFloatingLabelView)floatingLabelViewWithAttributedString:(uint64_t)string font:(void *)font location:(void *)location traitCollection:(void *)collection
{
  collectionCopy = collection;
  locationCopy = location;
  fontCopy = font;
  objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  string = [fontCopy string];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v15 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v16 = [v15 count];

  [v12 setNumberOfLines:v16];
  [v12 setAttributedText:fontCopy];

  v51 = *(MEMORY[0x1E695F060] + 8);
  v52 = *MEMORY[0x1E695F060];
  [v12 sizeThatFits:?];
  v18 = v17;
  v20 = v19;
  [locationCopy pointSize];
  v22 = fmax((v21 + 16.0) * 0.5, 16.0);
  [locationCopy descender];
  v24 = v23;

  v25 = collectionCopy;
  v26 = v12;
  objc_opt_self();
  v27 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v28 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v27];
  [v28 _setContinuousCornerRadius:v22];
  [v28 setClipsToBounds:1];
  v29 = objc_alloc_init(PKFloatingLabelView);
  [(PKFloatingLabelView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
  cGColor = [systemGray5Color CGColor];
  layer = [(PKFloatingLabelView *)v29 layer];
  [layer setBorderColor:cGColor];

  [v25 displayScale];
  v34 = 1.0 / fmax(v33, 1.0);
  layer2 = [(PKFloatingLabelView *)v29 layer];
  [layer2 setBorderWidth:v34];

  [(PKFloatingLabelView *)v29 _setContinuousCornerRadius:v22];
  v55.origin.x = self - v18 * 0.5;
  v55.origin.y = a2 - v20 * 0.5;
  v55.size.width = v18;
  v55.size.height = v20;
  v56 = CGRectInset(v55, -16.0, 0.0);
  v36 = v56.size.height + 16.0;
  v37 = -(v56.size.height + 16.0);
  if (v56.origin.y <= v36)
  {
    v37 = v36;
  }

  [(PKFloatingLabelView *)v29 setFrame:v56.origin.x, v56.origin.y + v37, v56.size.width, v36];
  [v26 setFrame:{16.0, v36 - (v20 + 12.0 + v24), v18, v20}];
  [(PKFloatingLabelView *)v29 bounds];
  [v28 setFrame:?];
  [(PKFloatingLabelView *)v29 addSubview:v28];
  [(PKFloatingLabelView *)v29 addSubview:v26];

  userInterfaceStyle = [v25 userInterfaceStyle];
  if (userInterfaceStyle != 2)
  {
    v39 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    cGColor2 = [v39 CGColor];
    layer3 = [(PKFloatingLabelView *)v29 layer];
    [layer3 setShadowColor:cGColor2];

    layer4 = [(PKFloatingLabelView *)v29 layer];
    [layer4 setShadowRadius:20.0];

    layer5 = [(PKFloatingLabelView *)v29 layer];
    LODWORD(v44) = 1041865114;
    [layer5 setShadowOpacity:v44];

    layer6 = [(PKFloatingLabelView *)v29 layer];
    [layer6 setShadowOffset:{v52, v51}];

    v46 = MEMORY[0x1E69DC728];
    [(PKFloatingLabelView *)v29 bounds];
    v47 = [v46 bezierPathWithRoundedRect:? cornerRadius:?];
    cGPath = [v47 CGPath];
    layer7 = [(PKFloatingLabelView *)v29 layer];
    [layer7 setShadowPath:cGPath];
  }

  return v29;
}

@end