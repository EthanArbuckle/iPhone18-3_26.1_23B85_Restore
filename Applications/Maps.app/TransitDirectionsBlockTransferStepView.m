@interface TransitDirectionsBlockTransferStepView
+ (double)leadingTextInsetForBlockTransferTransitDirectionsListItem:(id)a3 navigationState:(int64_t)a4;
- (double)_primaryLabelLineSpacing;
- (double)_topToPrimaryLabelDistance;
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_updateFonts;
- (void)_updateLineSpacing;
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)configureWithItem:(id)a3;
@end

@implementation TransitDirectionsBlockTransferStepView

- (void)_updateNavigationStateAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v5 _updateNavigationStateAlpha:?];
  [(_MKUILabel *)self->_primaryLabel setAlpha:a3];
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
  v4 = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(_MKUILabel *)self->_primaryLabel setFont:v4];

  [(TransitDirectionsBlockTransferStepView *)self _updateLineSpacing];
}

- (double)_primaryLabelLineSpacing
{
  v3 = [(_MKUILabel *)self->_primaryLabel font];
  [v3 _mapkit_lineHeight];
  v4 = [(_MKUILabel *)self->_primaryLabel font];
  [v4 leading];

  UIRoundToViewScale();
  return result;
}

- (double)_topToPrimaryLabelDistance
{
  v2 = [(_MKUILabel *)self->_primaryLabel font];
  [v2 _scaledValueForValue:20.0];

  UIRoundToViewScale();
  return result;
}

- (void)configureWithItem:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TransitDirectionsBlockTransferStepView;
  [(TransitDirectionsStepView *)&v19 configureWithItem:v4];
  v5 = [v4 imageSourceForStyle:0];
  [(MKArtworkImageView *)self->_blockTransferImageView setImageSource:v5];

  v6 = [(MKArtworkImageView *)self->_blockTransferImageView image];
  [v6 size];
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
  v13 = [(_MKUILabel *)self->_primaryLabel font];
  v21[0] = v13;
  v20[1] = MKServerFormattedStringArtworkSizeAttributeKey;
  v14 = [NSNumber numberWithInteger:v12];
  v21[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v16 = [v4 majorFormattedStrings];
  v17 = [v16 firstObject];
  v18 = [NSAttributedString _mapkit_attributedStringForComposedString:v17 defaultAttributes:v15];

  [(_MKUILabel *)self->_primaryLabel setAttributedText:v18];
}

- (id)_initialConstraints
{
  v37.receiver = self;
  v37.super_class = TransitDirectionsBlockTransferStepView;
  v3 = [(TransitDirectionsStepView *)&v37 _initialConstraints];
  v4 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v5 = [v4 leadingAnchor];
  v6 = [(MKArtworkImageView *)self->_blockTransferImageView leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v9 = [(MKArtworkImageView *)self->_blockTransferImageView trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:6.0];
  primaryLabelLeadingToImageViewConstraint = self->_primaryLabelLeadingToImageViewConstraint;
  self->_primaryLabelLeadingToImageViewConstraint = v10;

  [v3 addObject:self->_primaryLabelLeadingToImageViewConstraint];
  v12 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v13 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  primaryLabelLeadingConstraint = self->_primaryLabelLeadingConstraint;
  self->_primaryLabelLeadingConstraint = v15;

  v17 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  v18 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  v21 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v22 = [(TransitDirectionsBlockTransferStepView *)self topAnchor];
  [(TransitDirectionsBlockTransferStepView *)self _topToPrimaryLabelDistance];
  v23 = [v21 constraintEqualToAnchor:v22 constant:?];
  topToPrimaryLabelBaselineConstraint = self->_topToPrimaryLabelBaselineConstraint;
  self->_topToPrimaryLabelBaselineConstraint = v23;

  [v3 addObject:self->_topToPrimaryLabelBaselineConstraint];
  v25 = [(_MKUILabel *)self->_primaryLabel bottomAnchor];
  v26 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  v29 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v30 = [(MKArtworkImageView *)self->_blockTransferImageView centerYAnchor];
  [(TransitDirectionsBlockTransferStepView *)self _blockTransferImageOffsetFromPrimaryLabelBaseline];
  v31 = [v29 constraintEqualToAnchor:v30 constant:?];
  imageViewToLabelVerticalAlignmentConstraint = self->_imageViewToLabelVerticalAlignmentConstraint;
  self->_imageViewToLabelVerticalAlignmentConstraint = v31;

  [v3 addObject:self->_imageViewToLabelVerticalAlignmentConstraint];
  LODWORD(v33) = 1144750080;
  [(MKArtworkImageView *)self->_blockTransferImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1132068864;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148829696;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v35];

  return v3;
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
  v12 = [(TransitDirectionsBlockTransferStepView *)self layer];
  v13 = [v12 backgroundColor];
  v14 = [(MKArtworkImageView *)self->_blockTransferImageView layer];
  [v14 setBackgroundColor:v13];

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

+ (double)leadingTextInsetForBlockTransferTransitDirectionsListItem:(id)a3 navigationState:(int64_t)a4
{
  v4 = [a3 imageSourceForStyle:{0, a4}];
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