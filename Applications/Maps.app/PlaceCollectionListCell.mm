@interface PlaceCollectionListCell
- (PlaceCollectionListCell)initWithFrame:(CGRect)frame;
- (void)configureWithModel:(id)model;
- (void)prepareForReuse;
- (void)setImageMetadata;
- (void)setTextMetadata;
- (void)setupConstraints;
- (void)setupCornerRadius;
- (void)setupImageView;
- (void)setupMetadata;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaceCollectionListCell

- (void)setupMetadata
{
  v3 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setCollectionLabelStackView:v7];

  collectionLabelStackView = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [collectionLabelStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionLabelStackView2 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [collectionLabelStackView2 setAxis:1];

  collectionLabelStackView3 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [collectionLabelStackView3 setDistribution:4];

  collectionLabelStackView4 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [collectionLabelStackView4 setSpacing:2.0];

  collectionLabelStackView5 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [collectionLabelStackView5 setAccessibilityIdentifier:@"CollectionLabelStack"];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setCollectionLabel:v13];

  collectionLabel = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionLabel2 = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabel2 setNumberOfLines:0];

  collectionLabel3 = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabel3 setAccessibilityIdentifier:@"CollectionLabel"];

  collectionLabelStackView6 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  collectionLabel4 = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabelStackView6 addArrangedSubview:collectionLabel4];

  v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setCollectionSecondaryLabel:v19];

  collectionSecondaryLabel = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionSecondaryLabel2 = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel2 setNumberOfLines:0];

  v22 = +[UIColor secondaryLabelColor];
  collectionSecondaryLabel3 = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel3 setTextColor:v22];

  collectionSecondaryLabel4 = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel4 setAccessibilityIdentifier:@"CollectionSecondaryLabel"];

  collectionLabelStackView7 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  collectionSecondaryLabel5 = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionLabelStackView7 addArrangedSubview:collectionSecondaryLabel5];

  contentView = [(PlaceCollectionListCell *)self contentView];
  collectionLabelStackView8 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  [contentView addSubview:collectionLabelStackView8];
}

- (void)setupImageView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setLeftImageView:v7];

  leftImageView = [(PlaceCollectionListCell *)self leftImageView];
  [leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  leftImageView2 = [(PlaceCollectionListCell *)self leftImageView];
  [leftImageView2 setAccessibilityIdentifier:@"LeftImageView"];

  v10 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setCollectionImageView:v10];

  collectionImageView = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionImageView2 = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView2 setAccessibilityIgnoresInvertColors:1];

  collectionImageView3 = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView3 setAccessibilityIdentifier:@"CollectionImage"];

  collectionImageView4 = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView4 setContentMode:1];

  leftImageView3 = [(PlaceCollectionListCell *)self leftImageView];
  collectionImageView5 = [(PlaceCollectionListCell *)self collectionImageView];
  [leftImageView3 addSubview:collectionImageView5];

  v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(PlaceCollectionListCell *)self setPublisherLogoImageView:v17];

  publisherLogoImageView = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  publisherLogoImageView2 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView2 setAccessibilityIgnoresInvertColors:1];

  publisherLogoImageView3 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView3 setAccessibilityIdentifier:@"PublisherLogoImage"];

  publisherLogoImageView4 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView4 setContentMode:1];

  leftImageView4 = [(PlaceCollectionListCell *)self leftImageView];
  publisherLogoImageView5 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [leftImageView4 addSubview:publisherLogoImageView5];

  contentView = [(PlaceCollectionListCell *)self contentView];
  leftImageView5 = [(PlaceCollectionListCell *)self leftImageView];
  [contentView addSubview:leftImageView5];
}

- (void)setupConstraints
{
  collectionImageView = [(PlaceCollectionListCell *)self collectionImageView];
  leadingAnchor = [collectionImageView leadingAnchor];
  leftImageView = [(PlaceCollectionListCell *)self leftImageView];
  leadingAnchor2 = [leftImageView leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v86[0] = v81;
  collectionImageView2 = [(PlaceCollectionListCell *)self collectionImageView];
  topAnchor = [collectionImageView2 topAnchor];
  leftImageView2 = [(PlaceCollectionListCell *)self leftImageView];
  topAnchor2 = [leftImageView2 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v86[1] = v76;
  collectionImageView3 = [(PlaceCollectionListCell *)self collectionImageView];
  bottomAnchor = [collectionImageView3 bottomAnchor];
  leftImageView3 = [(PlaceCollectionListCell *)self leftImageView];
  bottomAnchor2 = [leftImageView3 bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v86[2] = v71;
  collectionImageView4 = [(PlaceCollectionListCell *)self collectionImageView];
  trailingAnchor = [collectionImageView4 trailingAnchor];
  leftImageView4 = [(PlaceCollectionListCell *)self leftImageView];
  trailingAnchor2 = [leftImageView4 trailingAnchor];
  v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v86[3] = v66;
  publisherLogoImageView = [(PlaceCollectionListCell *)self publisherLogoImageView];
  heightAnchor = [publisherLogoImageView heightAnchor];
  v63 = [heightAnchor constraintEqualToConstant:25.0];
  v86[4] = v63;
  publisherLogoImageView2 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  widthAnchor = [publisherLogoImageView2 widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:25.0];
  v86[5] = v60;
  publisherLogoImageView3 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  bottomAnchor3 = [publisherLogoImageView3 bottomAnchor];
  collectionImageView5 = [(PlaceCollectionListCell *)self collectionImageView];
  bottomAnchor4 = [collectionImageView5 bottomAnchor];
  v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:5.0];
  v86[6] = v55;
  publisherLogoImageView4 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  trailingAnchor3 = [publisherLogoImageView4 trailingAnchor];
  collectionImageView6 = [(PlaceCollectionListCell *)self collectionImageView];
  trailingAnchor4 = [collectionImageView6 trailingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:5.0];
  v86[7] = v50;
  leftImageView5 = [(PlaceCollectionListCell *)self leftImageView];
  heightAnchor2 = [leftImageView5 heightAnchor];
  v47 = [heightAnchor2 constraintEqualToConstant:50.0];
  v86[8] = v47;
  leftImageView6 = [(PlaceCollectionListCell *)self leftImageView];
  widthAnchor2 = [leftImageView6 widthAnchor];
  v44 = [widthAnchor2 constraintEqualToConstant:50.0];
  v86[9] = v44;
  leftImageView7 = [(PlaceCollectionListCell *)self leftImageView];
  leadingAnchor3 = [leftImageView7 leadingAnchor];
  contentView = [(PlaceCollectionListCell *)self contentView];
  leadingAnchor4 = [contentView leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v86[10] = v39;
  leftImageView8 = [(PlaceCollectionListCell *)self leftImageView];
  centerYAnchor = [leftImageView8 centerYAnchor];
  collectionLabelStackView = [(PlaceCollectionListCell *)self collectionLabelStackView];
  centerYAnchor2 = [collectionLabelStackView centerYAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v86[11] = v34;
  collectionLabelStackView2 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  leadingAnchor5 = [collectionLabelStackView2 leadingAnchor];
  publisherLogoImageView5 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  trailingAnchor5 = [publisherLogoImageView5 trailingAnchor];
  v29 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:10.0];
  v86[12] = v29;
  collectionLabelStackView3 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  trailingAnchor6 = [collectionLabelStackView3 trailingAnchor];
  contentView2 = [(PlaceCollectionListCell *)self contentView];
  trailingAnchor7 = [contentView2 trailingAnchor];
  v24 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-16.0];
  v86[13] = v24;
  contentView3 = [(PlaceCollectionListCell *)self contentView];
  topAnchor3 = [contentView3 topAnchor];
  collectionLabelStackView4 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  topAnchor4 = [collectionLabelStackView4 topAnchor];
  v19 = [topAnchor3 constraintLessThanOrEqualToAnchor:topAnchor4 constant:-16.0];
  v86[14] = v19;
  contentView4 = [(PlaceCollectionListCell *)self contentView];
  topAnchor5 = [contentView4 topAnchor];
  leftImageView9 = [(PlaceCollectionListCell *)self leftImageView];
  topAnchor6 = [leftImageView9 topAnchor];
  v14 = [topAnchor5 constraintLessThanOrEqualToAnchor:topAnchor6 constant:-16.0];
  v86[15] = v14;
  contentView5 = [(PlaceCollectionListCell *)self contentView];
  bottomAnchor5 = [contentView5 bottomAnchor];
  collectionLabelStackView5 = [(PlaceCollectionListCell *)self collectionLabelStackView];
  bottomAnchor6 = [collectionLabelStackView5 bottomAnchor];
  v6 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:16.0];
  v86[16] = v6;
  contentView6 = [(PlaceCollectionListCell *)self contentView];
  bottomAnchor7 = [contentView6 bottomAnchor];
  leftImageView10 = [(PlaceCollectionListCell *)self leftImageView];
  bottomAnchor8 = [leftImageView10 bottomAnchor];
  v11 = [bottomAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor8 constant:16.0];
  v86[17] = v11;
  v12 = [NSArray arrayWithObjects:v86 count:18];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupCornerRadius
{
  collectionImageView = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView _setContinuousCornerRadius:8.0];

  collectionImageView2 = [(PlaceCollectionListCell *)self collectionImageView];
  layer = [collectionImageView2 layer];
  [layer setMasksToBounds:1];

  publisherLogoImageView = [(PlaceCollectionListCell *)self publisherLogoImageView];
  layer2 = [publisherLogoImageView layer];
  [layer2 setMasksToBounds:1];

  publisherLogoImageView2 = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView2 _setContinuousCornerRadius:5.0];
}

- (void)setupSubviews
{
  [(PlaceCollectionListCell *)self setupImageView];

  [(PlaceCollectionListCell *)self setupMetadata];
}

- (void)setImageMetadata
{
  v3 = +[NSUUID UUID];
  [(PlaceCollectionListCell *)self setUpdateIdentifier:v3];
  objc_initWeak(&location, self);
  collectionItem = [(PlaceCollectionListCell *)self collectionItem];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10085A6F0;
  v18[3] = &unk_1016612F0;
  objc_copyWeak(&v20, &location);
  v5 = v3;
  v19 = v5;
  [collectionItem publisherIconImageWithCompletion:v18];

  v6 = sub_1007982D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    collectionItem2 = [(PlaceCollectionListCell *)self collectionItem];
    collectionTitle = [collectionItem2 collectionTitle];
    string = [collectionTitle string];
    *buf = 138412290;
    v23 = string;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[⌛]Requesting image for : %@", buf, 0xCu);
  }

  v10 = +[NSDate date];
  collectionItem3 = [(PlaceCollectionListCell *)self collectionItem];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10085A7AC;
  v14[3] = &unk_10162BE30;
  objc_copyWeak(&v17, &location);
  v14[4] = self;
  v12 = v5;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [collectionItem3 collectionImageForSize:v14 onCompletion:{50.0, 50.0}];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)configureWithModel:(id)model
{
  [(PlaceCollectionListCell *)self setCollectionItem:model];
  [(PlaceCollectionListCell *)self setTextMetadata];

  [(PlaceCollectionListCell *)self setImageMetadata];
}

- (void)setTextMetadata
{
  collectionItem = [(PlaceCollectionListCell *)self collectionItem];
  collectionTitle = [collectionItem collectionTitle];
  collectionLabel = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabel setAttributedText:collectionTitle];

  collectionItem2 = [(PlaceCollectionListCell *)self collectionItem];
  secondaryCollectionTitle = [collectionItem2 secondaryCollectionTitle];
  collectionSecondaryLabel = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel setAttributedText:secondaryCollectionTitle];

  collectionItem3 = [(PlaceCollectionListCell *)self collectionItem];
  backgroundColor = [collectionItem3 backgroundColor];
  collectionImageView = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView setBackgroundColor:backgroundColor];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = PlaceCollectionListCell;
  [(PlaceCollectionListCell *)&v8 prepareForReuse];
  collectionLabel = [(PlaceCollectionListCell *)self collectionLabel];
  [collectionLabel setAttributedText:0];

  collectionSecondaryLabel = [(PlaceCollectionListCell *)self collectionSecondaryLabel];
  [collectionSecondaryLabel setAttributedText:0];

  collectionImageView = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView setBackgroundColor:0];

  collectionImageView2 = [(PlaceCollectionListCell *)self collectionImageView];
  [collectionImageView2 setImage:0];

  publisherLogoImageView = [(PlaceCollectionListCell *)self publisherLogoImageView];
  [publisherLogoImageView setImage:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PlaceCollectionListCell;
  changeCopy = change;
  [(PlaceCollectionListCell *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(PlaceCollectionListCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    collectionItem = [(PlaceCollectionListCell *)self collectionItem];
    [collectionItem contentCategorySizeDidChange];

    [(PlaceCollectionListCell *)self setTextMetadata];
  }
}

- (PlaceCollectionListCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PlaceCollectionListCell;
  v3 = [(PlaceCollectionListCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(PlaceCollectionListCell *)v3 setAccessibilityIdentifier:v5];

    [(PlaceCollectionListCell *)v3 setupSubviews];
    [(PlaceCollectionListCell *)v3 setupConstraints];
    [(PlaceCollectionListCell *)v3 setupCornerRadius];
  }

  return v3;
}

@end