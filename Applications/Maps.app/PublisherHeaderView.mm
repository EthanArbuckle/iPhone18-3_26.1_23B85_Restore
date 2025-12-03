@interface PublisherHeaderView
- (PublisherHeaderView)initWithDelegate:(id)delegate usingPublisherAttribution:(id)attribution usingAnalyticsManager:(id)manager;
- (PublisherHeaderViewDelegate)delegate;
- (double)maximumRequiredHeight;
- (double)minimumRequiredHeight;
- (void)adjustLogoImageViewTopConstraint:(double)constraint;
- (void)headerHeightChangedWithNewYOffset:(double)offset;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)resetLogoHeight;
- (void)setupConstraints;
- (void)setupHeaderContainerView;
- (void)setupStackView;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImage;
@end

@implementation PublisherHeaderView

- (PublisherHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  delegate = [(PublisherHeaderView *)self delegate];
  [delegate didTapClose:tappedCopy];

  analyticsManager = [(PublisherHeaderView *)self analyticsManager];
  [analyticsManager publisherHeaderCloseButtonTapped];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PublisherHeaderView;
  changeCopy = change;
  [(PublisherHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PublisherHeaderView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PublisherHeaderView *)self updateImage];
  }
}

- (void)setupConstraints
{
  publisherLogoImageView = [(PublisherHeaderView *)self publisherLogoImageView];
  heightAnchor = [publisherLogoImageView heightAnchor];
  isMarzipan = [(PublisherHeaderView *)self isMarzipan];
  v6 = 110.0;
  if (isMarzipan)
  {
    v6 = 70.0;
  }

  v7 = [heightAnchor constraintLessThanOrEqualToConstant:v6];
  [(PublisherHeaderView *)self setPublisherLogoImageViewHeightConstraint:v7];

  publisherLogoImageView2 = [(PublisherHeaderView *)self publisherLogoImageView];
  widthAnchor = [publisherLogoImageView2 widthAnchor];
  isMarzipan2 = [(PublisherHeaderView *)self isMarzipan];
  v11 = 270.0;
  if (isMarzipan2)
  {
    v11 = 242.0;
  }

  v12 = [widthAnchor constraintLessThanOrEqualToConstant:v11];
  [(PublisherHeaderView *)self setPublisherLogoImageViewWidthConstraint:v12];

  if (![(PublisherHeaderView *)self isMarzipan])
  {
    publisherLogoImageView3 = [(PublisherHeaderView *)self publisherLogoImageView];
    topAnchor = [publisherLogoImageView3 topAnchor];
    topAnchor2 = [(PublisherHeaderView *)self topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
    [(PublisherHeaderView *)self setPublisherLogoImageViewTopConstraint:v16];
  }

  v17 = objc_alloc_init(NSMutableArray);
  if ([(PublisherHeaderView *)self isMarzipan])
  {
    publisherLogoImageView4 = [(PublisherHeaderView *)self publisherLogoImageView];
    centerYAnchor = [publisherLogoImageView4 centerYAnchor];
    centerYAnchor2 = [(PublisherHeaderView *)self centerYAnchor];
    publisherLogoImageViewTopConstraint = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  }

  else
  {
    publisherLogoImageViewTopConstraint = [(PublisherHeaderView *)self publisherLogoImageViewTopConstraint];
  }

  publisherLogoImageView5 = [(PublisherHeaderView *)self publisherLogoImageView];
  centerXAnchor = [publisherLogoImageView5 centerXAnchor];
  centerXAnchor2 = [(PublisherHeaderView *)self centerXAnchor];
  v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v53[0] = v47;
  v53[1] = publisherLogoImageViewTopConstraint;
  v51 = publisherLogoImageViewTopConstraint;
  publisherLogoImageViewHeightConstraint = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  v53[2] = publisherLogoImageViewHeightConstraint;
  publisherLogoImageViewWidthConstraint = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  v53[3] = publisherLogoImageViewWidthConstraint;
  publisherHeaderView = [(PublisherHeaderView *)self publisherHeaderView];
  leadingAnchor = [publisherHeaderView leadingAnchor];
  leadingAnchor2 = [(PublisherHeaderView *)self leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[4] = v41;
  publisherHeaderView2 = [(PublisherHeaderView *)self publisherHeaderView];
  trailingAnchor = [publisherHeaderView2 trailingAnchor];
  trailingAnchor2 = [(PublisherHeaderView *)self trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[5] = v37;
  publisherHeaderView3 = [(PublisherHeaderView *)self publisherHeaderView];
  topAnchor3 = [publisherHeaderView3 topAnchor];
  topAnchor4 = [(PublisherHeaderView *)self topAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v53[6] = v24;
  publisherHeaderView4 = [(PublisherHeaderView *)self publisherHeaderView];
  bottomAnchor = [publisherHeaderView4 bottomAnchor];
  bottomAnchor2 = [(PublisherHeaderView *)self bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[7] = v28;
  v29 = [NSArray arrayWithObjects:v53 count:8];
  [v17 addObjectsFromArray:v29];

  if ([(PublisherHeaderView *)self isMarzipan])
  {
    publisherLogoImageView6 = [(PublisherHeaderView *)self publisherLogoImageView];
    topAnchor5 = [publisherLogoImageView6 topAnchor];
    publisherHeaderView5 = [(PublisherHeaderView *)self publisherHeaderView];
    topAnchor6 = [publisherHeaderView5 topAnchor];
    v34 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:9.0];
    v52 = v34;
    v35 = [NSArray arrayWithObjects:&v52 count:1];
    [v17 addObjectsFromArray:v35];
  }

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)setupHeaderContainerView
{
  v3 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  [(PublisherHeaderView *)self setPublisherHeaderView:v3];

  v4 = [PublisherHeaderViewActionManager alloc];
  attribution = self->_attribution;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [(PublisherHeaderViewActionManager *)v4 initWithAttribution:attribution withActionsDelegate:WeakRetained usingAnalyticsManager:self->_analyticsManager shouldHideAppIcon:self->_isMarzipan];
  [(PublisherHeaderView *)self setActionManager:v7];

  publisherHeaderView = [(PublisherHeaderView *)self publisherHeaderView];
  _headerTapGesture = [publisherHeaderView _headerTapGesture];
  [_headerTapGesture setCancelsTouchesInView:0];

  publisherHeaderView2 = [(PublisherHeaderView *)self publisherHeaderView];
  [publisherHeaderView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  publisherHeaderView3 = [(PublisherHeaderView *)self publisherHeaderView];
  v12 = +[UIColor clearColor];
  [publisherHeaderView3 setBackgroundColor:v12];

  publisherHeaderView4 = [(PublisherHeaderView *)self publisherHeaderView];
  [publisherHeaderView4 setHeaderSize:2];

  publisherHeaderView5 = [(PublisherHeaderView *)self publisherHeaderView];
  [publisherHeaderView5 setDelegate:self];

  publisherHeaderView6 = [(PublisherHeaderView *)self publisherHeaderView];
  [publisherHeaderView6 setHairLineAlpha:0.0];

  if (sub_10000FA08(self) == 5)
  {
    actionManager = [(PublisherHeaderView *)self actionManager];
    headerEllipsis = [actionManager headerEllipsis];
    publisherHeaderView7 = [(PublisherHeaderView *)self publisherHeaderView];
    [publisherHeaderView7 setAccessoryView:headerEllipsis];
  }

  publisherHeaderView8 = [(PublisherHeaderView *)self publisherHeaderView];
  [(PublisherHeaderView *)self addSubview:publisherHeaderView8];
}

- (void)updateImage
{
  v3 = +[MKSystemController sharedInstance];
  [v3 screenScale];
  v5 = v4;

  traitCollection = [(PublisherHeaderView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  attribution = [(PublisherHeaderView *)self attribution];
  v9 = attribution;
  if (userInterfaceStyle == 2)
  {
    logoCenteredIdentifier = [attribution logoCenteredIdentifier];
  }

  else
  {
    logoCenteredIdentifier = [attribution logoCenteredColorizedIdentifier];
  }

  v12 = [MKIconManager imageForIconID:logoCenteredIdentifier contentScale:1 sizeGroup:0 nightMode:v5];

  publisherLogoImageView = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView setImage:v12];
}

- (void)setupStackView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PublisherHeaderView *)self setPublisherLogoImageView:v3];

  v4 = +[UIColor clearColor];
  publisherLogoImageView = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView setBackgroundColor:v4];

  publisherLogoImageView2 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  publisherLogoImageView3 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView3 setAccessibilityIgnoresInvertColors:1];

  publisherLogoImageView4 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView4 setAccessibilityIdentifier:@"PublisherHeaderLogo"];

  [(PublisherHeaderView *)self updateImage];
  attribution = [(PublisherHeaderView *)self attribution];
  displayName = [attribution displayName];
  publisherLogoImageView5 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView5 setAccessibilityLabel:displayName];

  publisherLogoImageView6 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView6 setContentMode:1];

  publisherHeaderView = [(PublisherHeaderView *)self publisherHeaderView];
  publisherLogoImageView7 = [(PublisherHeaderView *)self publisherLogoImageView];
  [publisherHeaderView addSubview:publisherLogoImageView7];
}

- (void)setupSubviews
{
  [(PublisherHeaderView *)self setClipsToBounds:1];
  +[MapsTheme cardCornerRadius];
  [(PublisherHeaderView *)self _setContinuousCornerRadius:?];
  layer = [(PublisherHeaderView *)self layer];
  [layer setMaskedCorners:3];

  [(PublisherHeaderView *)self setupHeaderContainerView];
  [(PublisherHeaderView *)self setupStackView];

  [(PublisherHeaderView *)self setupConstraints];
}

- (double)minimumRequiredHeight
{
  isMarzipan = [(PublisherHeaderView *)self isMarzipan];
  result = 60.0;
  if (isMarzipan)
  {
    return 59.0;
  }

  return result;
}

- (double)maximumRequiredHeight
{
  isMarzipan = [(PublisherHeaderView *)self isMarzipan];
  result = 110.0;
  if (isMarzipan)
  {
    return 79.0;
  }

  return result;
}

- (void)adjustLogoImageViewTopConstraint:(double)constraint
{
  if (![(PublisherHeaderView *)self isMarzipan])
  {
    publisherLogoImageViewTopConstraint = [(PublisherHeaderView *)self publisherLogoImageViewTopConstraint];
    [publisherLogoImageViewTopConstraint setConstant:constraint * 0.6 + -36.0];
  }
}

- (void)headerHeightChangedWithNewYOffset:(double)offset
{
  isMarzipan = [(PublisherHeaderView *)self isMarzipan];
  publisherLogoImageViewHeightConstraint = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [publisherLogoImageViewHeightConstraint constant];
  v8 = v7 - offset;

  [(PublisherHeaderView *)self maximumRequiredHeight];
  v10 = v9;
  [(PublisherHeaderView *)self minimumRequiredHeight];
  if (v8 <= v10)
  {
    v15 = v11;
    publisherLogoImageViewHeightConstraint2 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
    v13 = publisherLogoImageViewHeightConstraint2;
    if (v8 >= v15)
    {
      v14 = v8;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    publisherLogoImageViewHeightConstraint2 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
    v13 = publisherLogoImageViewHeightConstraint2;
    v14 = v10;
  }

  [publisherLogoImageViewHeightConstraint2 setConstant:v14];
  if (isMarzipan)
  {
    v16 = 3.45714286;
  }

  else
  {
    v16 = 2.45454545;
  }

  publisherLogoImageViewHeightConstraint3 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [publisherLogoImageViewHeightConstraint3 constant];
  v18 = v17 * v16;
  publisherLogoImageViewWidthConstraint = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  [publisherLogoImageViewWidthConstraint setConstant:v18];
}

- (void)resetLogoHeight
{
  if ([(PublisherHeaderView *)self isMarzipan])
  {
    v3 = 3.45714286;
  }

  else
  {
    v3 = 2.45454545;
  }

  [(PublisherHeaderView *)self maximumRequiredHeight];
  v5 = v4;
  publisherLogoImageViewHeightConstraint = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [publisherLogoImageViewHeightConstraint setConstant:v5];

  publisherLogoImageViewWidthConstraint = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  [publisherLogoImageViewWidthConstraint setConstant:v5 * v3];
}

- (PublisherHeaderView)initWithDelegate:(id)delegate usingPublisherAttribution:(id)attribution usingAnalyticsManager:(id)manager
{
  delegateCopy = delegate;
  attributionCopy = attribution;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PublisherHeaderView;
  v11 = [(PublisherHeaderView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_attribution, attribution);
    objc_storeStrong(&v12->_analyticsManager, manager);
    v12->_isMarzipan = sub_10000FA08(v12) == 5;
    [(PublisherHeaderView *)v12 setAccessibilityIdentifier:@"PublisherHeader"];
    [(PublisherHeaderView *)v12 setupSubviews];
  }

  return v12;
}

@end