@interface OfflineMapSnapshotRowView
- (OfflineMapSnapshotRowView)initWithFrame:(CGRect)frame;
- (void)_buttonAction;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)setSubscriptionInfo:(id)info;
@end

@implementation OfflineMapSnapshotRowView

- (void)setSubscriptionInfo:(id)info
{
  infoCopy = info;
  if (self->_subscriptionInfo != infoCopy)
  {
    v21 = infoCopy;
    objc_storeStrong(&self->_subscriptionInfo, info);
    if (self->_snapshotWidthAspectRatioConstraint)
    {
      [(_MKStaticMapView *)self->_snapshotView removeConstraint:?];
      snapshotWidthAspectRatioConstraint = self->_snapshotWidthAspectRatioConstraint;
      self->_snapshotWidthAspectRatioConstraint = 0;
    }

    subscription = [(MapDataSubscriptionInfo *)v21 subscription];
    region = [subscription region];
    v9 = [MapsOfflineUIHelper idealDisplayAspectRatio:region];

    if (v9 <= 2)
    {
      v10 = dbl_1012131E0[v9];
      [(NSLayoutConstraint *)self->_snapshotWidthConstraint setConstant:dbl_1012131C8[v9]];
      [(NSLayoutConstraint *)self->_snapshotHeightConstraint setConstant:v10];
    }

    widthAnchor = [(_MKStaticMapView *)self->_snapshotView widthAnchor];
    heightAnchor = [(_MKStaticMapView *)self->_snapshotView heightAnchor];
    [(NSLayoutConstraint *)self->_snapshotWidthConstraint constant];
    v14 = v13;
    [(NSLayoutConstraint *)self->_snapshotHeightConstraint constant];
    v16 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v14 / v15];
    v17 = self->_snapshotWidthAspectRatioConstraint;
    self->_snapshotWidthAspectRatioConstraint = v16;

    [(NSLayoutConstraint *)self->_snapshotWidthAspectRatioConstraint setActive:1];
    subscriptionInfo = [(OfflineMapSnapshotRowView *)self subscriptionInfo];
    subscription2 = [subscriptionInfo subscription];
    region2 = [subscription2 region];
    GEOMapRectForMapRegion();
    [(_MKStaticMapView *)self->_snapshotView setVisibleMapRect:?];

    infoCopy = v21;
  }
}

- (void)_buttonAction
{
  actionBlock = [(OfflineMapSnapshotRowView *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(OfflineMapSnapshotRowView *)self actionBlock];
    actionBlock2[2](actionBlock2, self);
  }
}

- (void)_setupConstraints
{
  snapshotView = [(OfflineMapSnapshotRowView *)self snapshotView];
  widthAnchor = [snapshotView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:256.0];
  snapshotWidthConstraint = self->_snapshotWidthConstraint;
  self->_snapshotWidthConstraint = v5;

  snapshotView2 = [(OfflineMapSnapshotRowView *)self snapshotView];
  heightAnchor = [snapshotView2 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:256.0];
  snapshotHeightConstraint = self->_snapshotHeightConstraint;
  self->_snapshotHeightConstraint = v9;

  LODWORD(v11) = 1144750080;
  [(NSLayoutConstraint *)self->_snapshotWidthConstraint setPriority:v11];
  LODWORD(v12) = 1144750080;
  [(NSLayoutConstraint *)self->_snapshotHeightConstraint setPriority:v12];
  snapshotShadow = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  leadingAnchor = [snapshotShadow leadingAnchor];
  snapshotView3 = [(OfflineMapSnapshotRowView *)self snapshotView];
  leadingAnchor2 = [snapshotView3 leadingAnchor];
  v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v73[0] = v68;
  snapshotShadow2 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  trailingAnchor = [snapshotShadow2 trailingAnchor];
  snapshotView4 = [(OfflineMapSnapshotRowView *)self snapshotView];
  trailingAnchor2 = [snapshotView4 trailingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v73[1] = v63;
  snapshotShadow3 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  topAnchor = [snapshotShadow3 topAnchor];
  snapshotView5 = [(OfflineMapSnapshotRowView *)self snapshotView];
  topAnchor2 = [snapshotView5 topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[2] = v58;
  snapshotShadow4 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  bottomAnchor = [snapshotShadow4 bottomAnchor];
  snapshotView6 = [(OfflineMapSnapshotRowView *)self snapshotView];
  bottomAnchor2 = [snapshotView6 bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v13 = self->_snapshotWidthConstraint;
  v73[3] = v53;
  v73[4] = v13;
  v73[5] = self->_snapshotHeightConstraint;
  snapshotView7 = [(OfflineMapSnapshotRowView *)self snapshotView];
  leadingAnchor3 = [snapshotView7 leadingAnchor];
  leadingAnchor4 = [(OfflineMapSnapshotRowView *)self leadingAnchor];
  v49 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:16.0];
  v73[6] = v49;
  snapshotView8 = [(OfflineMapSnapshotRowView *)self snapshotView];
  trailingAnchor3 = [snapshotView8 trailingAnchor];
  trailingAnchor4 = [(OfflineMapSnapshotRowView *)self trailingAnchor];
  v45 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-16.0];
  v73[7] = v45;
  snapshotView9 = [(OfflineMapSnapshotRowView *)self snapshotView];
  heightAnchor2 = [snapshotView9 heightAnchor];
  v42 = [heightAnchor2 constraintLessThanOrEqualToConstant:256.0];
  v73[8] = v42;
  snapshotView10 = [(OfflineMapSnapshotRowView *)self snapshotView];
  centerXAnchor = [snapshotView10 centerXAnchor];
  centerXAnchor2 = [(OfflineMapSnapshotRowView *)self centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v73[9] = v38;
  snapshotView11 = [(OfflineMapSnapshotRowView *)self snapshotView];
  centerYAnchor = [snapshotView11 centerYAnchor];
  centerYAnchor2 = [(OfflineMapSnapshotRowView *)self centerYAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v73[10] = v34;
  snapshotView12 = [(OfflineMapSnapshotRowView *)self snapshotView];
  topAnchor3 = [snapshotView12 topAnchor];
  topAnchor4 = [(OfflineMapSnapshotRowView *)self topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v73[11] = v30;
  snapshotView13 = [(OfflineMapSnapshotRowView *)self snapshotView];
  bottomAnchor3 = [snapshotView13 bottomAnchor];
  bottomAnchor4 = [(OfflineMapSnapshotRowView *)self bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v73[12] = v26;
  resizeButton = [(OfflineMapSnapshotRowView *)self resizeButton];
  trailingAnchor5 = [resizeButton trailingAnchor];
  snapshotView14 = [(OfflineMapSnapshotRowView *)self snapshotView];
  trailingAnchor6 = [snapshotView14 trailingAnchor];
  v17 = -kMUPlaceSystemSpacing;
  v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-kMUPlaceSystemSpacing];
  v73[13] = v18;
  resizeButton2 = [(OfflineMapSnapshotRowView *)self resizeButton];
  bottomAnchor5 = [resizeButton2 bottomAnchor];
  snapshotView15 = [(OfflineMapSnapshotRowView *)self snapshotView];
  bottomAnchor6 = [snapshotView15 bottomAnchor];
  v23 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v17];
  v73[14] = v23;
  v24 = [NSArray arrayWithObjects:v73 count:15];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)_setupViews
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineMapSnapshotRowView *)self setSnapshotShadow:v7];

  snapshotShadow = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [snapshotShadow setTranslatesAutoresizingMaskIntoConstraints:0];

  snapshotShadow2 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [snapshotShadow2 _setContinuousCornerRadius:12.0];

  v10 = +[UIColor blackColor];
  cGColor = [v10 CGColor];
  snapshotShadow3 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer = [snapshotShadow3 layer];
  [layer setShadowColor:cGColor];

  snapshotShadow4 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer2 = [snapshotShadow4 layer];
  LODWORD(v16) = 1041865114;
  [layer2 setShadowOpacity:v16];

  snapshotShadow5 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer3 = [snapshotShadow5 layer];
  [layer3 setShadowRadius:12.0];

  snapshotShadow6 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer4 = [snapshotShadow6 layer];
  [layer4 setShadowOffset:{0.0, 8.0}];

  snapshotShadow7 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer5 = [snapshotShadow7 layer];
  [layer5 setShadowPathIsBounds:1];

  snapshotShadow8 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  layer6 = [snapshotShadow8 layer];
  [layer6 setPunchoutShadow:1];

  snapshotShadow9 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [(OfflineMapSnapshotRowView *)self addSubview:snapshotShadow9];

  v26 = [[_MKStaticMapView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineMapSnapshotRowView *)self setSnapshotView:v26];

  v27 = [[MKStandardMapConfiguration alloc] initWithElevationStyle:0];
  snapshotView = [(OfflineMapSnapshotRowView *)self snapshotView];
  [snapshotView setPreferredConfiguration:v27];

  snapshotView2 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [snapshotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  snapshotView3 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [snapshotView3 _setContinuousCornerRadius:12.0];

  v31 = +[UIColor whiteColor];
  cGColor2 = [v31 CGColor];
  snapshotView4 = [(OfflineMapSnapshotRowView *)self snapshotView];
  layer7 = [snapshotView4 layer];
  [layer7 setBorderColor:cGColor2];

  snapshotView5 = [(OfflineMapSnapshotRowView *)self snapshotView];
  layer8 = [snapshotView5 layer];
  [layer8 setBorderWidth:2.0];

  snapshotView6 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [snapshotView6 setClipsToBounds:1];

  snapshotView7 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [(OfflineMapSnapshotRowView *)self addSubview:snapshotView7];

  v39 = +[UIButtonConfiguration filledButtonConfiguration];
  [v39 setImagePadding:4.0];
  background = [v39 background];
  [background setCornerRadius:8.0];

  v41 = +[UIColor clearColor];
  [v39 setBaseBackgroundColor:v41];

  v42 = +[UIColor clearColor];
  background2 = [v39 background];
  [background2 setBackgroundColor:v42];

  v44 = +[UIColor whiteColor];
  [v39 setBaseForegroundColor:v44];

  v45 = [UIBlurEffect effectWithStyle:17];
  background3 = [v39 background];
  [background3 setVisualEffect:v45];

  v47 = [UIImage systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
  [v39 setImage:v47];

  v48 = +[NSBundle mainBundle];
  v49 = [v48 localizedStringForKey:@"Resize [button title]" value:@"localized string not found" table:@"Offline"];
  [v39 setTitle:v49];

  [v39 setContentInsets:{8.0, 8.0, 8.0, 8.0}];
  v50 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:0 compatibleWithTraitCollection:UIFontWeightSemibold];
  v51 = [UIImageSymbolConfiguration configurationWithFont:v50 scale:1];
  [v39 setPreferredSymbolConfigurationForImage:v51];

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100613E98;
  v61[3] = &unk_101652B60;
  v62 = v50;
  v52 = v50;
  [v39 setTitleTextAttributesTransformer:v61];
  v53 = [UIButton buttonWithConfiguration:v39 primaryAction:0];
  [(OfflineMapSnapshotRowView *)self setResizeButton:v53];

  resizeButton = [(OfflineMapSnapshotRowView *)self resizeButton];
  [resizeButton setTranslatesAutoresizingMaskIntoConstraints:0];

  resizeButton2 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [resizeButton2 setAccessibilityIdentifier:@"ResizeOfflineRegion"];

  resizeButton3 = [(OfflineMapSnapshotRowView *)self resizeButton];
  currentTitle = [resizeButton3 currentTitle];
  resizeButton4 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [resizeButton4 setAccessibilityLabel:currentTitle];

  resizeButton5 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [resizeButton5 addTarget:self action:"_buttonAction" forControlEvents:0x2000];

  resizeButton6 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [(OfflineMapSnapshotRowView *)self addSubview:resizeButton6];
}

- (OfflineMapSnapshotRowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OfflineMapSnapshotRowView;
  v3 = [(OfflineMapSnapshotRowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OfflineMapSnapshotRowView *)v3 _setupViews];
    [(OfflineMapSnapshotRowView *)v4 _setupConstraints];
  }

  return v4;
}

@end