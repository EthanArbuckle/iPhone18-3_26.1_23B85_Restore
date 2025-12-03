@interface AVCatalystGlassLabel
- (AVCatalystGlassLabel)initWithFrame:(CGRect)frame;
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
- (void)setPreferredVibrancy:(int64_t)vibrancy;
- (void)setRemoved:(BOOL)removed;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)setText:(id)text;
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

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    self->_removed = removed;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(AVCatalystGlassLabel *)self _updateLayoutItem];

    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
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
  layoutAttributes = [(AVCatalystGlassLabel *)self layoutAttributes];
  -[AVCatalystGlassLabel setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setPreferredVibrancy:(int64_t)vibrancy
{
  if (self->_preferredVibrancy != vibrancy)
  {
    self->_preferredVibrancy = vibrancy;
    labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [labelIfLoaded setPreferredVibrancy:self->_preferredVibrancy];
  }
}

- (void)setNumberOfLines:(int64_t)lines
{
  if (self->_numberOfLines != lines)
  {
    self->_numberOfLines = lines;
    labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [labelIfLoaded setNumberOfLines:lines];
  }
}

- (void)updateConstraints
{
  label = [(AVCatalystGlassLabel *)self label];
  translatesAutoresizingMaskIntoConstraints = [label translatesAutoresizingMaskIntoConstraints];

  if (translatesAutoresizingMaskIntoConstraints)
  {
    label2 = [(AVCatalystGlassLabel *)self label];
    [label2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = MEMORY[0x1E696ACD8];
    label3 = [(AVCatalystGlassLabel *)self label];
    v8 = [label3 avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:self];
    [v6 activateConstraints:v8];
  }

  if ([(AVCatalystGlassLabel *)self showsLoadingIndicator])
  {
    loadingIndicator = [(AVCatalystGlassLabel *)self loadingIndicator];
    translatesAutoresizingMaskIntoConstraints2 = [loadingIndicator translatesAutoresizingMaskIntoConstraints];

    if (translatesAutoresizingMaskIntoConstraints2)
    {
      loadingIndicator2 = [(AVCatalystGlassLabel *)self loadingIndicator];
      [loadingIndicator2 setTranslatesAutoresizingMaskIntoConstraints:0];

      loadingIndicator3 = [(AVCatalystGlassLabel *)self loadingIndicator];
      centerYAnchor = [loadingIndicator3 centerYAnchor];
      centerYAnchor2 = [(AVCatalystGlassLabel *)self centerYAnchor];
      v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v15 setActive:1];
    }

    loadingIndicatorLeftAlignmentConstraint = [(AVCatalystGlassLabel *)self loadingIndicatorLeftAlignmentConstraint];
    [loadingIndicatorLeftAlignmentConstraint setActive:{-[AVCatalystGlassLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 0}];

    loadingIndicatorRightAlignmentConstraint = [(AVCatalystGlassLabel *)self loadingIndicatorRightAlignmentConstraint];
    [loadingIndicatorRightAlignmentConstraint setActive:{-[AVCatalystGlassLabel loadingIndicatorAlignment](self, "loadingIndicatorAlignment") == 1}];
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
  labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
  tintColor = [(AVCatalystGlassLabel *)self tintColor];
  [labelIfLoaded setTextColor:tintColor];
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
  layoutAttributes = [(AVCatalystGlassLabel *)self layoutAttributes];
  [(AVCatalystGlassLabel *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVCatalystGlassLabel *)self layoutAttributes];
  if ([(AVCatalystGlassLabel *)self isIncluded])
  {
    v5 = [(AVCatalystGlassLabel *)self isRemoved]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [layoutAttributes2 setIncluded:v5];

  layoutAttributes3 = [(AVCatalystGlassLabel *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVCatalystGlassLabel isCollapsed](self, "isCollapsed")}];
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  if (size.width != self->_extrinsicContentSize.width || size.height != self->_extrinsicContentSize.height)
  {
    self->_extrinsicContentSize = size;
    [(AVCatalystGlassLabel *)self invalidateIntrinsicContentSize];

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
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

    label = [(AVCatalystGlassLabel *)self label];
    [label setAttributedText:textCopy];

    if (v4 != [(NSAttributedString *)self->_attributedText length])
    {
      labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
      [labelIfLoaded intrinsicContentSize];
      [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];
    }

    [(AVCatalystGlassLabel *)self _updateLayoutItem];
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

    label = [(AVCatalystGlassLabel *)self label];
    [label setText:textCopy];

    if (v4 != [(NSString *)self->_text length])
    {
      labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
      [labelIfLoaded intrinsicContentSize];
      [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];

      [(AVCatalystGlassLabel *)self _updateLayoutItem];
    }
  }
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  if (self->_showsLoadingIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showsLoadingIndicator = indicator;
    label = [(AVCatalystGlassLabel *)self label];
    text = [label text];

    if (!text && indicatorCopy)
    {
      label2 = [(AVCatalystGlassLabel *)self label];
      [label2 setText:@" "];
    }

    label3 = [(AVCatalystGlassLabel *)self label];
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
        leftAnchor2 = [(AVCatalystGlassLabel *)self leftAnchor];
        v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        loadingIndicatorLeftAlignmentConstraint = self->_loadingIndicatorLeftAlignmentConstraint;
        self->_loadingIndicatorLeftAlignmentConstraint = v19;

        rightAnchor = [(UIActivityIndicatorView *)self->_loadingIndicator rightAnchor];
        rightAnchor2 = [(AVCatalystGlassLabel *)self rightAnchor];
        v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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

- (void)setLoadingIndicatorAlignment:(int64_t)alignment
{
  if (self->_loadingIndicatorAlignment != alignment)
  {
    self->_loadingIndicatorAlignment = alignment;
    v4 = alignment == 2;
    labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [labelIfLoaded setTextAlignment:v4];

    if ([(AVCatalystGlassLabel *)self showsLoadingIndicator])
    {

      [(AVCatalystGlassLabel *)self setNeedsUpdateConstraints];
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
    labelIfLoaded = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [labelIfLoaded setFont:v8];

    labelIfLoaded2 = [(AVCatalystGlassLabel *)self labelIfLoaded];
    [labelIfLoaded2 intrinsicContentSize];
    [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];

    fontCopy = v8;
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
    tintColor = [(AVCatalystGlassLabel *)self tintColor];
    [(UILabel *)v7 setTextColor:tintColor];

    v9 = self->_label;
    text = [(AVCatalystGlassLabel *)self text];
    [(UILabel *)v9 setText:text];

    v11 = self->_label;
    font = [(AVCatalystGlassLabel *)self font];
    [(UILabel *)v11 setFont:font];

    [(UILabel *)self->_label setPreferredVibrancy:self->_preferredVibrancy];
    loadingIndicatorAlignment = [(AVCatalystGlassLabel *)self loadingIndicatorAlignment];
    if (loadingIndicatorAlignment <= 2)
    {
      [(UILabel *)self->_label setTextAlignment:qword_18B6EC650[loadingIndicatorAlignment]];
    }

    [(UILabel *)self->_label setNumberOfLines:[(AVCatalystGlassLabel *)self numberOfLines]];
    [(UILabel *)self->_label intrinsicContentSize];
    [(AVCatalystGlassLabel *)self setExtrinsicContentSize:?];
    [(AVCatalystGlassLabel *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (AVCatalystGlassLabel)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVCatalystGlassLabel;
  v3 = [(AVCatalystGlassLabel *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    accessibilityIdentifier = [(AVCatalystGlassLabel *)v4 accessibilityIdentifier];
    [(AVLayoutItemAttributes *)v8 setAccessibilityIdentifier:accessibilityIdentifier];
  }

  return v4;
}

@end