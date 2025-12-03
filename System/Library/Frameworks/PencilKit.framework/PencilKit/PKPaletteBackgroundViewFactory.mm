@interface PKPaletteBackgroundViewFactory
- (id)makeBackgroundViewWithName:(void *)name backgroundColor:(char)color shouldUseGlassBackground:;
@end

@implementation PKPaletteBackgroundViewFactory

- (id)makeBackgroundViewWithName:(void *)name backgroundColor:(char)color shouldUseGlassBackground:
{
  v28[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  nameCopy = name;
  if (self && (!_UISolariumEnabled() || PKIsVisionDevice() || (color & 1) == 0))
  {
    v10 = [MEMORY[0x1E69AE158] materialViewWithRecipe:53];
    [v10 setGroupNameBase:v7];
    v11 = v10;
    v9 = v11;
    if (nameCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DD250]);

      [v9 setBackgroundColor:nameCopy];
      [v9 addSubview:v11];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = MEMORY[0x1E696ACD8];
      topAnchor = [v11 topAnchor];
      topAnchor2 = [v9 topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-4.0];
      v28[0] = v24;
      leadingAnchor = [v11 leadingAnchor];
      leadingAnchor2 = [v9 leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-4.0];
      v28[1] = v20;
      trailingAnchor = [v11 trailingAnchor];
      trailingAnchor2 = [v9 trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
      v28[2] = v14;
      [v11 bottomAnchor];
      v15 = v27 = v7;
      bottomAnchor = [v9 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:bottomAnchor constant:4.0];
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