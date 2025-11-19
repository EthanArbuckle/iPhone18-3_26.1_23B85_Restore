@interface PKFloatingLabelView
+ (PKFloatingLabelView)floatingLabelViewWithAttributedString:(uint64_t)a3 font:(void *)a4 location:(void *)a5 traitCollection:(void *)a6;
+ (id)attributedStringFromString:(void *)a3 font:;
+ (id)defaultFloatingLabelFont;
+ (id)floatingLabelViewWithString:(uint64_t)a3 font:(void *)a4 location:(void *)a5 traitCollection:(void *)a6;
@end

@implementation PKFloatingLabelView

+ (id)defaultFloatingLabelFont
{
  objc_opt_self();
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v1 = MEMORY[0x1E69DB878];
  v2 = [v0 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  [v0 pointSize];
  v4 = [v1 fontWithDescriptor:v3 size:?];

  return v4;
}

+ (id)attributedStringFromString:(void *)a3 font:
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if ([v4 length])
  {
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = *MEMORY[0x1E69DB650];
    v12[0] = *MEMORY[0x1E69DB648];
    v12[1] = v7;
    v13[0] = v5;
    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v6 initWithString:v4 attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)floatingLabelViewWithString:(uint64_t)a3 font:(void *)a4 location:(void *)a5 traitCollection:(void *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_self();
  if (!v11)
  {
    v11 = +[PKFloatingLabelView defaultFloatingLabelFont];
  }

  v14 = [(PKFloatingLabelView *)v13 attributedStringFromString:v10 font:v11];
  v15 = [(PKFloatingLabelView *)a1 floatingLabelViewWithAttributedString:a2 font:v13 location:v14 traitCollection:v11, v12];

  return v15;
}

+ (PKFloatingLabelView)floatingLabelViewWithAttributedString:(uint64_t)a3 font:(void *)a4 location:(void *)a5 traitCollection:(void *)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  objc_opt_self();
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v13 = [v11 string];
  v14 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v15 = [v13 componentsSeparatedByCharactersInSet:v14];
  v16 = [v15 count];

  [v12 setNumberOfLines:v16];
  [v12 setAttributedText:v11];

  v51 = *(MEMORY[0x1E695F060] + 8);
  v52 = *MEMORY[0x1E695F060];
  [v12 sizeThatFits:?];
  v18 = v17;
  v20 = v19;
  [v10 pointSize];
  v22 = fmax((v21 + 16.0) * 0.5, 16.0);
  [v10 descender];
  v24 = v23;

  v25 = v9;
  v26 = v12;
  objc_opt_self();
  v27 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v28 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v27];
  [v28 _setContinuousCornerRadius:v22];
  [v28 setClipsToBounds:1];
  v29 = objc_alloc_init(PKFloatingLabelView);
  [(PKFloatingLabelView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x1E69DC888] systemGray5Color];
  v31 = [v30 CGColor];
  v32 = [(PKFloatingLabelView *)v29 layer];
  [v32 setBorderColor:v31];

  [v25 displayScale];
  v34 = 1.0 / fmax(v33, 1.0);
  v35 = [(PKFloatingLabelView *)v29 layer];
  [v35 setBorderWidth:v34];

  [(PKFloatingLabelView *)v29 _setContinuousCornerRadius:v22];
  v55.origin.x = a1 - v18 * 0.5;
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

  v38 = [v25 userInterfaceStyle];
  if (v38 != 2)
  {
    v39 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    v40 = [v39 CGColor];
    v41 = [(PKFloatingLabelView *)v29 layer];
    [v41 setShadowColor:v40];

    v42 = [(PKFloatingLabelView *)v29 layer];
    [v42 setShadowRadius:20.0];

    v43 = [(PKFloatingLabelView *)v29 layer];
    LODWORD(v44) = 1041865114;
    [v43 setShadowOpacity:v44];

    v45 = [(PKFloatingLabelView *)v29 layer];
    [v45 setShadowOffset:{v52, v51}];

    v46 = MEMORY[0x1E69DC728];
    [(PKFloatingLabelView *)v29 bounds];
    v47 = [v46 bezierPathWithRoundedRect:? cornerRadius:?];
    v48 = [v47 CGPath];
    v49 = [(PKFloatingLabelView *)v29 layer];
    [v49 setShadowPath:v48];
  }

  return v29;
}

@end