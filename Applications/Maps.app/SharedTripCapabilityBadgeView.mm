@interface SharedTripCapabilityBadgeView
- (SharedTripCapabilityBadgeView)init;
- (void)_setAccessibilityIdentifier;
- (void)_updateImage;
- (void)traitCollectionDidChange:(id)change;
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
  traitCollection = [(SharedTripCapabilityBadgeView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
  capabilityType = self->_capabilityType;
  if (capabilityType - 2 < 2)
  {
    traitCollection2 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    [traitCollection2 displayScale];
    v6 = @"com.apple.MobileSMS";
LABEL_5:
    v8 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];

    goto LABEL_7;
  }

  if (capabilityType == 4)
  {
    v7 = MapsAppBundleId;
    traitCollection2 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    [traitCollection2 displayScale];
    v6 = v7;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  [(UIImageView *)self->_imageView setImage:v8];
  [(SharedTripCapabilityBadgeView *)self _setAccessibilityIdentifier];
  [(SharedTripCapabilityBadgeView *)self invalidateIntrinsicContentSize];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = SharedTripCapabilityBadgeView;
  [(SharedTripCapabilityBadgeView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(SharedTripCapabilityBadgeView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom == [changeCopy userInterfaceIdiom])
  {
    traitCollection2 = [(SharedTripCapabilityBadgeView *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle == userInterfaceStyle2)
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
  height = [(SharedTripCapabilityBadgeView *)&v27 initWithFrame:CGRectZero.origin.x, y, width, height];
  v7 = height;
  if (height)
  {
    LODWORD(v6) = 1144750080;
    [(SharedTripCapabilityBadgeView *)height setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v8) = 1144750080;
    [(SharedTripCapabilityBadgeView *)v7 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(SharedTripCapabilityBadgeView *)v7 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(SharedTripCapabilityBadgeView *)v7 setContentHuggingPriority:1 forAxis:v10];
    v7->_capabilityType = 0;
    height2 = [[AutolayoutImageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    imageView = v7->_imageView;
    v7->_imageView = &height2->super;

    [(UIImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v7->_imageView setContentMode:1];
    [(SharedTripCapabilityBadgeView *)v7 addSubview:v7->_imageView];
    heightAnchor = [(SharedTripCapabilityBadgeView *)v7 heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:22.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v14;

    v16 = objc_alloc_init(NSMutableArray);
    [v16 addObject:v7->_heightConstraint];
    v17 = [(UIImageView *)v7->_imageView _maps_constraintsForCenteringInView:v7];
    [v16 addObjectsFromArray:v17];

    [NSLayoutConstraint activateConstraints:v16];
    layer = [(SharedTripCapabilityBadgeView *)v7 layer];
    [layer setMasksToBounds:0];

    layer2 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    v20 = +[UIColor systemBlackColor];
    cGColor = [v20 CGColor];
    layer3 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(SharedTripCapabilityBadgeView *)v7 layer];
    LODWORD(v24) = 1036831949;
    [layer4 setShadowOpacity:v24];

    layer5 = [(SharedTripCapabilityBadgeView *)v7 layer];
    [layer5 setShadowRadius:5.0];

    [(SharedTripCapabilityBadgeView *)v7 _updateImage];
  }

  return v7;
}

@end