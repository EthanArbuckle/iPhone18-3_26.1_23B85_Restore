@interface MFComposeFontSelectorButton
+ (id)buttonWithFont:(id)a3;
- (void)layoutSubviews;
- (void)setRepresentedFont:(id)a3;
@end

@implementation MFComposeFontSelectorButton

+ (id)buttonWithFont:(id)a3
{
  v3 = a3;
  v4 = [MFComposeFontSelectorButton buttonWithType:0];
  [v4 setContentHorizontalAlignment:4];
  [v4 setContentVerticalAlignment:0];
  v5 = [v4 tintColor];
  v6 = [v4 titleLabel];
  [v6 setTextColor:v5];

  v7 = [v4 titleLabel];
  [v7 setLineBreakMode:4];

  v8 = [v4 titleLabel];
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = [v4 titleLabel];
  [v9 setBaselineAdjustment:1];

  [v4 setRepresentedFont:v3];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69ADBA0]];
  v10 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"chevron.forward" textStyle:*MEMORY[0x1E69DDCF8] scale:3];
  [v4 setImage:v10 forState:0];

  return v4;
}

- (void)setRepresentedFont:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_representedFont != v5)
  {
    objc_storeStrong(&self->_representedFont, a3);
    v6 = [(MFComposeFontSelectorButton *)self titleLabel];
    v7 = [v6 font];
    [v7 pointSize];
    v8 = [(UIFont *)v5 fontWithSize:?];

    if ((CTFontIsSystemUIFont() & 1) != 0 || CTFontIsTextStyleFont())
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"FORMAT_DEFAULT_FONT_TITLE" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v10 = CTFontCopyLocalizedName(v8, *MEMORY[0x1E6965798], 0);
    }

    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = *MEMORY[0x1E69DB648];
    v15[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v11 initWithString:v10 attributes:v12];

    [(MFComposeFontSelectorButton *)self setAttributedTitle:v13 forState:0];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = MFComposeFontSelectorButton;
  [(MFComposeFontSelectorButton *)&v11 layoutSubviews];
  v3 = [(MFComposeFontSelectorButton *)self effectiveUserInterfaceLayoutDirection];
  [(MFComposeFontSelectorButton *)self frame];
  v5 = v4;
  v6 = [(MFComposeFontSelectorButton *)self imageView];
  [v6 bounds];
  if (v3 == 1)
  {
    [(MFComposeFontSelectorButton *)self setImageEdgeInsets:0.0, 5.0, 0.0, v5 - (v7 + 5.0)];

    v8 = [(MFComposeFontSelectorButton *)self imageView];
    [v8 bounds];
    [(MFComposeFontSelectorButton *)self setTitleEdgeInsets:0.0, v9 + 10.0, 0.0, 5.0];
  }

  else
  {
    [(MFComposeFontSelectorButton *)self setImageEdgeInsets:0.0, v5 - (v7 + 5.0), 0.0, 5.0];

    v8 = [(MFComposeFontSelectorButton *)self imageView];
    [v8 bounds];
    [(MFComposeFontSelectorButton *)self setTitleEdgeInsets:0.0, 5.0, 0.0, v10 + 10.0];
  }
}

@end