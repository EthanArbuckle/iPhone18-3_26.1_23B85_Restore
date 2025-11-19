@interface PKPaletteBackgroundViewFactory
- (id)makeBackgroundViewWithName:(void *)a3 backgroundColor:(char)a4 shouldUseGlassBackground:;
@end

@implementation PKPaletteBackgroundViewFactory

- (id)makeBackgroundViewWithName:(void *)a3 backgroundColor:(char)a4 shouldUseGlassBackground:
{
  v28[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1 && (!_UISolariumEnabled() || PKIsVisionDevice() || (a4 & 1) == 0))
  {
    v10 = [MEMORY[0x1E69AE158] materialViewWithRecipe:53];
    [v10 setGroupNameBase:v7];
    v11 = v10;
    v9 = v11;
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DD250]);

      [v9 setBackgroundColor:v8];
      [v9 addSubview:v11];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = MEMORY[0x1E696ACD8];
      v26 = [v11 topAnchor];
      v25 = [v9 topAnchor];
      v24 = [v26 constraintEqualToAnchor:v25 constant:-4.0];
      v28[0] = v24;
      v23 = [v11 leadingAnchor];
      v22 = [v9 leadingAnchor];
      v20 = [v23 constraintEqualToAnchor:v22 constant:-4.0];
      v28[1] = v20;
      v12 = [v11 trailingAnchor];
      v13 = [v9 trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:4.0];
      v28[2] = v14;
      [v11 bottomAnchor];
      v15 = v27 = v7;
      v16 = [v9 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:4.0];
      v28[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
      [v21 activateConstraints:v18];

      v7 = v27;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end