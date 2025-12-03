@interface AVChromedLabel
- (AVChromedLabel)initWithFrame:(CGRect)frame;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (UILabel)label;
- (void)_updateLayoutItem;
- (void)didMoveToSuperview;
- (void)layoutAttributesDidChange;
- (void)setAttributedText:(id)text;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setFont:(id)font;
- (void)setIncluded:(BOOL)included;
- (void)setLoadingIndicatorAlignment:(int64_t)alignment;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setRemoved:(BOOL)removed;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)setText:(id)text;
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

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVChromedLabel *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(AVChromedLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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
  layoutAttributes = [(AVChromedLabel *)self layoutAttributes];
  -[AVChromedLabel setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setNumberOfLines:(int64_t)lines
{
  if (self->_numberOfLines != lines)
  {
    self->_numberOfLines = lines;
    labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
    [labelIfLoaded setNumberOfLines:lines];
  }
}

- (void)updateConstraints
{
  label = [(AVChromedLabel *)self label];
  translatesAutoresizingMaskIntoConstraints = [label translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    label2 = [(AVChromedLabel *)self label];
    [label2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = MEMORY[0x1E696ACD8];
    label3 = [(AVChromedLabel *)self label];
    v8 = [label3 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:self];
    [v6 activateConstraints:v8];
  }

  if ([(AVChromedLabel *)self showsLoadingIndicator])
  {
    loadingIndicator = [(AVChromedLabel *)self loadingIndicator];
    translatesAutoresizingMaskIntoConstraints2 = [loadingIndicator translatesAutoresizingMaskIntoConstraints];

    if (translatesAutoresizingMaskIntoConstraints2)
    {
      loadingIndicator2 = [(AVChromedLabel *)self loadingIndicator];
      [loadingIndicator2 setTranslatesAutoresizingMaskIntoConstraints:0];

      loadingIndicator3 = [(AVChromedLabel *)self loadingIndicator];
      centerYAnchor = [loadingIndicator3 centerYAnchor];
      centerYAnchor2 = [(AVChromedLabel *)self centerYAnchor];
      v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v15 setActive:1];
    }

    loadingIndicatorLeftAlignmentConstraint = [(AVChromedLabel *)self loadingIndicatorLeftAlignmentConstraint];
    [loadingIndicatorLeftAlignmentConstraint setActive:{-[AVChromedLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 0}];

    loadingIndicatorRightAlignmentConstraint = [(AVChromedLabel *)self loadingIndicatorRightAlignmentConstraint];
    [loadingIndicatorRightAlignmentConstraint setActive:{-[AVChromedLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 1}];
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
  labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
  tintColor = [(AVChromedLabel *)self tintColor];
  [labelIfLoaded setTextColor:tintColor];

  labelIfLoaded2 = [(AVChromedLabel *)self labelIfLoaded];
  [labelIfLoaded2 setPreferredVibrancy:1];
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
  layoutAttributes = [(AVChromedLabel *)self layoutAttributes];
  [(AVChromedLabel *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVChromedLabel *)self layoutAttributes];
  if ([(AVChromedLabel *)self isIncluded])
  {
    v5 = [(AVChromedLabel *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVChromedLabel *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVChromedLabel isCollapsed](self, "isCollapsed")}];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVChromedLabel *)self invalidateIntrinsicContentSize];

    [(AVChromedLabel *)self _updateLayoutItem];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (![(NSAttributedString *)self->_attributedText isEqualToAttributedString:?])
  {
    v4 = [(NSAttributedString *)self->_attributedText length];
    v5 = [textCopy copy];
    attributedText = self->_attributedText;
    self->_attributedText = v5;

    label = [(AVChromedLabel *)self label];
    [label setAttributedText:textCopy];

    if (v4 != [(NSAttributedString *)self->_attributedText length])
    {
      labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
      [labelIfLoaded intrinsicContentSize];
      [(AVChromedLabel *)self setExtrinsicContentSize:?];
    }

    [(AVChromedLabel *)self _updateLayoutItem];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [(NSString *)self->_text length];
    v5 = [textCopy copy];
    text = self->_text;
    self->_text = v5;

    label = [(AVChromedLabel *)self label];
    [label setText:textCopy];

    if (v4 != [(NSString *)self->_text length])
    {
      labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
      [labelIfLoaded intrinsicContentSize];
      [(AVChromedLabel *)self setExtrinsicContentSize:?];

      [(AVChromedLabel *)self _updateLayoutItem];
    }
  }
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  if (self->_showsLoadingIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showsLoadingIndicator = indicator;
    label = [(AVChromedLabel *)self label];
    text = [label text];

    if (!text && indicatorCopy)
    {
      label2 = [(AVChromedLabel *)self label];
      [label2 setText:@" "];
    }

    label3 = [(AVChromedLabel *)self label];
    v9 = label3;
    v10 = 1.0;
    if (indicatorCopy)
    {
      v10 = 0.0;
    }

    [label3 setAlpha:v10];

    loadingIndicator = self->_loadingIndicator;
    if (indicatorCopy)
    {
      if (!loadingIndicator)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:3];
        v16 = self->_loadingIndicator;
        self->_loadingIndicator = v15;

        leftAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator leftAnchor];
        leftAnchor2 = [(AVChromedLabel *)self leftAnchor];
        v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        loadingIndicatorLeftAlignmentConstraint = self->_loadingIndicatorLeftAlignmentConstraint;
        self->_loadingIndicatorLeftAlignmentConstraint = v19;

        rightAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator rightAnchor];
        rightAnchor2 = [(AVChromedLabel *)self rightAnchor];
        v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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

- (void)setLoadingIndicatorAlignment:(int64_t)alignment
{
  if (self->_loadingIndicatorAlignment != alignment)
  {
    self->_loadingIndicatorAlignment = alignment;
    v4 = alignment == 2;
    labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
    [labelIfLoaded setTextAlignment:v4];

    if ([(AVChromedLabel *)self showsLoadingIndicator])
    {

      [(AVChromedLabel *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v8 = fontCopy;
    objc_storeStrong(&self->_font, font);
    labelIfLoaded = [(AVChromedLabel *)self labelIfLoaded];
    [labelIfLoaded setFont:v8];

    labelIfLoaded2 = [(AVChromedLabel *)self labelIfLoaded];
    [labelIfLoaded2 intrinsicContentSize];
    [(AVChromedLabel *)self setExtrinsicContentSize:?];

    fontCopy = v8;
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
    tintColor = [(AVChromedLabel *)self tintColor];
    [(UILabel *)v7 setTextColor:tintColor];

    v9 = self->_label;
    text = [(AVChromedLabel *)self text];
    [(UILabel *)v9 setText:text];

    v11 = self->_label;
    font = [(AVChromedLabel *)self font];
    [(UILabel *)v11 setFont:font];

    [(UILabel *)self->_label setPreferredVibrancy:1];
    loadingIndicatorAlignment = [(AVChromedLabel *)self loadingIndicatorAlignment];
    if (loadingIndicatorAlignment <= 2)
    {
      [(UILabel *)self->_label setTextAlignment:qword_18B6EC650[loadingIndicatorAlignment]];
    }

    [(UILabel *)self->_label setNumberOfLines:[(AVChromedLabel *)self numberOfLines]];
    [(UILabel *)self->_label intrinsicContentSize];
    [(AVChromedLabel *)self setExtrinsicContentSize:?];
    [(AVChromedLabel *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (AVChromedLabel)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVChromedLabel;
  v3 = [(AVChromedLabel *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    accessibilityIdentifier = [(AVChromedLabel *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v8 setAccessibilityIdentifier:accessibilityIdentifier];
  }

  return v4;
}

@end