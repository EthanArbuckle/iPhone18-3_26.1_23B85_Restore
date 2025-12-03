@interface ASCAdTransparencyButtonView
+ (id)buttonFontCompatibleWithTraitColletion:(id)colletion;
+ (id)selectedTitleColor;
- (ASCAdTransparencyButtonView)initWithCoder:(id)coder;
- (ASCAdTransparencyButtonView)initWithFrame:(CGRect)frame;
- (void)onPreferredContentSizeCategoryChange;
- (void)setLoading:(BOOL)loading;
- (void)updateFont;
- (void)updateInsets;
@end

@implementation ASCAdTransparencyButtonView

+ (id)selectedTitleColor
{
  titleColor = [self titleColor];
  v3 = [titleColor colorWithAlphaComponent:0.22];

  return v3;
}

+ (id)buttonFontCompatibleWithTraitColletion:(id)colletion
{
  preferredContentSizeCategory = [colletion preferredContentSizeCategory];
  [__ASCLayoutProxy adTransparencyButtonTitlePointSizeProvider:preferredContentSizeCategory];
  v5 = v4;

  if (!buttonFontCompatibleWithTraitColletion__buttonFont || ([buttonFontCompatibleWithTraitColletion__buttonFont pointSize], v6 != v5))
  {
    v7 = [MEMORY[0x277D74300] systemFontOfSize:v5 weight:*MEMORY[0x277D74418]];
    v8 = buttonFontCompatibleWithTraitColletion__buttonFont;
    buttonFontCompatibleWithTraitColletion__buttonFont = v7;
  }

  v9 = buttonFontCompatibleWithTraitColletion__buttonFont;

  return v9;
}

- (ASCAdTransparencyButtonView)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ASCAdTransparencyButtonView;
  v3 = [(ASCAdTransparencyButtonView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[ASCAdTransparencyButtonView adTransparencyButtonImage];
    [(ASCAdTransparencyButtonView *)v3 setBackgroundImage:v4 forState:0];

    v5 = +[ASCAdTransparencyButtonView titleColor];
    [(ASCAdTransparencyButtonView *)v3 setTitleColor:v5 forState:0];

    v6 = +[ASCAdTransparencyButtonView selectedTitleColor];
    [(ASCAdTransparencyButtonView *)v3 setTitleColor:v6 forState:4];

    objc_opt_self();
    v7 = [MEMORY[0x277D75348] colorWithRed:0.6 green:0.8 blue:0.996078431 alpha:1.0];
    [(ASCAdTransparencyButtonView *)v3 setTintColor:v7];

    [(ASCAdTransparencyButtonView *)v3 setTitleEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCAdTransparencyButtonView *)v3 _setTouchInsets:-10.0, -5.0, -10.0, -5.0];
    v8 = +[ASCAdTransparencyButtonView adButtonTitleLocalized];
    [(ASCAdTransparencyButtonView *)v3 setTitle:v8 forState:0];

    imageView = [(ASCAdTransparencyButtonView *)v3 imageView];
    [imageView setContentMode:0];

    [(ASCAdTransparencyButtonView *)v3 updateFont];
    [(ASCAdTransparencyButtonView *)v3 updateInsets];
    v10 = objc_opt_self();
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [(ASCAdTransparencyButtonView *)v3 registerForTraitChanges:v11 withAction:sel_onPreferredContentSizeCategoryChange];
  }

  return v3;
}

- (ASCAdTransparencyButtonView)initWithCoder:(id)coder
{
  [(ASCAdTransparencyButtonView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setLoading:(BOOL)loading
{
  if (loading)
  {
    v4 = +[ASCSemanticColor loading];
    [(ASCAdTransparencyButtonView *)self setTintColor:v4];

    [(ASCAdTransparencyButtonView *)self setTitle:0 forState:0];
  }

  else
  {
    objc_opt_self();
    v5 = [MEMORY[0x277D75348] colorWithRed:0.6 green:0.8 blue:0.996078431 alpha:1.0];
    [(ASCAdTransparencyButtonView *)self setTintColor:v5];

    v6 = +[ASCAdTransparencyButtonView adButtonTitleLocalized];
    [(ASCAdTransparencyButtonView *)self setTitle:v6 forState:0];
  }
}

- (void)updateFont
{
  titleLabel = [(ASCAdTransparencyButtonView *)self titleLabel];
  traitCollection = [(ASCAdTransparencyButtonView *)self traitCollection];
  v4 = [ASCAdTransparencyButtonView buttonFontCompatibleWithTraitColletion:traitCollection];
  [titleLabel setFont:v4];
}

- (void)updateInsets
{
  objc_opt_self();
  traitCollection = [(ASCAdTransparencyButtonView *)self traitCollection];
  [__ASCLayoutProxy adTransparencyButtonScaledCapInset:traitCollection in:3.0];
  v5 = v4;

  [(ASCAdTransparencyButtonView *)self setContentEdgeInsets:0.0, v5, 0.0, v5];
}

- (void)onPreferredContentSizeCategoryChange
{
  [(ASCAdTransparencyButtonView *)self updateFont];

  [(ASCAdTransparencyButtonView *)self updateInsets];
}

@end