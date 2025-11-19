@interface AVChromedLabel
- (AVChromedLabel)initWithFrame:(CGRect)a3;
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
- (void)setRemoved:(BOOL)a3;
- (void)setShowsLoadingIndicator:(BOOL)a3;
- (void)setText:(id)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation AVChromedLabel

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

    [(AVChromedLabel *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(AVChromedLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(AVChromedLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVChromedLabel *)self isCollapsed]|| ![(AVChromedLabel *)self isIncluded])
  {
    return 1;
  }

  return [(AVChromedLabel *)self isRemoved];
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVChromedLabel *)self layoutAttributes];
  -[AVChromedLabel setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setNumberOfLines:(int64_t)a3
{
  if (self->_numberOfLines != a3)
  {
    self->_numberOfLines = a3;
    v5 = [(AVChromedLabel *)self labelIfLoaded];
    [v5 setNumberOfLines:a3];
  }
}

- (void)updateConstraints
{
  v3 = [(AVChromedLabel *)self label];
  v4 = [v3 translatesAutoresizingMaskIntoConstraints];

  if (v4)
  {
    v5 = [(AVChromedLabel *)self label];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = MEMORY[0x1E696ACD8];
    v7 = [(AVChromedLabel *)self label];
    v8 = [v7 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:self];
    [v6 activateConstraints:v8];
  }

  if ([(AVChromedLabel *)self showsLoadingIndicator])
  {
    v9 = [(AVChromedLabel *)self loadingIndicator];
    v10 = [v9 translatesAutoresizingMaskIntoConstraints];

    if (v10)
    {
      v11 = [(AVChromedLabel *)self loadingIndicator];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [(AVChromedLabel *)self loadingIndicator];
      v13 = [v12 centerYAnchor];
      v14 = [(AVChromedLabel *)self centerYAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];
    }

    v16 = [(AVChromedLabel *)self loadingIndicatorLeftAlignmentConstraint];
    [v16 setActive:{-[AVChromedLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 0}];

    v17 = [(AVChromedLabel *)self loadingIndicatorRightAlignmentConstraint];
    [v17 setActive:{-[AVChromedLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 1}];
  }

  v18.receiver = self;
  v18.super_class = AVChromedLabel;
  [(AVChromedLabel *)&v18 updateConstraints];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = AVChromedLabel;
  [(AVChromedLabel *)&v6 tintColorDidChange];
  v3 = [(AVChromedLabel *)self labelIfLoaded];
  v4 = [(AVChromedLabel *)self tintColor];
  [v3 setTextColor:v4];

  v5 = [(AVChromedLabel *)self labelIfLoaded];
  [v5 setPreferredVibrancy:1];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVChromedLabel;
  [(AVChromedLabel *)&v3 didMoveToSuperview];
  [AVBackdropView applySecondaryGlyphTintToView:self];
}

- (void)_updateLayoutItem
{
  v3 = [(AVChromedLabel *)self layoutAttributes];
  [(AVChromedLabel *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVChromedLabel *)self layoutAttributes];
  if ([(AVChromedLabel *)self isIncluded])
  {
    v5 = [(AVChromedLabel *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setIncluded:v5];

  v6 = [(AVChromedLabel *)self layoutAttributes];
  [v6 setCollapsed:{-[AVChromedLabel isCollapsed](self, "isCollapsed")}];
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_extrinsicContentSize.width || a3.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = a3;
    [(AVChromedLabel *)self invalidateIntrinsicContentSize];

    [(AVChromedLabel *)self _updateLayoutItem];
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

    v7 = [(AVChromedLabel *)self label];
    [v7 setAttributedText:v9];

    if (v4 != [(NSAttributedString *)self->_attributedText length])
    {
      v8 = [(AVChromedLabel *)self labelIfLoaded];
      [v8 intrinsicContentSize];
      [(AVChromedLabel *)self setExtrinsicContentSize:?];
    }

    [(AVChromedLabel *)self _updateLayoutItem];
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

    v7 = [(AVChromedLabel *)self label];
    [v7 setText:v9];

    if (v4 != [(NSString *)self->_text length])
    {
      v8 = [(AVChromedLabel *)self labelIfLoaded];
      [v8 intrinsicContentSize];
      [(AVChromedLabel *)self setExtrinsicContentSize:?];

      [(AVChromedLabel *)self _updateLayoutItem];
    }
  }
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  if (self->_showsLoadingIndicator != a3)
  {
    v3 = a3;
    self->_showsLoadingIndicator = a3;
    v5 = [(AVChromedLabel *)self label];
    v6 = [v5 text];

    if (!v6 && v3)
    {
      v7 = [(AVChromedLabel *)self label];
      [v7 setText:@" "];
    }

    v8 = [(AVChromedLabel *)self label];
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
        v18 = [(AVChromedLabel *)self leftAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        loadingIndicatorLeftAlignmentConstraint = self->_loadingIndicatorLeftAlignmentConstraint;
        self->_loadingIndicatorLeftAlignmentConstraint = v19;

        v21 = [(UIActivityIndicatorView *)self->_loadingIndicator rightAnchor];
        v22 = [(AVChromedLabel *)self rightAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        loadingIndicatorRightAlignmentConstraint = self->_loadingIndicatorRightAlignmentConstraint;
        self->_loadingIndicatorRightAlignmentConstraint = v23;

        [(AVChromedLabel *)self addSubview:self->_loadingIndicator];
        [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];

        [(AVChromedLabel *)self setNeedsUpdateConstraints];
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
    v5 = [(AVChromedLabel *)self labelIfLoaded];
    [v5 setTextAlignment:v4];

    if ([(AVChromedLabel *)self showsLoadingIndicator])
    {

      [(AVChromedLabel *)self setNeedsUpdateConstraints];
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
    v6 = [(AVChromedLabel *)self labelIfLoaded];
    [v6 setFont:v8];

    v7 = [(AVChromedLabel *)self labelIfLoaded];
    [v7 intrinsicContentSize];
    [(AVChromedLabel *)self setExtrinsicContentSize:?];

    v5 = v8;
  }
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(AVChromedLabel *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_label;
    self->_label = v5;

    v7 = self->_label;
    v8 = [(AVChromedLabel *)self tintColor];
    [(UILabel *)v7 setTextColor:v8];

    v9 = self->_label;
    v10 = [(AVChromedLabel *)self text];
    [(UILabel *)v9 setText:v10];

    v11 = self->_label;
    v12 = [(AVChromedLabel *)self font];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)self->_label setPreferredVibrancy:1];
    v13 = [(AVChromedLabel *)self loadingIndicatorAlignment];
    if (v13 <= 2)
    {
      [(UILabel *)self->_label setTextAlignment:qword_18B6EC650[v13]];
    }

    [(UILabel *)self->_label setNumberOfLines:[(AVChromedLabel *)self numberOfLines]];
    [(UILabel *)self->_label intrinsicContentSize];
    [(AVChromedLabel *)self setExtrinsicContentSize:?];
    [(AVChromedLabel *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (AVChromedLabel)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AVChromedLabel;
  v3 = [(AVChromedLabel *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_included = 1;
    v3->_numberOfLines = 1;
    v5 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v4->_layoutAttributes;
    v4->_layoutAttributes = v5;

    v7 = v4->_layoutAttributes;
    [(AVChromedLabel *)v4 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v7 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVChromedLabel *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVChromedLabel *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:0];
    v8 = v4->_layoutAttributes;
    v9 = [(AVChromedLabel *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v8 setAccessibilityIdentifier:v9];
  }

  return v4;
}

@end