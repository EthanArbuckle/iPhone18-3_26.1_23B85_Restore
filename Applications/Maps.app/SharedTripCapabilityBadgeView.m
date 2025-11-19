@interface SharedTripCapabilityBadgeView
- (SharedTripCapabilityBadgeView)init;
- (void)_setAccessibilityIdentifier;
- (void)_updateImage;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SharedTripCapabilityBadgeView

- (void)_setAccessibilityIdentifier
{
  capabilityType = self->_capabilityType;
  imageView = self->_imageView;
  v4 = capabilityType - 2;
  if (v4 > 2)
  {
    v5 = @"SharedTripCapabilityBadge.Unknown";
  }

  else
  {
    v5 = off_101629070[v4];
  }

  [(UIImageView *)imageView setAccessibilityIdentifier:v5];
}

- (void)_updateImage
{
  v3 = [(SharedTripCapabilityBadgeView *)self traitCollection];
  [v3 userInterfaceIdiom];

  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
  capabilityType = self->_capabilityType;
  if (capabilityType - 2 < 2)
  {
    v5 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    [v5 displayScale];
    v6 = @"com.apple.MobileSMS";
LABEL_5:
    v8 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];

    goto LABEL_7;
  }

  if (capabilityType == 4)
  {
    v7 = MapsAppBundleId;
    v5 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    [v5 displayScale];
    v6 = v7;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  [(UIImageView *)self->_imageView setImage:v8];
  [(SharedTripCapabilityBadgeView *)self _setAccessibilityIdentifier];
  [(SharedTripCapabilityBadgeView *)self invalidateIntrinsicContentSize];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SharedTripCapabilityBadgeView;
  [(SharedTripCapabilityBadgeView *)&v10 traitCollectionDidChange:v4];
  v5 = [(SharedTripCapabilityBadgeView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  if (v6 == [v4 userInterfaceIdiom])
  {
    v7 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];
    v9 = [v4 userInterfaceStyle];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(SharedTripCapabilityBadgeView *)self _updateImage];
LABEL_6:
}

- (SharedTripCapabilityBadgeView)init
{
  v27.receiver = self;
  v27.super_class = SharedTripCapabilityBadgeView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v5 = [(SharedTripCapabilityBadgeView *)&v27 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = 1144750080;
    [(SharedTripCapabilityBadgeView *)v5 setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v8) = 1144750080;
    [(SharedTripCapabilityBadgeView *)v7 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(SharedTripCapabilityBadgeView *)v7 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(SharedTripCapabilityBadgeView *)v7 setContentHuggingPriority:1 forAxis:v10];
    v7->_capabilityType = 0;
    v11 = [[AutolayoutImageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    imageView = v7->_imageView;
    v7->_imageView = &v11->super;

    [(UIImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v7->_imageView setContentMode:1];
    [(SharedTripCapabilityBadgeView *)v7 addSubview:v7->_imageView];
    v13 = [(SharedTripCapabilityBadgeView *)v7 heightAnchor];
    v14 = [v13 constraintEqualToConstant:22.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v14;

    v16 = objc_alloc_init(NSMutableArray);
    [v16 addObject:v7->_heightConstraint];
    v17 = [(UIImageView *)v7->_imageView _maps_constraintsForCenteringInView:v7];
    [v16 addObjectsFromArray:v17];

    [NSLayoutConstraint activateConstraints:v16];
    v18 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [v18 setMasksToBounds:0];

    v19 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [v19 setShadowOffset:{0.0, 2.0}];

    v20 = +[UIColor systemBlackColor];
    v21 = [v20 CGColor];
    v22 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [v22 setShadowColor:v21];

    v23 = [(SharedTripCapabilityBadgeView *)v7 layer];
    LODWORD(v24) = 1036831949;
    [v23 setShadowOpacity:v24];

    v25 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [v25 setShadowRadius:5.0];

    [(SharedTripCapabilityBadgeView *)v7 _updateImage];
  }

  return v7;
}

@end