@interface UIView(HoverAdditions)
+ (id)pk_hoverAttributedStringForColor:()HoverAdditions;
+ (id)pk_hoverAttributedStringFromString:()HoverAdditions;
+ (id)pk_hoverLabelFont;
- (id)pk_hoverLabelAttributedString;
@end

@implementation UIView(HoverAdditions)

- (id)pk_hoverLabelAttributedString
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, &hoverLabelAttributedStringKey);
  if (!v2)
  {
    v3 = [a1 pk_hoverLabelString];
    if (v3)
    {
      v4 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v5 = [v4 boldSystemFontOfSize:?];
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = *MEMORY[0x1E69DB650];
      v11[0] = *MEMORY[0x1E69DB648];
      v11[1] = v7;
      v12[0] = v5;
      v8 = [MEMORY[0x1E69DC888] labelColor];
      v12[1] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      v2 = [v6 initWithString:v3 attributes:v9];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

+ (id)pk_hoverLabelFont
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v1 = MEMORY[0x1E69DB878];
  v2 = [v0 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  [v0 pointSize];
  v4 = [v1 fontWithDescriptor:v3 size:?];

  return v4;
}

+ (id)pk_hoverAttributedStringFromString:()HoverAdditions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11[0] = *MEMORY[0x1E69DB648];
    v6 = [a1 pk_hoverLabelFont];
    v12[0] = v6;
    v11[1] = *MEMORY[0x1E69DB650];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = [v5 initWithString:v4 attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)pk_hoverAttributedStringForColor:()HoverAdditions
{
  v37 = *MEMORY[0x1E69E9840];
  DKUColorGetRGBAComponents([a3 CGColor], &v35);
  LODWORD(v3) = vcvtd_n_s64_f64(*&v35, 8uLL);
  LODWORD(v4) = vcvtd_n_s64_f64(*(&v35 + 1), 8uLL);
  v27 = v4;
  LODWORD(v4) = vcvtd_n_s64_f64(v36, 8uLL);
  v29 = v4;
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v7 = [v6 boldSystemFontOfSize:?];
  v30 = [MEMORY[0x1E69DC888] labelColor];
  v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v9 = *MEMORY[0x1E69DB650];
  v33[0] = *MEMORY[0x1E69DB648];
  v8 = v33[0];
  v33[1] = v9;
  v34[0] = v7;
  v34[1] = v30;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v31[0] = v8;
  v31[1] = v9;
  v32[0] = v7;
  v32[1] = v28;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v10];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"R" attributes:v10];
  [v5 appendAttributedString:v13];

  [v5 appendAttributedString:v12];
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v3];
  v16 = [v14 initWithString:v15 attributes:v11];
  [v5 appendAttributedString:v16];

  [v5 appendAttributedString:v12];
  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"G" attributes:v10];
  [v5 appendAttributedString:v17];

  [v5 appendAttributedString:v12];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v27];
  v20 = [v18 initWithString:v19 attributes:v11];
  [v5 appendAttributedString:v20];

  [v5 appendAttributedString:v12];
  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"B" attributes:v10];
  [v5 appendAttributedString:v21];

  [v5 appendAttributedString:v12];
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v29];
  v24 = [v22 initWithString:v23 attributes:v11];
  [v5 appendAttributedString:v24];

  v25 = [v5 copy];

  return v25;
}

@end