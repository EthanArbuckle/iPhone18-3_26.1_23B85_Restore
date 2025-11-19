@interface PublisherHeaderView
- (PublisherHeaderView)initWithDelegate:(id)a3 usingPublisherAttribution:(id)a4 usingAnalyticsManager:(id)a5;
- (PublisherHeaderViewDelegate)delegate;
- (double)maximumRequiredHeight;
- (double)minimumRequiredHeight;
- (void)adjustLogoImageViewTopConstraint:(double)a3;
- (void)headerHeightChangedWithNewYOffset:(double)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)resetLogoHeight;
- (void)setupConstraints;
- (void)setupHeaderContainerView;
- (void)setupStackView;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImage;
@end

@implementation PublisherHeaderView

- (PublisherHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PublisherHeaderView *)self delegate];
  [v6 didTapClose:v5];

  v7 = [(PublisherHeaderView *)self analyticsManager];
  [v7 publisherHeaderCloseButtonTapped];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PublisherHeaderView;
  v4 = a3;
  [(PublisherHeaderView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PublisherHeaderView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(PublisherHeaderView *)self updateImage];
  }
}

- (void)setupConstraints
{
  v3 = [(PublisherHeaderView *)self publisherLogoImageView];
  v4 = [v3 heightAnchor];
  v5 = [(PublisherHeaderView *)self isMarzipan];
  v6 = 110.0;
  if (v5)
  {
    v6 = 70.0;
  }

  v7 = [v4 constraintLessThanOrEqualToConstant:v6];
  [(PublisherHeaderView *)self setPublisherLogoImageViewHeightConstraint:v7];

  v8 = [(PublisherHeaderView *)self publisherLogoImageView];
  v9 = [v8 widthAnchor];
  v10 = [(PublisherHeaderView *)self isMarzipan];
  v11 = 270.0;
  if (v10)
  {
    v11 = 242.0;
  }

  v12 = [v9 constraintLessThanOrEqualToConstant:v11];
  [(PublisherHeaderView *)self setPublisherLogoImageViewWidthConstraint:v12];

  if (![(PublisherHeaderView *)self isMarzipan])
  {
    v13 = [(PublisherHeaderView *)self publisherLogoImageView];
    v14 = [v13 topAnchor];
    v15 = [(PublisherHeaderView *)self topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:30.0];
    [(PublisherHeaderView *)self setPublisherLogoImageViewTopConstraint:v16];
  }

  v17 = objc_alloc_init(NSMutableArray);
  if ([(PublisherHeaderView *)self isMarzipan])
  {
    v18 = [(PublisherHeaderView *)self publisherLogoImageView];
    v19 = [v18 centerYAnchor];
    v20 = [(PublisherHeaderView *)self centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
  }

  else
  {
    v21 = [(PublisherHeaderView *)self publisherLogoImageViewTopConstraint];
  }

  v50 = [(PublisherHeaderView *)self publisherLogoImageView];
  v49 = [v50 centerXAnchor];
  v48 = [(PublisherHeaderView *)self centerXAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v53[0] = v47;
  v53[1] = v21;
  v51 = v21;
  v46 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  v53[2] = v46;
  v45 = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  v53[3] = v45;
  v44 = [(PublisherHeaderView *)self publisherHeaderView];
  v43 = [v44 leadingAnchor];
  v42 = [(PublisherHeaderView *)self leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v53[4] = v41;
  v40 = [(PublisherHeaderView *)self publisherHeaderView];
  v39 = [v40 trailingAnchor];
  v38 = [(PublisherHeaderView *)self trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v53[5] = v37;
  v36 = [(PublisherHeaderView *)self publisherHeaderView];
  v22 = [v36 topAnchor];
  v23 = [(PublisherHeaderView *)self topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v53[6] = v24;
  v25 = [(PublisherHeaderView *)self publisherHeaderView];
  v26 = [v25 bottomAnchor];
  v27 = [(PublisherHeaderView *)self bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v53[7] = v28;
  v29 = [NSArray arrayWithObjects:v53 count:8];
  [v17 addObjectsFromArray:v29];

  if ([(PublisherHeaderView *)self isMarzipan])
  {
    v30 = [(PublisherHeaderView *)self publisherLogoImageView];
    v31 = [v30 topAnchor];
    v32 = [(PublisherHeaderView *)self publisherHeaderView];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:9.0];
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

  v8 = [(PublisherHeaderView *)self publisherHeaderView];
  v9 = [v8 _headerTapGesture];
  [v9 setCancelsTouchesInView:0];

  v10 = [(PublisherHeaderView *)self publisherHeaderView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(PublisherHeaderView *)self publisherHeaderView];
  v12 = +[UIColor clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [(PublisherHeaderView *)self publisherHeaderView];
  [v13 setHeaderSize:2];

  v14 = [(PublisherHeaderView *)self publisherHeaderView];
  [v14 setDelegate:self];

  v15 = [(PublisherHeaderView *)self publisherHeaderView];
  [v15 setHairLineAlpha:0.0];

  if (sub_10000FA08(self) == 5)
  {
    v16 = [(PublisherHeaderView *)self actionManager];
    v17 = [v16 headerEllipsis];
    v18 = [(PublisherHeaderView *)self publisherHeaderView];
    [v18 setAccessoryView:v17];
  }

  v19 = [(PublisherHeaderView *)self publisherHeaderView];
  [(PublisherHeaderView *)self addSubview:v19];
}

- (void)updateImage
{
  v3 = +[MKSystemController sharedInstance];
  [v3 screenScale];
  v5 = v4;

  v6 = [(PublisherHeaderView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [(PublisherHeaderView *)self attribution];
  v9 = v8;
  if (v7 == 2)
  {
    v10 = [v8 logoCenteredIdentifier];
  }

  else
  {
    v10 = [v8 logoCenteredColorizedIdentifier];
  }

  v12 = [MKIconManager imageForIconID:v10 contentScale:1 sizeGroup:0 nightMode:v5];

  v11 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v11 setImage:v12];
}

- (void)setupStackView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PublisherHeaderView *)self setPublisherLogoImageView:v3];

  v4 = +[UIColor clearColor];
  v5 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v5 setBackgroundColor:v4];

  v6 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v7 setAccessibilityIgnoresInvertColors:1];

  v8 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v8 setAccessibilityIdentifier:@"PublisherHeaderLogo"];

  [(PublisherHeaderView *)self updateImage];
  v9 = [(PublisherHeaderView *)self attribution];
  v10 = [v9 displayName];
  v11 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v11 setAccessibilityLabel:v10];

  v12 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v12 setContentMode:1];

  v14 = [(PublisherHeaderView *)self publisherHeaderView];
  v13 = [(PublisherHeaderView *)self publisherLogoImageView];
  [v14 addSubview:v13];
}

- (void)setupSubviews
{
  [(PublisherHeaderView *)self setClipsToBounds:1];
  +[MapsTheme cardCornerRadius];
  [(PublisherHeaderView *)self _setContinuousCornerRadius:?];
  v3 = [(PublisherHeaderView *)self layer];
  [v3 setMaskedCorners:3];

  [(PublisherHeaderView *)self setupHeaderContainerView];
  [(PublisherHeaderView *)self setupStackView];

  [(PublisherHeaderView *)self setupConstraints];
}

- (double)minimumRequiredHeight
{
  v2 = [(PublisherHeaderView *)self isMarzipan];
  result = 60.0;
  if (v2)
  {
    return 59.0;
  }

  return result;
}

- (double)maximumRequiredHeight
{
  v2 = [(PublisherHeaderView *)self isMarzipan];
  result = 110.0;
  if (v2)
  {
    return 79.0;
  }

  return result;
}

- (void)adjustLogoImageViewTopConstraint:(double)a3
{
  if (![(PublisherHeaderView *)self isMarzipan])
  {
    v5 = [(PublisherHeaderView *)self publisherLogoImageViewTopConstraint];
    [v5 setConstant:a3 * 0.6 + -36.0];
  }
}

- (void)headerHeightChangedWithNewYOffset:(double)a3
{
  v5 = [(PublisherHeaderView *)self isMarzipan];
  v6 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [v6 constant];
  v8 = v7 - a3;

  [(PublisherHeaderView *)self maximumRequiredHeight];
  v10 = v9;
  [(PublisherHeaderView *)self minimumRequiredHeight];
  if (v8 <= v10)
  {
    v15 = v11;
    v12 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
    v13 = v12;
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
    v12 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
    v13 = v12;
    v14 = v10;
  }

  [v12 setConstant:v14];
  if (v5)
  {
    v16 = 3.45714286;
  }

  else
  {
    v16 = 2.45454545;
  }

  v20 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [v20 constant];
  v18 = v17 * v16;
  v19 = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  [v19 setConstant:v18];
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
  v6 = [(PublisherHeaderView *)self publisherLogoImageViewHeightConstraint];
  [v6 setConstant:v5];

  v7 = [(PublisherHeaderView *)self publisherLogoImageViewWidthConstraint];
  [v7 setConstant:v5 * v3];
}

- (PublisherHeaderView)initWithDelegate:(id)a3 usingPublisherAttribution:(id)a4 usingAnalyticsManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PublisherHeaderView;
  v11 = [(PublisherHeaderView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_attribution, a4);
    objc_storeStrong(&v12->_analyticsManager, a5);
    v12->_isMarzipan = sub_10000FA08(v12) == 5;
    [(PublisherHeaderView *)v12 setAccessibilityIdentifier:@"PublisherHeader"];
    [(PublisherHeaderView *)v12 setupSubviews];
  }

  return v12;
}

@end