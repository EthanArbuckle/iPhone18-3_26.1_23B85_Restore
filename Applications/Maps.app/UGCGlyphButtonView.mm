@interface UGCGlyphButtonView
+ (id)dislikeButtonViewForInlineMode:(BOOL)mode;
+ (id)likeButtonViewForInlineMode:(BOOL)mode;
- (CGSize)intrinsicContentSize;
- (UGCGlyphButtonView)initWithAppearance:(id)appearance isInlineMode:(BOOL)mode;
- (UGCGlyphButtonViewDelegate)delegate;
- (void)_handleGlyphTap;
- (void)_setupButton;
- (void)_updateAppearanceAnimated:(BOOL)animated;
- (void)_updateGlyphAppearance;
- (void)setEnabled:(BOOL)enabled;
- (void)setMuted:(BOOL)muted;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
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
    selectedGlyphName = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphName];
    v17 = [UIImage systemImageNamed:selectedGlyphName];

    selectedBackgroundColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedBackgroundColor];
    selectedGlyphColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphColor];
    selectedGlyphFontSize = [(UGCGlyphButtonAppearance *)self->_glyphAppearance selectedGlyphFontSize];
  }

  else
  {
    muted = self->_muted;
    glyphAppearance = self->_glyphAppearance;
    if (muted)
    {
      mutedGlyphName = [(UGCGlyphButtonAppearance *)glyphAppearance mutedGlyphName];
      v17 = [UIImage systemImageNamed:mutedGlyphName];

      selectedBackgroundColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedBackgroundColor];
      selectedGlyphColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedGlyphColor];
      [(UGCGlyphButtonAppearance *)self->_glyphAppearance mutedGlyphFontSize];
    }

    else
    {
      unselectedGlyphName = [(UGCGlyphButtonAppearance *)glyphAppearance unselectedGlyphName];
      v17 = [UIImage systemImageNamed:unselectedGlyphName];

      selectedBackgroundColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedBackgroundColor];
      selectedGlyphColor = [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedGlyphColor];
      [(UGCGlyphButtonAppearance *)self->_glyphAppearance unselectedGlyphFontSize];
    }
    selectedGlyphFontSize = ;
  }

  v11 = selectedGlyphFontSize;
  if (!self->_enabled)
  {
    v12 = [selectedGlyphColor colorWithAlphaComponent:0.3];

    selectedGlyphColor = v12;
  }

  [(UGCGlyphButtonView *)self setBackgroundColor:selectedBackgroundColor];
  glyph = [(UGCGlyphButtonView *)self glyph];
  [glyph setImage:v17];

  glyph2 = [(UGCGlyphButtonView *)self glyph];
  [glyph2 setTintColor:selectedGlyphColor];

  glyph3 = [(UGCGlyphButtonView *)self glyph];
  v16 = [UIImageSymbolConfiguration configurationWithFont:v11];
  [glyph3 setPreferredSymbolConfiguration:v16];
}

- (void)_updateAppearanceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  layer = [(UGCGlyphButtonView *)self layer];
  [layer removeAllAnimations];

  [(UGCGlyphButtonView *)self _updateGlyphAppearance];
  if (animatedCopy)
  {
    layer2 = [(UGCGlyphButtonView *)self layer];
    [layer2 convertTime:0 fromLayer:CACurrentMediaTime()];
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

- (void)setMuted:(BOOL)muted
{
  if (!self->_isInlineMode && self->_muted != muted)
  {
    self->_muted = muted;
    [(UGCGlyphButtonView *)self _updateAppearanceAnimated:0];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (!self->_isInlineMode && self->_selected != selected)
  {
    animatedCopy = animated;
    self->_selected = selected;
    if (animated)
    {
      [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
    }

    [(UGCGlyphButtonView *)self _updateAppearanceAnimated:animatedCopy];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (!self->_isInlineMode && self->_enabled != enabled)
  {
    self->_enabled = enabled;
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

  tapGestureRecognizer = [(UGCGlyphButtonView *)self tapGestureRecognizer];
  [(UGCGlyphButtonView *)self addGestureRecognizer:tapGestureRecognizer];

  [(UGCGlyphButtonView *)self _updateAppearanceAnimated:0];
  v9 = [[MUEdgeLayout alloc] initWithItem:self->_glyph container:self];
  v10 = [[MUSizeLayout alloc] initWithItem:self->_glyph size:{40.0, 40.0}];
  v12[0] = v9;
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v11];
}

- (UGCGlyphButtonView)initWithAppearance:(id)appearance isInlineMode:(BOOL)mode
{
  modeCopy = mode;
  appearanceCopy = appearance;
  v13.receiver = self;
  v13.super_class = UGCGlyphButtonView;
  v8 = [(UGCGlyphButtonView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_glyphAppearance, appearance);
    v10 = [[UIImpactFeedbackGenerator alloc] initWithStyle:1 view:v9];
    feedbackGenerator = v9->_feedbackGenerator;
    v9->_feedbackGenerator = v10;

    v9->_isInlineMode = modeCopy;
    [(UGCGlyphButtonView *)v9 setUserInteractionEnabled:!modeCopy];
    [(UGCGlyphButtonView *)v9 _setupButton];
  }

  return v9;
}

+ (id)dislikeButtonViewForInlineMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = [UGCDislikeGlyphButtonView alloc];
  v5 = [UGCGlyphButtonAppearance thumbsDownButtonAppearanceForInlineMode:modeCopy];
  v6 = [(UGCGlyphButtonView *)v4 initWithAppearance:v5 isInlineMode:modeCopy];

  return v6;
}

+ (id)likeButtonViewForInlineMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = [UGCLikeGlyphButtonView alloc];
  v5 = [UGCGlyphButtonAppearance thumbsUpButtonAppearanceForInlineMode:modeCopy];
  v6 = [(UGCGlyphButtonView *)v4 initWithAppearance:v5 isInlineMode:modeCopy];

  return v6;
}

@end