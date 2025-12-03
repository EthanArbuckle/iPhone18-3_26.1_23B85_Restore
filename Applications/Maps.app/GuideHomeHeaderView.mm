@interface GuideHomeHeaderView
+ (double)maximumRequiredHeightWithFeaturedGuideTitle:(id)title maxWidth:(double)width;
- (CGSize)sizeForEditorsPickLabel;
- (GuideHomeHeaderView)initWithFrame:(CGRect)frame;
- (GuideHomeHeaderViewActionDelegate)headerDelegate;
- (void)addCollectionNameView;
- (void)addOpenGuideButton;
- (void)addPublisherLogoImage;
- (void)configureWithGuidesHomeHeaderViewModel:(id)model maxWidth:(double)width delegate:(id)delegate;
- (void)didChangeContentYOffset:(double)offset;
- (void)didTapOpenGuide:(id)guide;
- (void)displayEditorsPickLabel;
- (void)setImageMetadataUsingWidth:(double)width;
- (void)setupBottomGradient;
- (void)setupConstraints;
- (void)setupEditorsPickView;
- (void)setupGradientAndImageContainerView;
- (void)setupGuideImageView;
- (void)setupStackView;
- (void)setupSubviews;
- (void)setupTopGradient;
- (void)updateEditorsPickTop;
@end

@implementation GuideHomeHeaderView

- (GuideHomeHeaderViewActionDelegate)headerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  return WeakRetained;
}

- (void)didTapOpenGuide:(id)guide
{
  headerDelegate = [(GuideHomeHeaderView *)self headerDelegate];
  viewModel = [(GuideHomeHeaderView *)self viewModel];
  featuredGuide = [viewModel featuredGuide];
  [headerDelegate didSelectGuide:featuredGuide];
}

- (void)setupConstraints
{
  constraints = [(GuideHomeHeaderView *)self constraints];
  v4 = [constraints count];

  if (!v4)
  {
    gradientAndImageContainerView = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    topAnchor = [gradientAndImageContainerView topAnchor];
    contentView = [(GuideHomeHeaderView *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v125 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v130[0] = v125;
    gradientAndImageContainerView2 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    leadingAnchor = [gradientAndImageContainerView2 leadingAnchor];
    contentView2 = [(GuideHomeHeaderView *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v120 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v130[1] = v120;
    gradientAndImageContainerView3 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    trailingAnchor = [gradientAndImageContainerView3 trailingAnchor];
    contentView3 = [(GuideHomeHeaderView *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v115 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v130[2] = v115;
    gradientAndImageContainerView4 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    heightAnchor = [gradientAndImageContainerView4 heightAnchor];
    +[GuideHomeHeaderView maximumCollectionImageHeight];
    v112 = [heightAnchor constraintEqualToConstant:?];
    v130[3] = v112;
    collectionImageView = [(GuideHomeHeaderView *)self collectionImageView];
    topAnchor3 = [collectionImageView topAnchor];
    gradientAndImageContainerView5 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    topAnchor4 = [gradientAndImageContainerView5 topAnchor];
    v107 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v130[4] = v107;
    collectionImageView2 = [(GuideHomeHeaderView *)self collectionImageView];
    leadingAnchor3 = [collectionImageView2 leadingAnchor];
    gradientAndImageContainerView6 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    leadingAnchor4 = [gradientAndImageContainerView6 leadingAnchor];
    v102 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v130[5] = v102;
    collectionImageView3 = [(GuideHomeHeaderView *)self collectionImageView];
    trailingAnchor3 = [collectionImageView3 trailingAnchor];
    gradientAndImageContainerView7 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    trailingAnchor4 = [gradientAndImageContainerView7 trailingAnchor];
    v97 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v130[6] = v97;
    collectionImageView4 = [(GuideHomeHeaderView *)self collectionImageView];
    bottomAnchor = [collectionImageView4 bottomAnchor];
    gradientAndImageContainerView8 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    bottomAnchor2 = [gradientAndImageContainerView8 bottomAnchor];
    v92 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v130[7] = v92;
    bottomGradientView = [(GuideHomeHeaderView *)self bottomGradientView];
    leadingAnchor5 = [bottomGradientView leadingAnchor];
    gradientAndImageContainerView9 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    leadingAnchor6 = [gradientAndImageContainerView9 leadingAnchor];
    v87 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v130[8] = v87;
    bottomGradientView2 = [(GuideHomeHeaderView *)self bottomGradientView];
    trailingAnchor5 = [bottomGradientView2 trailingAnchor];
    gradientAndImageContainerView10 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    trailingAnchor6 = [gradientAndImageContainerView10 trailingAnchor];
    v82 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v130[9] = v82;
    bottomGradientView3 = [(GuideHomeHeaderView *)self bottomGradientView];
    bottomAnchor3 = [bottomGradientView3 bottomAnchor];
    gradientAndImageContainerView11 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    bottomAnchor4 = [gradientAndImageContainerView11 bottomAnchor];
    v77 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v130[10] = v77;
    bottomGradientView4 = [(GuideHomeHeaderView *)self bottomGradientView];
    heightAnchor2 = [bottomGradientView4 heightAnchor];
    v74 = [heightAnchor2 constraintEqualToConstant:104.0];
    v130[11] = v74;
    topGradientView = [(GuideHomeHeaderView *)self topGradientView];
    leadingAnchor7 = [topGradientView leadingAnchor];
    gradientAndImageContainerView12 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    leadingAnchor8 = [gradientAndImageContainerView12 leadingAnchor];
    v69 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v130[12] = v69;
    topGradientView2 = [(GuideHomeHeaderView *)self topGradientView];
    trailingAnchor7 = [topGradientView2 trailingAnchor];
    gradientAndImageContainerView13 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    trailingAnchor8 = [gradientAndImageContainerView13 trailingAnchor];
    v64 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v130[13] = v64;
    topGradientView3 = [(GuideHomeHeaderView *)self topGradientView];
    topAnchor5 = [topGradientView3 topAnchor];
    gradientAndImageContainerView14 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    topAnchor6 = [gradientAndImageContainerView14 topAnchor];
    v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v130[14] = v59;
    topGradientView4 = [(GuideHomeHeaderView *)self topGradientView];
    heightAnchor3 = [topGradientView4 heightAnchor];
    v56 = [heightAnchor3 constraintEqualToConstant:242.0];
    v130[15] = v56;
    publisherLogoImageView = [(GuideHomeHeaderView *)self publisherLogoImageView];
    leadingAnchor9 = [publisherLogoImageView leadingAnchor];
    contentView4 = [(GuideHomeHeaderView *)self contentView];
    leadingAnchor10 = [contentView4 leadingAnchor];
    v51 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
    v130[16] = v51;
    publisherLogoImageView2 = [(GuideHomeHeaderView *)self publisherLogoImageView];
    bottomAnchor5 = [publisherLogoImageView2 bottomAnchor];
    metadataStackView = [(GuideHomeHeaderView *)self metadataStackView];
    topAnchor7 = [metadataStackView topAnchor];
    v46 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7];
    v130[17] = v46;
    publisherLogoImageView3 = [(GuideHomeHeaderView *)self publisherLogoImageView];
    heightAnchor4 = [publisherLogoImageView3 heightAnchor];
    v43 = [heightAnchor4 constraintEqualToConstant:40.0];
    v130[18] = v43;
    metadataStackView2 = [(GuideHomeHeaderView *)self metadataStackView];
    leadingAnchor11 = [metadataStackView2 leadingAnchor];
    contentView5 = [(GuideHomeHeaderView *)self contentView];
    leadingAnchor12 = [contentView5 leadingAnchor];
    v38 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
    v130[19] = v38;
    metadataStackView3 = [(GuideHomeHeaderView *)self metadataStackView];
    trailingAnchor9 = [metadataStackView3 trailingAnchor];
    contentView6 = [(GuideHomeHeaderView *)self contentView];
    trailingAnchor10 = [contentView6 trailingAnchor];
    v33 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
    v130[20] = v33;
    metadataStackView4 = [(GuideHomeHeaderView *)self metadataStackView];
    topAnchor8 = [metadataStackView4 topAnchor];
    contentView7 = [(GuideHomeHeaderView *)self contentView];
    topAnchor9 = [contentView7 topAnchor];
    v28 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:topAnchor9];
    v130[21] = v28;
    metadataStackView5 = [(GuideHomeHeaderView *)self metadataStackView];
    bottomAnchor6 = [metadataStackView5 bottomAnchor];
    contentView8 = [(GuideHomeHeaderView *)self contentView];
    bottomAnchor7 = [contentView8 bottomAnchor];
    v23 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-24.0];
    v130[22] = v23;
    contentView9 = [(GuideHomeHeaderView *)self contentView];
    topAnchor10 = [contentView9 topAnchor];
    topAnchor11 = [(GuideHomeHeaderView *)self topAnchor];
    v19 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v130[23] = v19;
    contentView10 = [(GuideHomeHeaderView *)self contentView];
    leadingAnchor13 = [contentView10 leadingAnchor];
    leadingAnchor14 = [(GuideHomeHeaderView *)self leadingAnchor];
    v15 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v130[24] = v15;
    contentView11 = [(GuideHomeHeaderView *)self contentView];
    trailingAnchor11 = [contentView11 trailingAnchor];
    trailingAnchor12 = [(GuideHomeHeaderView *)self trailingAnchor];
    v8 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v130[25] = v8;
    contentView12 = [(GuideHomeHeaderView *)self contentView];
    bottomAnchor8 = [contentView12 bottomAnchor];
    bottomAnchor9 = [(GuideHomeHeaderView *)self bottomAnchor];
    v12 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v130[26] = v12;
    v13 = [NSArray arrayWithObjects:v130 count:27];
    [(GuideHomeHeaderView *)self setConstraints:v13];

    constraints2 = [(GuideHomeHeaderView *)self constraints];
    [NSLayoutConstraint activateConstraints:constraints2];
  }
}

- (void)setupTopGradient
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuideHomeHeaderView *)self setTopGradientView:v3];

  topGradientView = [(GuideHomeHeaderView *)self topGradientView];
  [topGradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  topGradientView2 = [(GuideHomeHeaderView *)self topGradientView];
  [topGradientView2 setBackgroundColor:v5];

  gradientAndImageContainerView = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  topGradientView3 = [(GuideHomeHeaderView *)self topGradientView];
  [gradientAndImageContainerView addSubview:topGradientView3];
}

- (void)setupBottomGradient
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuideHomeHeaderView *)self setBottomGradientView:v3];

  bottomGradientView = [(GuideHomeHeaderView *)self bottomGradientView];
  [bottomGradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  bottomGradientView2 = [(GuideHomeHeaderView *)self bottomGradientView];
  [bottomGradientView2 setBackgroundColor:v5];

  gradientAndImageContainerView = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  bottomGradientView3 = [(GuideHomeHeaderView *)self bottomGradientView];
  [gradientAndImageContainerView addSubview:bottomGradientView3];
}

- (void)addOpenGuideButton
{
  openGuideButton = [(GuideHomeHeaderView *)self openGuideButton];

  if (!openGuideButton)
  {
    v4 = objc_alloc_init(UIView);
    [(GuideHomeHeaderView *)self setButtonView:v4];

    buttonView = [(GuideHomeHeaderView *)self buttonView];
    [buttonView setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = +[UIColor clearColor];
    buttonView2 = [(GuideHomeHeaderView *)self buttonView];
    [buttonView2 setBackgroundColor:v6];

    buttonView3 = [(GuideHomeHeaderView *)self buttonView];
    [buttonView3 setUserInteractionEnabled:1];

    v9 = [@"GuideHomeHeader" stringByAppendingString:@"ButtonView"];
    buttonView4 = [(GuideHomeHeaderView *)self buttonView];
    [buttonView4 setAccessibilityIdentifier:v9];

    v64 = [UIBlurEffect effectWithStyle:1];
    v11 = [[UIVisualEffectView alloc] initWithEffect:v64];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 _setContinuousCornerRadius:10.0];
    buttonView5 = [(GuideHomeHeaderView *)self buttonView];
    [buttonView5 addSubview:v11];

    v66 = NSFontAttributeName;
    v13 = +[UIFont system17Bold];
    v67 = v13;
    v63 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];

    v14 = [NSAttributedString alloc];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"[Guide Home View] Open Guide" value:@"localized string not found" table:0];
    v62 = [v14 initWithString:v16 attributes:v63];

    v17 = [UIButton buttonWithType:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setAttributedTitle:v62 forState:0];
    [v17 addTarget:self action:"didTapOpenGuide:" forControlEvents:64];
    v18 = +[UIColor whiteColor];
    titleLabel = [v17 titleLabel];
    [titleLabel setTextColor:v18];

    v20 = [@"GuideHomeHeader" stringByAppendingString:@"Button"];
    [v17 setAccessibilityIdentifier:v20];

    [(GuideHomeHeaderView *)self setOpenGuideButton:v17];
    buttonView6 = [(GuideHomeHeaderView *)self buttonView];
    [buttonView6 addSubview:v17];

    metadataStackView = [(GuideHomeHeaderView *)self metadataStackView];
    buttonView7 = [(GuideHomeHeaderView *)self buttonView];
    [metadataStackView addArrangedSubview:buttonView7];

    [(GuideHomeHeaderView *)self maxWidth];
    v25 = v24 + -32.0;
    buttonView8 = [(GuideHomeHeaderView *)self buttonView];
    heightAnchor = [buttonView8 heightAnchor];
    v59 = [heightAnchor constraintEqualToConstant:50.0];
    v65[0] = v59;
    buttonView9 = [(GuideHomeHeaderView *)self buttonView];
    widthAnchor = [buttonView9 widthAnchor];
    v56 = [widthAnchor constraintEqualToConstant:v25];
    v65[1] = v56;
    topAnchor = [v11 topAnchor];
    buttonView10 = [(GuideHomeHeaderView *)self buttonView];
    topAnchor2 = [buttonView10 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v65[2] = v52;
    leadingAnchor = [v11 leadingAnchor];
    buttonView11 = [(GuideHomeHeaderView *)self buttonView];
    leadingAnchor2 = [buttonView11 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[3] = v48;
    trailingAnchor = [v11 trailingAnchor];
    buttonView12 = [(GuideHomeHeaderView *)self buttonView];
    trailingAnchor2 = [buttonView12 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44 = v11;
    v65[4] = v43;
    bottomAnchor = [v11 bottomAnchor];
    buttonView13 = [(GuideHomeHeaderView *)self buttonView];
    bottomAnchor2 = [buttonView13 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v65[5] = v39;
    topAnchor3 = [v17 topAnchor];
    topAnchor4 = [v11 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65[6] = v36;
    leadingAnchor3 = [v17 leadingAnchor];
    leadingAnchor4 = [v11 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v65[7] = v27;
    trailingAnchor3 = [v17 trailingAnchor];
    trailingAnchor4 = [v11 trailingAnchor];
    v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v65[8] = v30;
    bottomAnchor3 = [v17 bottomAnchor];
    bottomAnchor4 = [v11 bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v65[9] = v33;
    v34 = [NSArray arrayWithObjects:v65 count:10];
    [NSLayoutConstraint activateConstraints:v34];
  }
}

- (void)addCollectionNameView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setCollectionLabel:v3];

  v4 = +[UIColor whiteColor];
  collectionLabel = [(GuideHomeHeaderView *)self collectionLabel];
  [collectionLabel setTextColor:v4];

  collectionLabel2 = [(GuideHomeHeaderView *)self collectionLabel];
  [collectionLabel2 setNumberOfLines:0];

  v7 = [@"GuideHomeHeader" stringByAppendingString:@"CollectionLabel"];
  collectionLabel3 = [(GuideHomeHeaderView *)self collectionLabel];
  [collectionLabel3 setAccessibilityIdentifier:v7];

  metadataStackView = [(GuideHomeHeaderView *)self metadataStackView];
  collectionLabel4 = [(GuideHomeHeaderView *)self collectionLabel];
  [metadataStackView addArrangedSubview:collectionLabel4];
}

- (void)addPublisherLogoImage
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setPublisherLogoImageView:v3];

  publisherLogoImageView = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  publisherLogoImageView2 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView2 setAccessibilityIgnoresInvertColors:1];

  v6 = [@"GuideHomeHeader" stringByAppendingString:@"PublisherLogoImage"];
  publisherLogoImageView3 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView3 setAccessibilityIdentifier:v6];

  publisherLogoImageView4 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView4 setContentMode:1];

  contentView = [(GuideHomeHeaderView *)self contentView];
  publisherLogoImageView5 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [contentView addSubview:publisherLogoImageView5];
}

- (void)setupEditorsPickView
{
  v29 = [UIBlurEffect effectWithBlurRadius:10.0];
  v3 = [[UIVisualEffectView alloc] initWithEffect:v29];
  [(GuideHomeHeaderView *)self setEditorPickView:v3];

  editorPickView = [(GuideHomeHeaderView *)self editorPickView];
  [editorPickView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  editorPickView2 = [(GuideHomeHeaderView *)self editorPickView];
  [editorPickView2 setBackgroundColor:v5];

  v7 = +[UIColor blackColor];
  v8 = [v7 colorWithAlphaComponent:0.2];
  editorPickView3 = [(GuideHomeHeaderView *)self editorPickView];
  contentView = [editorPickView3 contentView];
  [contentView setBackgroundColor:v8];

  v11 = [@"GuideHomeHeader" stringByAppendingString:@"EditorPick"];
  editorPickView4 = [(GuideHomeHeaderView *)self editorPickView];
  [editorPickView4 setAccessibilityIdentifier:v11];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setEditorPickLabel:v13];

  v14 = [@"GuideHomeHeader" stringByAppendingString:@"EditorPickLabel"];
  editorPickLabel = [(GuideHomeHeaderView *)self editorPickLabel];
  [editorPickLabel setAccessibilityIdentifier:v14];

  editorPickLabel2 = [(GuideHomeHeaderView *)self editorPickLabel];
  [editorPickLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = +[UIColor whiteColor];
  editorPickLabel3 = [(GuideHomeHeaderView *)self editorPickLabel];
  [editorPickLabel3 setTextColor:v17];

  editorPickLabel4 = [(GuideHomeHeaderView *)self editorPickLabel];
  LODWORD(v20) = 1148846080;
  [editorPickLabel4 setContentCompressionResistancePriority:0 forAxis:v20];

  editorPickLabel5 = [(GuideHomeHeaderView *)self editorPickLabel];
  [editorPickLabel5 setNumberOfLines:1];

  editorPickLabel6 = [(GuideHomeHeaderView *)self editorPickLabel];
  [editorPickLabel6 setTextAlignment:1];

  editorPickView5 = [(GuideHomeHeaderView *)self editorPickView];
  [editorPickView5 setHidden:1];

  editorPickView6 = [(GuideHomeHeaderView *)self editorPickView];
  contentView2 = [editorPickView6 contentView];
  editorPickLabel7 = [(GuideHomeHeaderView *)self editorPickLabel];
  [contentView2 addSubview:editorPickLabel7];

  contentView3 = [(GuideHomeHeaderView *)self contentView];
  editorPickView7 = [(GuideHomeHeaderView *)self editorPickView];
  [contentView3 addSubview:editorPickView7];
}

- (CGSize)sizeForEditorsPickLabel
{
  editorPickLabel = [(GuideHomeHeaderView *)self editorPickLabel];
  attributedText = [editorPickLabel attributedText];
  [attributedText size];
  v6 = v5;
  v8 = v7;

  editorPickView = [(GuideHomeHeaderView *)self editorPickView];
  [editorPickView _setContinuousCornerRadius:4.0];

  v10 = v6 + 16.0;
  v11 = v8 + 6.0;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setupStackView
{
  v3 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setMetadataStackView:v3];

  metadataStackView = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  metadataStackView2 = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView2 setAxis:1];

  metadataStackView3 = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView3 setDistribution:0];

  metadataStackView4 = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView4 setAlignment:1];

  metadataStackView5 = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView5 setSpacing:20.0];

  v9 = [@"GuideHomeHeader" stringByAppendingString:@"MetadataStack"];
  metadataStackView6 = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView6 setAccessibilityIdentifier:v9];

  contentView = [(GuideHomeHeaderView *)self contentView];
  metadataStackView7 = [(GuideHomeHeaderView *)self metadataStackView];
  [contentView addSubview:metadataStackView7];

  [(GuideHomeHeaderView *)self addCollectionNameView];
}

- (void)setupGradientAndImageContainerView
{
  v3 = objc_alloc_init(UIView);
  [(GuideHomeHeaderView *)self setGradientAndImageContainerView:v3];

  gradientAndImageContainerView = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [gradientAndImageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  gradientAndImageContainerView2 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [gradientAndImageContainerView2 setBackgroundColor:v5];

  gradientAndImageContainerView3 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [gradientAndImageContainerView3 setClipsToBounds:1];

  v8 = [@"GuideHomeHeader" stringByAppendingString:@"GradientAndImageContainer"];
  gradientAndImageContainerView4 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [gradientAndImageContainerView4 setAccessibilityIdentifier:v8];

  contentView = [(GuideHomeHeaderView *)self contentView];
  gradientAndImageContainerView5 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [contentView addSubview:gradientAndImageContainerView5];

  [(GuideHomeHeaderView *)self setupGuideImageView];
  [(GuideHomeHeaderView *)self setupBottomGradient];

  [(GuideHomeHeaderView *)self setupTopGradient];
}

- (void)setupGuideImageView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setCollectionImageView:v3];

  collectionImageView = [(GuideHomeHeaderView *)self collectionImageView];
  [collectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionImageView2 = [(GuideHomeHeaderView *)self collectionImageView];
  [collectionImageView2 setAccessibilityIgnoresInvertColors:1];

  v6 = [@"GuideHomeHeader" stringByAppendingString:@"CollectionImage"];
  collectionImageView3 = [(GuideHomeHeaderView *)self collectionImageView];
  [collectionImageView3 setAccessibilityIdentifier:v6];

  collectionImageView4 = [(GuideHomeHeaderView *)self collectionImageView];
  [collectionImageView4 setContentMode:2];

  gradientAndImageContainerView = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  collectionImageView5 = [(GuideHomeHeaderView *)self collectionImageView];
  [gradientAndImageContainerView addSubview:collectionImageView5];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UIView);
  [(GuideHomeHeaderView *)self setContentView:v3];

  contentView = [(GuideHomeHeaderView *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  contentView2 = [(GuideHomeHeaderView *)self contentView];
  [contentView2 setBackgroundColor:v5];

  v7 = [@"GuideHomeHeader" stringByAppendingString:@"Content"];
  contentView3 = [(GuideHomeHeaderView *)self contentView];
  [contentView3 setAccessibilityIdentifier:v7];

  contentView4 = [(GuideHomeHeaderView *)self contentView];
  [(GuideHomeHeaderView *)self addSubview:contentView4];

  [(GuideHomeHeaderView *)self setupGradientAndImageContainerView];
  [(GuideHomeHeaderView *)self addPublisherLogoImage];
  [(GuideHomeHeaderView *)self setupStackView];

  [(GuideHomeHeaderView *)self setupEditorsPickView];
}

- (void)setImageMetadataUsingWidth:(double)width
{
  logoWidthConstraint = [(GuideHomeHeaderView *)self logoWidthConstraint];
  [logoWidthConstraint setActive:0];

  [(GuideHomeHeaderView *)self setLogoWidthConstraint:0];
  objc_initWeak(&location, self);
  viewModel = [(GuideHomeHeaderView *)self viewModel];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1008CFE6C;
  v17[3] = &unk_101650EA8;
  objc_copyWeak(&v18, &location);
  [viewModel publisherLogoImageWithCompletion:v17];

  collectionImageView = [(GuideHomeHeaderView *)self collectionImageView];
  image = [collectionImageView image];
  if (image)
  {

LABEL_5:
    goto LABEL_6;
  }

  viewModel2 = [(GuideHomeHeaderView *)self viewModel];

  if (viewModel2)
  {
    v10 = +[NSDate date];
    viewModel3 = [(GuideHomeHeaderView *)self viewModel];
    +[GuideHomeHeaderView maximumCollectionImageHeight];
    v13 = v12;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1008CFFF0;
    v14[3] = &unk_10162DA08;
    objc_copyWeak(&v16, &location);
    collectionImageView = v10;
    v15 = collectionImageView;
    [viewModel3 collectionImageForSize:v14 onCompletion:{width, v13}];

    objc_destroyWeak(&v16);
    goto LABEL_5;
  }

LABEL_6:
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)updateEditorsPickTop
{
  v3 = +[UIFont system17Bold];
  [v3 _scaledValueForValue:1 useLanguageAwareScaling:24.0];
  v5 = v4;

  v6 = +[UIFont system17Bold];
  [v6 lineHeight];
  v8 = v5 + 48.0 + v7;

  editorsPickTopConstraint = [(GuideHomeHeaderView *)self editorsPickTopConstraint];
  [editorsPickTopConstraint setConstant:v8];
}

- (void)displayEditorsPickLabel
{
  editorPickLabel = [(GuideHomeHeaderView *)self editorPickLabel];
  attributedText = [editorPickLabel attributedText];
  viewModel = [(GuideHomeHeaderView *)self viewModel];
  sectionTitle = [viewModel sectionTitle];
  v7 = [attributedText isEqualToAttributedString:sectionTitle];

  if ((v7 & 1) == 0)
  {
    editorPickView = [(GuideHomeHeaderView *)self editorPickView];
    [editorPickView setHidden:0];

    viewModel2 = [(GuideHomeHeaderView *)self viewModel];
    sectionTitle2 = [viewModel2 sectionTitle];
    editorPickLabel2 = [(GuideHomeHeaderView *)self editorPickLabel];
    [editorPickLabel2 setAttributedText:sectionTitle2];

    [(GuideHomeHeaderView *)self sizeForEditorsPickLabel];
    v13 = v12;
    v15 = v14;
    editorPickView2 = [(GuideHomeHeaderView *)self editorPickView];
    topAnchor = [editorPickView2 topAnchor];
    contentView = [(GuideHomeHeaderView *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(GuideHomeHeaderView *)self setEditorsPickTopConstraint:v20];

    [(GuideHomeHeaderView *)self updateEditorsPickTop];
    editorPickLabel3 = [(GuideHomeHeaderView *)self editorPickLabel];
    centerXAnchor = [editorPickLabel3 centerXAnchor];
    editorPickView3 = [(GuideHomeHeaderView *)self editorPickView];
    centerXAnchor2 = [editorPickView3 centerXAnchor];
    v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v44[0] = v39;
    editorPickLabel4 = [(GuideHomeHeaderView *)self editorPickLabel];
    centerYAnchor = [editorPickLabel4 centerYAnchor];
    editorPickView4 = [(GuideHomeHeaderView *)self editorPickView];
    centerYAnchor2 = [editorPickView4 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[1] = v34;
    editorsPickTopConstraint = [(GuideHomeHeaderView *)self editorsPickTopConstraint];
    v44[2] = editorsPickTopConstraint;
    editorPickView5 = [(GuideHomeHeaderView *)self editorPickView];
    leadingAnchor = [editorPickView5 leadingAnchor];
    contentView2 = [(GuideHomeHeaderView *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v44[3] = v23;
    editorPickView6 = [(GuideHomeHeaderView *)self editorPickView];
    heightAnchor = [editorPickView6 heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:v15];
    v44[4] = v26;
    editorPickView7 = [(GuideHomeHeaderView *)self editorPickView];
    widthAnchor = [editorPickView7 widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:v13];
    v44[5] = v29;
    v30 = [NSArray arrayWithObjects:v44 count:6];
    [NSLayoutConstraint activateConstraints:v30];
  }
}

- (void)didChangeContentYOffset:(double)offset
{
  publisherLogoImageView = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView frame];
  v8 = offset / v7;

  v9 = fmin(fmax(1.0 - v8, 0.0), 1.0);
  publisherLogoImageView2 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [publisherLogoImageView2 setAlpha:v9];

  metadataStackView = [(GuideHomeHeaderView *)self metadataStackView];
  [metadataStackView setAlpha:v9];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1008D0BB0;
  v29[3] = &unk_101661650;
  v29[4] = self;
  *&v29[5] = v8;
  [UIView animateWithDuration:v29 animations:0.2];
  collectionImageView = [(GuideHomeHeaderView *)self collectionImageView];
  [collectionImageView setAlpha:v9];

  topGradientView = [(GuideHomeHeaderView *)self topGradientView];
  [topGradientView setAlpha:v9];

  contentView = [(GuideHomeHeaderView *)self contentView];
  [contentView setAlpha:v9];

  if (offset >= 0.0)
  {
    CGAffineTransformMakeScale(&v24, 1.0, 1.0);
    collectionImageView2 = [(GuideHomeHeaderView *)self collectionImageView];
    v22 = collectionImageView2;
    v25 = *&v24.a;
    v26 = *&v24.c;
    v23 = *&v24.tx;
  }

  else
  {
    viewModel = [(GuideHomeHeaderView *)self viewModel];
    collectionLongTitle = [viewModel collectionLongTitle];
    collectionTitle = collectionLongTitle;
    if (!collectionLongTitle)
    {
      viewModel2 = [(GuideHomeHeaderView *)self viewModel];
      collectionTitle = [viewModel2 collectionTitle];
    }

    [(GuideHomeHeaderView *)self maxWidth];
    [GuideHomeHeaderView maximumRequiredHeightWithFeaturedGuideTitle:collectionTitle maxWidth:?];
    v19 = v18;
    if (!collectionLongTitle)
    {
    }

    v20 = fmax(fabs(offset) / v19 + 1.0, 0.0);
    CGAffineTransformMakeScale(&v28, v20, v20);
    collectionImageView2 = [(GuideHomeHeaderView *)self collectionImageView];
    v22 = collectionImageView2;
    v25 = *&v28.a;
    v26 = *&v28.c;
    v23 = *&v28.tx;
  }

  v27 = v23;
  [collectionImageView2 setTransform:&v25];
}

- (void)configureWithGuidesHomeHeaderViewModel:(id)model maxWidth:(double)width delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  [(GuideHomeHeaderView *)self setMaxWidth:width];
  [(GuideHomeHeaderView *)self setViewModel:modelCopy];
  [(GuideHomeHeaderView *)self setHeaderDelegate:delegateCopy];

  [(GuideHomeHeaderView *)self setupConstraints];
  collectionLongTitle = [modelCopy collectionLongTitle];
  collectionTitle = collectionLongTitle;
  if (!collectionLongTitle)
  {
    collectionTitle = [modelCopy collectionTitle];
  }

  collectionLabel = [(GuideHomeHeaderView *)self collectionLabel];
  [collectionLabel setAttributedText:collectionTitle];

  if (!collectionLongTitle)
  {
  }

  viewModel = [(GuideHomeHeaderView *)self viewModel];
  backgroundColor = [viewModel backgroundColor];
  [(GuideHomeHeaderView *)self setBackgroundColor:backgroundColor];

  [(GuideHomeHeaderView *)self displayEditorsPickLabel];
  topGradientView = [(GuideHomeHeaderView *)self topGradientView];
  gradientLayer = [topGradientView gradientLayer];
  [gradientLayer setStartPoint:{0.5, 0.0}];

  topGradientView2 = [(GuideHomeHeaderView *)self topGradientView];
  gradientLayer2 = [topGradientView2 gradientLayer];
  [gradientLayer2 setEndPoint:{0.5, 1.0}];

  v19 = +[UIColor blackColor];
  v20 = [v19 colorWithAlphaComponent:0.5];
  v39[0] = [v20 CGColor];
  v21 = +[UIColor blackColor];
  v22 = [v21 colorWithAlphaComponent:0.0];
  v39[1] = [v22 CGColor];
  v23 = [NSArray arrayWithObjects:v39 count:2];
  topGradientView3 = [(GuideHomeHeaderView *)self topGradientView];
  gradientLayer3 = [topGradientView3 gradientLayer];
  [gradientLayer3 setColors:v23];

  bottomGradientView = [(GuideHomeHeaderView *)self bottomGradientView];
  gradientLayer4 = [bottomGradientView gradientLayer];
  [gradientLayer4 setStartPoint:{0.5, 0.0}];

  bottomGradientView2 = [(GuideHomeHeaderView *)self bottomGradientView];
  gradientLayer5 = [bottomGradientView2 gradientLayer];
  [gradientLayer5 setEndPoint:{0.5, 1.0}];

  viewModel2 = [(GuideHomeHeaderView *)self viewModel];
  backgroundColor2 = [viewModel2 backgroundColor];
  v32 = [backgroundColor2 colorWithAlphaComponent:0.0];
  v38[0] = [v32 CGColor];
  viewModel3 = [(GuideHomeHeaderView *)self viewModel];
  backgroundColor3 = [viewModel3 backgroundColor];
  v38[1] = [backgroundColor3 CGColor];
  v35 = [NSArray arrayWithObjects:v38 count:2];
  bottomGradientView3 = [(GuideHomeHeaderView *)self bottomGradientView];
  gradientLayer6 = [bottomGradientView3 gradientLayer];
  [gradientLayer6 setColors:v35];

  [(GuideHomeHeaderView *)self setImageMetadataUsingWidth:width];
  [(GuideHomeHeaderView *)self addOpenGuideButton];
}

- (GuideHomeHeaderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = GuideHomeHeaderView;
  v3 = [(GuideHomeHeaderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(GuideHomeHeaderView *)v3 setAccessibilityIdentifier:v5];

    [(GuideHomeHeaderView *)v3 setupSubviews];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

+ (double)maximumRequiredHeightWithFeaturedGuideTitle:(id)title maxWidth:(double)width
{
  [title boundingRectWithSize:1 options:0 context:{width + -32.0, 1.79769313e308}];
  v5 = v4;
  +[GuideHomeHeaderView maximumCollectionImageHeight];
  return v5 + v6 + 94.0;
}

@end