@interface AVCatalystGlassLabel
- (AVCatalystGlassLabel)initWithFrame:(CGRect)a3;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (UILabel)label;
- (void)_updateLayoutItem;
- (void)didMoveToSuperview;
- (void)layoutAttributesDidChange;
- (void)setAttributedText:(id)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setFont:(id)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setLoadingIndicatorAlignment:(int64_t)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setPreferredVibrancy:(int64_t)a3;
- (void)setRemoved:(BOOL)a3;
- (void)setShowsLoadingIndicator:(BOOL)a3;
- (void)setText:(id)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation AVCatalystGlassLabel

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    self->_removed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVCatalystGlassLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVCatalystGlassLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVCatalystGlassLabel *)self isCollapsed]|| ![(AVCatalystGlassLabel *)self isIncluded])
  {
    return 1;
  }

  return [(AVCatalystGlassLabel *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVCatalystGlassLabel *)self layoutAttributes];
  -[AVCatalystGlassLabel setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setPreferredVibrancy:(int64_t)a3
{
  if (self->_preferredVibrancy != a3)
  {
    self->_preferredVibrancy = a3;
    v4 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [v4 setPreferredVibrancy:self->_preferredVibrancy];
  }
}

- (void)setNumberOfLines:(int64_t)a3
{
  if (self->_numberOfLines != a3)
  {
    self->_numberOfLines = a3;
    v5 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [v5 setNumberOfLines:a3];
  }
}

- (void)updateConstraints
{
  v3 = [(AVCatalystGlassLabel *)self label];
  v4 = [v3 translatesAutoresizingMaskIntoConstraints];

  if (v4)
  {
    v5 = [(AVCatalystGlassLabel *)self label];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(AVCatalystGlassLabel *)self label];
    v8 = [v7 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:self];
    [v6 activateConstraints:v8];
  }

  if ([(AVCatalystGlassLabel *)self showsLoadingIndicator])
  {
    v9 = [(AVCatalystGlassLabel *)self loadingIndicator];
    v10 = [v9 translatesAutoresizingMaskIntoConstraints];

    if (v10)
    {
      v11 = [(AVCatalystGlassLabel *)self loadingIndicator];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [(AVCatalystGlassLabel *)self loadingIndicator];
      v13 = [v12 centerYAnchor];
      v14 = [(AVCatalystGlassLabel *)self centerYAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];
    }

    v16 = [(AVCatalystGlassLabel *)self loadingIndicatorLeftAlignmentConstraint];
    [v16 setActive:{-[AVCatalystGlassLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 0}];

    v17 = [(AVCatalystGlassLabel *)self loadingIndicatorRightAlignmentConstraint];
    [v17 setActive:{-[AVCatalystGlassLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 1}];
  }

  v18.receiver = self;
  v18.super_class = AVCatalystGlassLabel;
  [(AVCatalystGlassLabel *)&v18 updateConstraints];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = AVCatalystGlassLabel;
  [(AVCatalystGlassLabel *)&v5 tintColorDidChange];
  v3 = [(AVCatalystGlassLabel *)self labelIfLoaded];
  v4 = [(AVCatalystGlassLabel *)self tintColor];
  [v3 setTextColor:v4];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVCatalystGlassLabel;
  [(AVCatalystGlassLabel *)&v3 didMoveToSuperview];
  [AVBackdropView applySecondaryGlyphTintToView:self];
}

- (void)_updateLayoutItem
{
  v3 = [(AVCatalystGlassLabel *)self layoutAttributes];
  [(AVCatalystGlassLabel *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVCatalystGlassLabel *)self layoutAttributes];
  if ([(AVCatalystGlassLabel *)self isIncluded])
  {
    v5 = [(AVCatalystGlassLabel *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVCatalystGlassLabel *)self layoutAttributes];
  [v6 setCollapsed:{-[AVCatalystGlassLabel isCollapsed](self, "isCollapsed")}];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVCatalystGlassLabel *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
  }
}

- (void)setAttributedText:(id)a3
{
  v9 = a3;
  if (![(NSAttributedString *)self->_attributedText isEqualToAttributedString:?])
  {
    v4 = [(NSAttributedString *)self->_attributedText length];
    v5 = [v9 copy];
    attributedText = self->_attributedText;
    self->_attributedText = v5;

    v7 = [(AVCatalystGlassLabel *)self label];
    [v7 setAttributedText:v9];

    if (v4 != [(NSAttributedString *)self->_attributedText length])
    {
      v8 = [(AVCatalystGlassLabel *)self labelIfLoaded];
      [v8 intrinsicContentSize];
      [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];
    }

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
  }
}

- (void)setText:(id)a3
{
  v9 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [(NSString *)self->_text length];
    v5 = [v9 copy];
    text = self->_text;
    self->_text = v5;

    v7 = [(AVCatalystGlassLabel *)self label];
    [v7 setText:v9];

    if (v4 != [(NSString *)self->_text length])
    {
      v8 = [(AVCatalystGlassLabel *)self labelIfLoaded];
      [v8 intrinsicContentSize];
      [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];

      [(AVCatalystGlassLabel *)self _updateLayoutItem];
    }
  }
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  if (self->_showsLoadingIndicator != a3)
  {
    v3 = a3;
    self->_showsLoadingIndicator = a3;
    v5 = [(AVCatalystGlassLabel *)self label];
    v6 = [v5 text];

    if (!v6 && v3)
    {
      v7 = [(AVCatalystGlassLabel *)self label];
      [v7 setText:@" "];
    }

    v8 = [(AVCatalystGlassLabel *)self label];
    v9 = v8;
    v10 = 1.0;
    if (v3)
    {
      v10 = 0.0;
    }

    [v8 setAlpha:v10];

    loadingIndicator = self->_loadingIndicator;
    if (v3)
    {
      if (!loadingIndicator)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:3];
        v16 = self->_loadingIndicator;
        self->_loadingIndicator = v15;

        v17 = [(UIActivityIndicatorView *)self->_loadingIndicator leftAnchor];
        v18 = [(AVCatalystGlassLabel *)self leftAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        loadingIndicatorLeftAlignmentConstraint = self->_loadingIndicatorLeftAlignmentConstraint;
        self->_loadingIndicatorLeftAlignmentConstraint = v19;

        v21 = [(UIActivityIndicatorView *)self->_loadingIndicator rightAnchor];
        v22 = [(AVCatalystGlassLabel *)self rightAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        loadingIndicatorRightAlignmentConstraint = self->_loadingIndicatorRightAlignmentConstraint;
        self->_loadingIndicatorRightAlignmentConstraint = v23;

        [(AVCatalystGlassLabel *)self addSubview:self->_loadingIndicator];
        [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];

        [(AVCatalystGlassLabel *)self setNeedsUpdateConstraints];
      }
    }

    else
    {
      [(UIActivityIndicatorView *)loadingIndicator removeFromSuperview];
      v12 = self->_loadingIndicatorLeftAlignmentConstraint;
      self->_loadingIndicatorLeftAlignmentConstraint = 0;

      v13 = self->_loadingIndicatorRightAlignmentConstraint;
      self->_loadingIndicatorRightAlignmentConstraint = 0;

      v14 = self->_loadingIndicator;
      self->_loadingIndicator = 0;
    }
  }
}

- (void)setLoadingIndicatorAlignment:(int64_t)a3
{
  if (self->_loadingIndicatorAlignment != a3)
  {
    self->_loadingIndicatorAlignment = a3;
    v4 = a3 == 2;
    v5 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [v5 setTextAlignment:v4];

    if ([(AVCatalystGlassLabel *)self showsLoadingIndicator])
    {

      [(AVCatalystGlassLabel *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (self->_font != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_font, a3);
    v6 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [v6 setFont:v8];

    v7 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [v7 intrinsicContentSize];
    [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];

    v5 = v8;
  }
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVCatalystGlassLabel *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_label;
    self->_label = v5;

    v7 = self->_label;
    v8 = [(AVCatalystGlassLabel *)self tintColor];
    [(UILabel *)v7 setTextColor:v8];

    v9 = self->_label;
    v10 = [(AVCatalystGlassLabel *)self text];
    [(UILabel *)v9 setText:v10];

    v11 = self->_label;
    v12 = [(AVCatalystGlassLabel *)self font];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)self->_label setPreferredVibrancy:self->_preferredVibrancy];
    v13 = [(AVCatalystGlassLabel *)self loadingIndicatorAlignment];
    if (v13 <= 2)
    {
      [(UILabel *)self->_label setTextAlignment:qword_18B6EC650[v13]];
    }

    [(UILabel *)self->_label setNumberOfLines:[(AVCatalystGlassLabel *)self numberOfLines]];
    [(UILabel *)self->_label intrinsicContentSize];
    [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];
    [(AVCatalystGlassLabel *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (AVCatalystGlassLabel)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AVCatalystGlassLabel;
  v3 = [(AVCatalystGlassLabel *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_included = 1;
    v3->_numberOfLines = 1;
    v5 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v4->_layoutAttributes;
    v4->_layoutAttributes = v5;

    v7 = v4->_layoutAttributes;
    [(AVCatalystGlassLabel *)v4 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v7 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVCatalystGlassLabel *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVCatalystGlassLabel *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:0];
    v8 = v4->_layoutAttributes;
    v9 = [(AVCatalystGlassLabel *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v8 setAccessibilityIdentifier:v9];
  }

  return v4;
}

@end