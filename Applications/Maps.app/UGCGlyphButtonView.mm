@interface UGCGlyphButtonView
+ (id)dislikeButtonViewForInlineMode:(BOOL)a3;
+ (id)likeButtonViewForInlineMode:(BOOL)a3;
- (CGSize)intrinsicContentSize;
- (UGCGlyphButtonView)initWithAppearance:(id)a3 isInlineMode:(BOOL)a4;
- (UGCGlyphButtonViewDelegate)delegate;
- (void)_handleGlyphTap;
- (void)_setupButton;
- (void)_updateAppearanceAnimated:(BOOL)a3;
- (void)_updateGlyphAppearance;
- (void)setEnabled:(BOOL)a3;
- (void)setMuted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation UGCGlyphButtonView

- (UGCGlyphButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleGlyphTap
{
  [(UIImpactFeedbackGenerator *)self->_feedbackGenerator prepare];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapOnGlyphView:self];
}

- (CGSize)intrinsicContentSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateGlyphAppearance
{
  if (self->_selected)
  {
    v3 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphName];
    v17 = [UIImage systemImageNamed:v3];

    v4 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedBackgroundColor];
    v5 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphColor];
    v6 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphFontSize];
  }

  else
  {
    muted = self->_muted;
    glyphAppearance = self->_glyphAppearance;
    if (muted)
    {
      v9 = [(UGCGlyphButtonAppearance *)glyphAppearance mutedGlyphName];
      v17 = [UIImage systemImageNamed:v9];

      v4 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedBackgroundColor];
      v5 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedGlyphColor];
      [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedGlyphFontSize];
    }

    else
    {
      v10 = [(UGCGlyphButtonAppearance *)glyphAppearance unselectedGlyphName];
      v17 = [UIImage systemImageNamed:v10];

      v4 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedBackgroundColor];
      v5 = [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedGlyphColor];
      [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedGlyphFontSize];
    }
    v6 = ;
  }

  v11 = v6;
  if (!self->_enabled)
  {
    v12 = [v5 colorWithAlphaComponent:0.3];

    v5 = v12;
  }

  [(UGCGlyphButtonView *)self setBackgroundColor:v4];
  v13 = [(UGCGlyphButtonView *)self glyph];
  [v13 setImage:v17];

  v14 = [(UGCGlyphButtonView *)self glyph];
  [v14 setTintColor:v5];

  v15 = [(UGCGlyphButtonView *)self glyph];
  v16 = [UIImageSymbolConfiguration configurationWithFont:v11];
  [v15 setPreferredSymbolConfiguration:v16];
}

- (void)_updateAppearanceAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UGCGlyphButtonView *)self layer];
  [v5 removeAllAnimations];

  [(UGCGlyphButtonView *)self _updateGlyphAppearance];
  if (v3)
  {
    v6 = [(UGCGlyphButtonView *)self layer];
    [v6 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7;

    [(UGCGlyphButtonView *)self animationDuration];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CC7824;
    v10[3] = &unk_101661B18;
    v10[4] = self;
    [(UGCGlyphButtonView *)self animateWithBeginTime:v10 completionDelay:v8 completion:v9];
  }
}

- (void)setMuted:(BOOL)a3
{
  if (!self->_isInlineMode && self->_muted != a3)
  {
    self->_muted = a3;
    [(UGCGlyphButtonView *)self _updateAppearanceAnimated:0];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_isInlineMode && self->_selected != a3)
  {
    v5 = a4;
    self->_selected = a3;
    if (a4)
    {
      [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
    }

    [(UGCGlyphButtonView *)self _updateAppearanceAnimated:v5];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (!self->_isInlineMode && self->_enabled != a3)
  {
    self->_enabled = a3;
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:?];

    [(UGCGlyphButtonView *)self _updateAppearanceAnimated:0];
  }
}

- (void)_setupButton
{
  [(UGCGlyphButtonView *)self _setCornerRadius:20.0];
  self->_selected = self->_isInlineMode;
  self->_enabled = 1;
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  glyph = self->_glyph;
  self->_glyph = v3;

  [(UIImageView *)self->_glyph setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [(UIImageView *)self->_glyph setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [(UIImageView *)self->_glyph setContentMode:4];
  if (self->_isInlineMode)
  {
    +[UGCFontManager inlineRatingGlyphButtonFont];
  }

  else
  {
    +[UGCFontManager ratingGlyphButtonFont];
  }
  v5 = ;
  v6 = [UIImageSymbolConfiguration configurationWithFont:v5];

  [(UIImageView *)self->_glyph setPreferredSymbolConfiguration:v6];
  [(UGCGlyphButtonView *)self addSubview:self->_glyph];
  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleGlyphTap"];
  [(UGCGlyphButtonView *)self setTapGestureRecognizer:v7];

  v8 = [(UGCGlyphButtonView *)self tapGestureRecognizer];
  [(UGCGlyphButtonView *)self addGestureRecognizer:v8];

  [(UGCGlyphButtonView *)self _updateAppearanceAnimated:0];
  v9 = [[MUEdgeLayout alloc] initWithItem:self->_glyph container:self];
  v10 = [[MUSizeLayout alloc] initWithItem:self->_glyph size:{40.0, 40.0}];
  v12[0] = v9;
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v11];
}

- (UGCGlyphButtonView)initWithAppearance:(id)a3 isInlineMode:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = UGCGlyphButtonView;
  v8 = [(UGCGlyphButtonView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_glyphAppearance, a3);
    v10 = [[UIImpactFeedbackGenerator alloc] initWithStyle:1 view:v9];
    feedbackGenerator = v9->_feedbackGenerator;
    v9->_feedbackGenerator = v10;

    v9->_isInlineMode = v4;
    [(UGCGlyphButtonView *)v9 setUserInteractionEnabled:!v4];
    [(UGCGlyphButtonView *)v9 _setupButton];
  }

  return v9;
}

+ (id)dislikeButtonViewForInlineMode:(BOOL)a3
{
  v3 = a3;
  v4 = [UGCDislikeGlyphButtonView alloc];
  v5 = [UGCGlyphButtonAppearance thumbsDownButtonAppearanceForInlineMode:v3];
  v6 = [(UGCGlyphButtonView *)v4 initWithAppearance:v5 isInlineMode:v3];

  return v6;
}

+ (id)likeButtonViewForInlineMode:(BOOL)a3
{
  v3 = a3;
  v4 = [UGCLikeGlyphButtonView alloc];
  v5 = [UGCGlyphButtonAppearance thumbsUpButtonAppearanceForInlineMode:v3];
  v6 = [(UGCGlyphButtonView *)v4 initWithAppearance:v5 isInlineMode:v3];

  return v6;
}

@end