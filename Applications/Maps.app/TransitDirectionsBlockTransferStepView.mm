@interface TransitDirectionsBlockTransferStepView
+ (double)leadingTextInsetForBlockTransferTransitDirectionsListItem:(id)item navigationState:(int64_t)state;
- (double)_primaryLabelLineSpacing;
- (double)_topToPrimaryLabelDistance;
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_updateFonts;
- (void)_updateLineSpacing;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
@end

@implementation TransitDirectionsBlockTransferStepView

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(_MKUILabel *)self->_primaryLabel setAlpha:alpha];
}

- (void)_updateLineSpacing
{
  primaryLabel = self->_primaryLabel;
  [(TransitDirectionsBlockTransferStepView *)self _primaryLabelLineSpacing];

  [(_MKUILabel *)primaryLabel _maps_setLineSpacing:?];
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v3 = ;
  _mapkit_fontByAddingFeaturesForTimeDisplay = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(_MKUILabel *)self->_primaryLabel setFont:_mapkit_fontByAddingFeaturesForTimeDisplay];

  [(TransitDirectionsBlockTransferStepView *)self _updateLineSpacing];
}

- (double)_primaryLabelLineSpacing
{
  font = [(_MKUILabel *)self->_primaryLabel font];
  [font _mapkit_lineHeight];
  font2 = [(_MKUILabel *)self->_primaryLabel font];
  [font2 leading];

  UIRoundToViewScale();
  return result;
}

- (double)_topToPrimaryLabelDistance
{
  font = [(_MKUILabel *)self->_primaryLabel font];
  [font _scaledValueForValue:20.0];

  UIRoundToViewScale();
  return result;
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v19 configureWithItem:itemCopy];
  v5 = [itemCopy imageSourceForStyle:0];
  [(MKArtworkImageView *)self->_blockTransferImageView setImageSource:v5];

  image = [(MKArtworkImageView *)self->_blockTransferImageView image];
  [image size];
  [(NSLayoutConstraint *)self->_primaryLabelLeadingConstraint setActive:(v7 == CGSizeZero.width) & (v8 == CGSizeZero.height)];

  [(NSLayoutConstraint *)self->_primaryLabelLeadingToImageViewConstraint setActive:[(NSLayoutConstraint *)self->_primaryLabelLeadingConstraint isActive]^ 1];
  if (-[TransitDirectionsStepView useNavigationMetrics](self, "useNavigationMetrics") || (-[TransitDirectionsBlockTransferStepView traitCollection](self, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), [v9 preferredContentSizeCategory], v10 = objc_claimAutoreleasedReturnValue(), IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(), v10, v9, IsAccessibilityContentSizeCategory))
  {
    v12 = 6;
  }

  else
  {
    v12 = 5;
  }

  v20[0] = NSFontAttributeName;
  font = [(_MKUILabel *)self->_primaryLabel font];
  v21[0] = font;
  v20[1] = MKServerFormattedStringArtworkSizeAttributeKey;
  v14 = [NSNumber numberWithInteger:v12];
  v21[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  majorFormattedStrings = [itemCopy majorFormattedStrings];
  firstObject = [majorFormattedStrings firstObject];
  v18 = [NSAttributedString _mapkit_attributedStringForComposedString:firstObject defaultAttributes:v15];

  [(_MKUILabel *)self->_primaryLabel setAttributedText:v18];
}

- (id)_initialConstraints
{
  v37.receiver = self;
  v37.super_class = TransitDirectionsBlockTransferStepView;
  _initialConstraints = [(TransitDirectionsStepView *)&v37 _initialConstraints];
  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide leadingAnchor];
  leadingAnchor2 = [(MKArtworkImageView *)self->_blockTransferImageView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [_initialConstraints addObject:v7];

  leadingAnchor3 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  trailingAnchor = [(MKArtworkImageView *)self->_blockTransferImageView trailingAnchor];
  v10 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  primaryLabelLeadingToImageViewConstraint = self->_primaryLabelLeadingToImageViewConstraint;
  self->_primaryLabelLeadingToImageViewConstraint = v10;

  [_initialConstraints addObject:self->_primaryLabelLeadingToImageViewConstraint];
  leadingAnchor4 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  leadingAnchor5 = [contentLayoutGuide2 leadingAnchor];
  v15 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  primaryLabelLeadingConstraint = self->_primaryLabelLeadingConstraint;
  self->_primaryLabelLeadingConstraint = v15;

  trailingAnchor2 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  contentLayoutGuide3 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  trailingAnchor3 = [contentLayoutGuide3 trailingAnchor];
  v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [_initialConstraints addObject:v20];

  firstBaselineAnchor = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  topAnchor = [(TransitDirectionsBlockTransferStepView *)self topAnchor];
  [(TransitDirectionsBlockTransferStepView *)self _topToPrimaryLabelDistance];
  v23 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  topToPrimaryLabelBaselineConstraint = self->_topToPrimaryLabelBaselineConstraint;
  self->_topToPrimaryLabelBaselineConstraint = v23;

  [_initialConstraints addObject:self->_topToPrimaryLabelBaselineConstraint];
  bottomAnchor = [(_MKUILabel *)self->_primaryLabel bottomAnchor];
  contentLayoutGuide4 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor2 = [contentLayoutGuide4 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [_initialConstraints addObject:v28];

  firstBaselineAnchor2 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  centerYAnchor = [(MKArtworkImageView *)self->_blockTransferImageView centerYAnchor];
  [(TransitDirectionsBlockTransferStepView *)self _blockTransferImageOffsetFromPrimaryLabelBaseline];
  v31 = [firstBaselineAnchor2 constraintEqualToAnchor:centerYAnchor constant:?];
  imageViewToLabelVerticalAlignmentConstraint = self->_imageViewToLabelVerticalAlignmentConstraint;
  self->_imageViewToLabelVerticalAlignmentConstraint = v31;

  [_initialConstraints addObject:self->_imageViewToLabelVerticalAlignmentConstraint];
  LODWORD(v33) = 1144750080;
  [(MKArtworkImageView *)self->_blockTransferImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1132068864;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148829696;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v35];

  return _initialConstraints;
}

- (void)_createSubviews
{
  v17.receiver = self;
  v17.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v17 _createSubviews];
  v3 = [_MKUILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v7;

  [(_MKUILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(_MKUILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_primaryLabel setTextAlignment:4];
  [(_MKUILabel *)self->_primaryLabel setLineBreakMode:0];
  [(_MKUILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
  v9 = +[UIColor secondaryLabelColor];
  [(_MKUILabel *)self->_primaryLabel setTextColor:v9];

  [(_MKUILabel *)self->_primaryLabel setNumberOfLines:0];
  [(TransitDirectionsBlockTransferStepView *)self addSubview:self->_primaryLabel];
  v10 = [[MKArtworkImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  blockTransferImageView = self->_blockTransferImageView;
  self->_blockTransferImageView = v10;

  [(MKArtworkImageView *)self->_blockTransferImageView setAccessibilityIdentifier:@"BlockTransferImageView"];
  [(MKArtworkImageView *)self->_blockTransferImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(TransitDirectionsBlockTransferStepView *)self layer];
  backgroundColor = [layer backgroundColor];
  layer2 = [(MKArtworkImageView *)self->_blockTransferImageView layer];
  [layer2 setBackgroundColor:backgroundColor];

  LODWORD(v15) = 1148829696;
  [(MKArtworkImageView *)self->_blockTransferImageView _mapkit_setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148829696;
  [(MKArtworkImageView *)self->_blockTransferImageView _mapkit_setContentHuggingPriority:1 forAxis:v16];
  [(MKArtworkImageView *)self->_blockTransferImageView setContentMode:1];
  [(TransitDirectionsBlockTransferStepView *)self addSubview:self->_blockTransferImageView];
  [(TransitDirectionsBlockTransferStepView *)self _updateFonts];
}

- (void)_contentSizeCategoryDidChange
{
  [(TransitDirectionsBlockTransferStepView *)self _topToPrimaryLabelDistance];
  [(NSLayoutConstraint *)self->_topToPrimaryLabelBaselineConstraint setConstant:?];
  [(TransitDirectionsBlockTransferStepView *)self _blockTransferImageOffsetFromPrimaryLabelBaseline];
  [(NSLayoutConstraint *)self->_imageViewToLabelVerticalAlignmentConstraint setConstant:?];
  v3.receiver = self;
  v3.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v3 _contentSizeCategoryDidChange];
  [(TransitDirectionsBlockTransferStepView *)self _updateFonts];
}

+ (double)leadingTextInsetForBlockTransferTransitDirectionsListItem:(id)item navigationState:(int64_t)state
{
  v4 = [item imageSourceForStyle:{0, state}];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 imageToDisplayWithScreenScale:0 nightMode:v7];
  [v8 size];
  v10 = v9;
  v12 = v11;

  if (v10 == CGSizeZero.width && v12 == CGSizeZero.height)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10 + 6.0;
  }

  return v13;
}

@end