@interface CRLiOSInspectorCheckmark
+ (id)checkmark;
- (CGSize)intrinsicContentSize;
- (CRLiOSInspectorCheckmark)initWithFrame:(CGRect)a3;
- (void)p_updateTintColor;
- (void)setCustomCheckmarkImage:(id)a3;
- (void)setCustomHighlightedCheckmarkImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setUsesCustomCheckmarkImage:(BOOL)a3;
- (void)setupDefaultCheckmarkImage;
- (void)tintColorDidChange;
@end

@implementation CRLiOSInspectorCheckmark

+ (id)checkmark
{
  v2 = [[CRLiOSInspectorCheckmark alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v2;
}

- (CRLiOSInspectorCheckmark)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CRLiOSInspectorCheckmark;
  v3 = [(CRLiOSInspectorCheckmark *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    v5 = [UIButton buttonWithType:0];
    checkmarkImageButton = v4->_checkmarkImageButton;
    v4->_checkmarkImageButton = v5;

    [(UIButton *)v4->_checkmarkImageButton setCrl_deprecatedAdjustsImageWhenHighlighted:1];
    [(UIButton *)v4->_checkmarkImageButton setCrl_deprecatedAdjustsImageWhenDisabled:1];
    [(UIButton *)v4->_checkmarkImageButton setContentMode:4];
    [(CRLiOSInspectorCheckmark *)v4 addSubview:v4->_checkmarkImageButton];
    [(CRLiOSInspectorCheckmark *)v4 setupDefaultCheckmarkImage];
    [(CRLiOSInspectorCheckmark *)v4 p_updateTintColor];
    [(UIButton *)v4->_checkmarkImageButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(CRLiOSInspectorCheckmark *)v4 crl_constraintsToAllSidesOfItem:v4->_checkmarkImageButton];
    [NSLayoutConstraint activateConstraints:v7];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    if (self->_usesCustomCheckmarkImage)
    {
      [(UIButton *)self->_checkmarkImageButton setHighlighted:?];
    }

    else
    {
      [(CRLiOSInspectorCheckmark *)self p_updateTintColor];
    }
  }
}

- (void)setUsesCustomCheckmarkImage:(BOOL)a3
{
  if (self->_usesCustomCheckmarkImage != a3)
  {
    if (a3)
    {
      [(UIButton *)self->_checkmarkImageButton setImage:self->_customCheckmarkImage forState:0];
      [(UIButton *)self->_checkmarkImageButton setImage:self->_customHighlightedCheckmarkImage forState:1];
      [(UIImage *)self->_customCheckmarkImage size];
      v6 = v5;
      [(UIImage *)self->_customCheckmarkImage size];
      [(UIButton *)self->_checkmarkImageButton setFrame:0.0, 0.0, v6, v7];
    }

    else
    {
      [(CRLiOSInspectorCheckmark *)self setupDefaultCheckmarkImage];
      [(CRLiOSInspectorCheckmark *)self p_updateTintColor];
    }

    [(CRLiOSInspectorCheckmark *)self setNeedsLayout];
  }
}

- (void)setupDefaultCheckmarkImage
{
  v3 = [UIImageSymbolConfiguration configurationWithWeight:6];
  v8 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v3];

  v4 = [v8 crl_imageWithAlpha:0 renderingMode:0.400000006];
  [(UIButton *)self->_checkmarkImageButton setImage:v8 forState:0];
  [(UIButton *)self->_checkmarkImageButton setImage:v4 forState:1];
  [v8 size];
  v6 = v5;
  [v8 size];
  [(UIButton *)self->_checkmarkImageButton setFrame:0.0, 0.0, v6, v7];
}

- (void)setCustomCheckmarkImage:(id)a3
{
  v5 = a3;
  if (self->_customCheckmarkImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customCheckmarkImage, a3);
    [(CRLiOSInspectorCheckmark *)self setUsesCustomCheckmarkImage:v6 != 0];
    [(CRLiOSInspectorCheckmark *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setCustomHighlightedCheckmarkImage:(id)a3
{
  v5 = a3;
  if (self->_customHighlightedCheckmarkImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customHighlightedCheckmarkImage, a3);
    [(UIButton *)self->_checkmarkImageButton setImage:v6 forState:1];
    [(CRLiOSInspectorCheckmark *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)p_updateTintColor
{
  v3 = [(CRLiOSInspectorCheckmark *)self tintColor];
  if (self->_enabled)
  {
    if (!self->_highlighted)
    {
      goto LABEL_6;
    }

    v8 = v3;
    v4 = [v3 colorWithAlphaComponent:0.8];
  }

  else
  {
    v8 = v3;
    v4 = +[UIColor secondaryLabelColor];
  }

  v5 = v4;

  v3 = v5;
LABEL_6:
  if (!v3)
  {
    v3 = +[UIColor labelColor];
  }

  v9 = v3;
  v6 = [(CRLiOSInspectorCheckmark *)self checkmarkImageButton];
  v7 = [v6 imageView];
  [v7 setTintColor:v9];
}

- (CGSize)intrinsicContentSize
{
  [(UIButton *)self->_checkmarkImageButton intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CRLiOSInspectorCheckmark;
  [(CRLiOSInspectorCheckmark *)&v3 tintColorDidChange];
  [(CRLiOSInspectorCheckmark *)self p_updateTintColor];
}

@end