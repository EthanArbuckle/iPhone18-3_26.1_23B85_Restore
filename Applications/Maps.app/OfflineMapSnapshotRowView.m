@interface OfflineMapSnapshotRowView
- (OfflineMapSnapshotRowView)initWithFrame:(CGRect)a3;
- (void)_buttonAction;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)setSubscriptionInfo:(id)a3;
@end

@implementation OfflineMapSnapshotRowView

- (void)setSubscriptionInfo:(id)a3
{
  v5 = a3;
  if (self->_subscriptionInfo != v5)
  {
    v21 = v5;
    objc_storeStrong(&self->_subscriptionInfo, a3);
    if (self->_snapshotWidthAspectRatioConstraint)
    {
      [(_MKStaticMapView *)self->_snapshotView removeConstraint:?];
      snapshotWidthAspectRatioConstraint = self->_snapshotWidthAspectRatioConstraint;
      self->_snapshotWidthAspectRatioConstraint = 0;
    }

    v7 = [(MapDataSubscriptionInfo *)v21 subscription];
    v8 = [v7 region];
    v9 = [MapsOfflineUIHelper idealDisplayAspectRatio:v8];

    if (v9 <= 2)
    {
      v10 = dbl_1012131E0[v9];
      [(NSLayoutConstraint *)self->_snapshotWidthConstraint setConstant:dbl_1012131C8[v9]];
      [(NSLayoutConstraint *)self->_snapshotHeightConstraint setConstant:v10];
    }

    v11 = [(_MKStaticMapView *)self->_snapshotView widthAnchor];
    v12 = [(_MKStaticMapView *)self->_snapshotView heightAnchor];
    [(NSLayoutConstraint *)self->_snapshotWidthConstraint constant];
    v14 = v13;
    [(NSLayoutConstraint *)self->_snapshotHeightConstraint constant];
    v16 = [v11 constraintEqualToAnchor:v12 multiplier:v14 / v15];
    v17 = self->_snapshotWidthAspectRatioConstraint;
    self->_snapshotWidthAspectRatioConstraint = v16;

    [(NSLayoutConstraint *)self->_snapshotWidthAspectRatioConstraint setActive:1];
    v18 = [(OfflineMapSnapshotRowView *)self subscriptionInfo];
    v19 = [v18 subscription];
    v20 = [v19 region];
    GEOMapRectForMapRegion();
    [(_MKStaticMapView *)self->_snapshotView setVisibleMapRect:?];

    v5 = v21;
  }
}

- (void)_buttonAction
{
  v3 = [(OfflineMapSnapshotRowView *)self actionBlock];

  if (v3)
  {
    v4 = [(OfflineMapSnapshotRowView *)self actionBlock];
    v4[2](v4, self);
  }
}

- (void)_setupConstraints
{
  v3 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant:256.0];
  snapshotWidthConstraint = self->_snapshotWidthConstraint;
  self->_snapshotWidthConstraint = v5;

  v7 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:256.0];
  snapshotHeightConstraint = self->_snapshotHeightConstraint;
  self->_snapshotHeightConstraint = v9;

  LODWORD(v11) = 1144750080;
  [(NSLayoutConstraint *)self->_snapshotWidthConstraint setPriority:v11];
  LODWORD(v12) = 1144750080;
  [(NSLayoutConstraint *)self->_snapshotHeightConstraint setPriority:v12];
  v72 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v70 = [v72 leadingAnchor];
  v71 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v69 = [v71 leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v73[0] = v68;
  v67 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v65 = [v67 trailingAnchor];
  v66 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v64 = [v66 trailingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v73[1] = v63;
  v62 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v60 = [v62 topAnchor];
  v61 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v59 = [v61 topAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v73[2] = v58;
  v57 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v55 = [v57 bottomAnchor];
  v56 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v54 = [v56 bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v13 = self->_snapshotWidthConstraint;
  v73[3] = v53;
  v73[4] = v13;
  v73[5] = self->_snapshotHeightConstraint;
  v52 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v51 = [v52 leadingAnchor];
  v50 = [(OfflineMapSnapshotRowView *)self leadingAnchor];
  v49 = [v51 constraintGreaterThanOrEqualToAnchor:v50 constant:16.0];
  v73[6] = v49;
  v48 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v47 = [v48 trailingAnchor];
  v46 = [(OfflineMapSnapshotRowView *)self trailingAnchor];
  v45 = [v47 constraintLessThanOrEqualToAnchor:v46 constant:-16.0];
  v73[7] = v45;
  v44 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v43 = [v44 heightAnchor];
  v42 = [v43 constraintLessThanOrEqualToConstant:256.0];
  v73[8] = v42;
  v41 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v40 = [v41 centerXAnchor];
  v39 = [(OfflineMapSnapshotRowView *)self centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v73[9] = v38;
  v37 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v36 = [v37 centerYAnchor];
  v35 = [(OfflineMapSnapshotRowView *)self centerYAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v73[10] = v34;
  v33 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v32 = [v33 topAnchor];
  v31 = [(OfflineMapSnapshotRowView *)self topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v73[11] = v30;
  v29 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v28 = [v29 bottomAnchor];
  v27 = [(OfflineMapSnapshotRowView *)self bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v73[12] = v26;
  v25 = [(OfflineMapSnapshotRowView *)self resizeButton];
  v14 = [v25 trailingAnchor];
  v15 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v16 = [v15 trailingAnchor];
  v17 = -kMUPlaceSystemSpacing;
  v18 = [v14 constraintEqualToAnchor:v16 constant:-kMUPlaceSystemSpacing];
  v73[13] = v18;
  v19 = [(OfflineMapSnapshotRowView *)self resizeButton];
  v20 = [v19 bottomAnchor];
  v21 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:v17];
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

  v8 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [v9 _setContinuousCornerRadius:12.0];

  v10 = +[UIColor blackColor];
  v11 = [v10 CGColor];
  v12 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v13 = [v12 layer];
  [v13 setShadowColor:v11];

  v14 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v15 = [v14 layer];
  LODWORD(v16) = 1041865114;
  [v15 setShadowOpacity:v16];

  v17 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v18 = [v17 layer];
  [v18 setShadowRadius:12.0];

  v19 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v20 = [v19 layer];
  [v20 setShadowOffset:{0.0, 8.0}];

  v21 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v22 = [v21 layer];
  [v22 setShadowPathIsBounds:1];

  v23 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  v24 = [v23 layer];
  [v24 setPunchoutShadow:1];

  v25 = [(OfflineMapSnapshotRowView *)self snapshotShadow];
  [(OfflineMapSnapshotRowView *)self addSubview:v25];

  v26 = [[_MKStaticMapView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(OfflineMapSnapshotRowView *)self setSnapshotView:v26];

  v27 = [[MKStandardMapConfiguration alloc] initWithElevationStyle:0];
  v28 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [v28 setPreferredConfiguration:v27];

  v29 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [v30 _setContinuousCornerRadius:12.0];

  v31 = +[UIColor whiteColor];
  v32 = [v31 CGColor];
  v33 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v34 = [v33 layer];
  [v34 setBorderColor:v32];

  v35 = [(OfflineMapSnapshotRowView *)self snapshotView];
  v36 = [v35 layer];
  [v36 setBorderWidth:2.0];

  v37 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [v37 setClipsToBounds:1];

  v38 = [(OfflineMapSnapshotRowView *)self snapshotView];
  [(OfflineMapSnapshotRowView *)self addSubview:v38];

  v39 = +[UIButtonConfiguration filledButtonConfiguration];
  [v39 setImagePadding:4.0];
  v40 = [v39 background];
  [v40 setCornerRadius:8.0];

  v41 = +[UIColor clearColor];
  [v39 setBaseBackgroundColor:v41];

  v42 = +[UIColor clearColor];
  v43 = [v39 background];
  [v43 setBackgroundColor:v42];

  v44 = +[UIColor whiteColor];
  [v39 setBaseForegroundColor:v44];

  v45 = [UIBlurEffect effectWithStyle:17];
  v46 = [v39 background];
  [v46 setVisualEffect:v45];

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

  v54 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  v55 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [v55 setAccessibilityIdentifier:@"ResizeOfflineRegion"];

  v56 = [(OfflineMapSnapshotRowView *)self resizeButton];
  v57 = [v56 currentTitle];
  v58 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [v58 setAccessibilityLabel:v57];

  v59 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [v59 addTarget:self action:"_buttonAction" forControlEvents:0x2000];

  v60 = [(OfflineMapSnapshotRowView *)self resizeButton];
  [(OfflineMapSnapshotRowView *)self addSubview:v60];
}

- (OfflineMapSnapshotRowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OfflineMapSnapshotRowView;
  v3 = [(OfflineMapSnapshotRowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(OfflineMapSnapshotRowView *)v3 _setupViews];
    [(OfflineMapSnapshotRowView *)v4 _setupConstraints];
  }

  return v4;
}

@end