@interface GuideHomeHeaderView
+ (double)maximumRequiredHeightWithFeaturedGuideTitle:(id)a3 maxWidth:(double)a4;
- (CGSize)sizeForEditorsPickLabel;
- (GuideHomeHeaderView)initWithFrame:(CGRect)a3;
- (GuideHomeHeaderViewActionDelegate)headerDelegate;
- (void)addCollectionNameView;
- (void)addOpenGuideButton;
- (void)addPublisherLogoImage;
- (void)configureWithGuidesHomeHeaderViewModel:(id)a3 maxWidth:(double)a4 delegate:(id)a5;
- (void)didChangeContentYOffset:(double)a3;
- (void)didTapOpenGuide:(id)a3;
- (void)displayEditorsPickLabel;
- (void)setImageMetadataUsingWidth:(double)a3;
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

- (void)didTapOpenGuide:(id)a3
{
  v6 = [(GuideHomeHeaderView *)self headerDelegate];
  v4 = [(GuideHomeHeaderView *)self viewModel];
  v5 = [v4 featuredGuide];
  [v6 didSelectGuide:v5];
}

- (void)setupConstraints
{
  v3 = [(GuideHomeHeaderView *)self constraints];
  v4 = [v3 count];

  if (!v4)
  {
    v129 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v127 = [v129 topAnchor];
    v128 = [(GuideHomeHeaderView *)self contentView];
    v126 = [v128 topAnchor];
    v125 = [v127 constraintEqualToAnchor:v126];
    v130[0] = v125;
    v124 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v122 = [v124 leadingAnchor];
    v123 = [(GuideHomeHeaderView *)self contentView];
    v121 = [v123 leadingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121];
    v130[1] = v120;
    v119 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v117 = [v119 trailingAnchor];
    v118 = [(GuideHomeHeaderView *)self contentView];
    v116 = [v118 trailingAnchor];
    v115 = [v117 constraintEqualToAnchor:v116];
    v130[2] = v115;
    v114 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v113 = [v114 heightAnchor];
    +[GuideHomeHeaderView maximumCollectionImageHeight];
    v112 = [v113 constraintEqualToConstant:?];
    v130[3] = v112;
    v111 = [(GuideHomeHeaderView *)self collectionImageView];
    v109 = [v111 topAnchor];
    v110 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v108 = [v110 topAnchor];
    v107 = [v109 constraintEqualToAnchor:v108];
    v130[4] = v107;
    v106 = [(GuideHomeHeaderView *)self collectionImageView];
    v104 = [v106 leadingAnchor];
    v105 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v103 = [v105 leadingAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v130[5] = v102;
    v101 = [(GuideHomeHeaderView *)self collectionImageView];
    v99 = [v101 trailingAnchor];
    v100 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v98 = [v100 trailingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98];
    v130[6] = v97;
    v96 = [(GuideHomeHeaderView *)self collectionImageView];
    v94 = [v96 bottomAnchor];
    v95 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v93 = [v95 bottomAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v130[7] = v92;
    v91 = [(GuideHomeHeaderView *)self bottomGradientView];
    v89 = [v91 leadingAnchor];
    v90 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v88 = [v90 leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v130[8] = v87;
    v86 = [(GuideHomeHeaderView *)self bottomGradientView];
    v84 = [v86 trailingAnchor];
    v85 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v83 = [v85 trailingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v130[9] = v82;
    v81 = [(GuideHomeHeaderView *)self bottomGradientView];
    v79 = [v81 bottomAnchor];
    v80 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v78 = [v80 bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v130[10] = v77;
    v76 = [(GuideHomeHeaderView *)self bottomGradientView];
    v75 = [v76 heightAnchor];
    v74 = [v75 constraintEqualToConstant:104.0];
    v130[11] = v74;
    v73 = [(GuideHomeHeaderView *)self topGradientView];
    v71 = [v73 leadingAnchor];
    v72 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v70 = [v72 leadingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v130[12] = v69;
    v68 = [(GuideHomeHeaderView *)self topGradientView];
    v66 = [v68 trailingAnchor];
    v67 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v65 = [v67 trailingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v130[13] = v64;
    v63 = [(GuideHomeHeaderView *)self topGradientView];
    v61 = [v63 topAnchor];
    v62 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
    v60 = [v62 topAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v130[14] = v59;
    v58 = [(GuideHomeHeaderView *)self topGradientView];
    v57 = [v58 heightAnchor];
    v56 = [v57 constraintEqualToConstant:242.0];
    v130[15] = v56;
    v55 = [(GuideHomeHeaderView *)self publisherLogoImageView];
    v53 = [v55 leadingAnchor];
    v54 = [(GuideHomeHeaderView *)self contentView];
    v52 = [v54 leadingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:16.0];
    v130[16] = v51;
    v50 = [(GuideHomeHeaderView *)self publisherLogoImageView];
    v48 = [v50 bottomAnchor];
    v49 = [(GuideHomeHeaderView *)self metadataStackView];
    v47 = [v49 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v130[17] = v46;
    v45 = [(GuideHomeHeaderView *)self publisherLogoImageView];
    v44 = [v45 heightAnchor];
    v43 = [v44 constraintEqualToConstant:40.0];
    v130[18] = v43;
    v42 = [(GuideHomeHeaderView *)self metadataStackView];
    v40 = [v42 leadingAnchor];
    v41 = [(GuideHomeHeaderView *)self contentView];
    v39 = [v41 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:16.0];
    v130[19] = v38;
    v37 = [(GuideHomeHeaderView *)self metadataStackView];
    v35 = [v37 trailingAnchor];
    v36 = [(GuideHomeHeaderView *)self contentView];
    v34 = [v36 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:-16.0];
    v130[20] = v33;
    v32 = [(GuideHomeHeaderView *)self metadataStackView];
    v30 = [v32 topAnchor];
    v31 = [(GuideHomeHeaderView *)self contentView];
    v29 = [v31 topAnchor];
    v28 = [v30 constraintGreaterThanOrEqualToAnchor:v29];
    v130[21] = v28;
    v27 = [(GuideHomeHeaderView *)self metadataStackView];
    v25 = [v27 bottomAnchor];
    v26 = [(GuideHomeHeaderView *)self contentView];
    v24 = [v26 bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:-24.0];
    v130[22] = v23;
    v22 = [(GuideHomeHeaderView *)self contentView];
    v21 = [v22 topAnchor];
    v20 = [(GuideHomeHeaderView *)self topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v130[23] = v19;
    v18 = [(GuideHomeHeaderView *)self contentView];
    v17 = [v18 leadingAnchor];
    v16 = [(GuideHomeHeaderView *)self leadingAnchor];
    v15 = [v17 constraintEqualToAnchor:v16];
    v130[24] = v15;
    v5 = [(GuideHomeHeaderView *)self contentView];
    v6 = [v5 trailingAnchor];
    v7 = [(GuideHomeHeaderView *)self trailingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v130[25] = v8;
    v9 = [(GuideHomeHeaderView *)self contentView];
    v10 = [v9 bottomAnchor];
    v11 = [(GuideHomeHeaderView *)self bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v130[26] = v12;
    v13 = [NSArray arrayWithObjects:v130 count:27];
    [(GuideHomeHeaderView *)self setConstraints:v13];

    v14 = [(GuideHomeHeaderView *)self constraints];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

- (void)setupTopGradient
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuideHomeHeaderView *)self setTopGradientView:v3];

  v4 = [(GuideHomeHeaderView *)self topGradientView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  v6 = [(GuideHomeHeaderView *)self topGradientView];
  [v6 setBackgroundColor:v5];

  v8 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  v7 = [(GuideHomeHeaderView *)self topGradientView];
  [v8 addSubview:v7];
}

- (void)setupBottomGradient
{
  v3 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuideHomeHeaderView *)self setBottomGradientView:v3];

  v4 = [(GuideHomeHeaderView *)self bottomGradientView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  v6 = [(GuideHomeHeaderView *)self bottomGradientView];
  [v6 setBackgroundColor:v5];

  v8 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  v7 = [(GuideHomeHeaderView *)self bottomGradientView];
  [v8 addSubview:v7];
}

- (void)addOpenGuideButton
{
  v3 = [(GuideHomeHeaderView *)self openGuideButton];

  if (!v3)
  {
    v4 = objc_alloc_init(UIView);
    [(GuideHomeHeaderView *)self setButtonView:v4];

    v5 = [(GuideHomeHeaderView *)self buttonView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = +[UIColor clearColor];
    v7 = [(GuideHomeHeaderView *)self buttonView];
    [v7 setBackgroundColor:v6];

    v8 = [(GuideHomeHeaderView *)self buttonView];
    [v8 setUserInteractionEnabled:1];

    v9 = [@"GuideHomeHeader" stringByAppendingString:@"ButtonView"];
    v10 = [(GuideHomeHeaderView *)self buttonView];
    [v10 setAccessibilityIdentifier:v9];

    v64 = [UIBlurEffect effectWithStyle:1];
    v11 = [[UIVisualEffectView alloc] initWithEffect:v64];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 _setContinuousCornerRadius:10.0];
    v12 = [(GuideHomeHeaderView *)self buttonView];
    [v12 addSubview:v11];

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
    v19 = [v17 titleLabel];
    [v19 setTextColor:v18];

    v20 = [@"GuideHomeHeader" stringByAppendingString:@"Button"];
    [v17 setAccessibilityIdentifier:v20];

    [(GuideHomeHeaderView *)self setOpenGuideButton:v17];
    v21 = [(GuideHomeHeaderView *)self buttonView];
    [v21 addSubview:v17];

    v22 = [(GuideHomeHeaderView *)self metadataStackView];
    v23 = [(GuideHomeHeaderView *)self buttonView];
    [v22 addArrangedSubview:v23];

    [(GuideHomeHeaderView *)self maxWidth];
    v25 = v24 + -32.0;
    v61 = [(GuideHomeHeaderView *)self buttonView];
    v60 = [v61 heightAnchor];
    v59 = [v60 constraintEqualToConstant:50.0];
    v65[0] = v59;
    v58 = [(GuideHomeHeaderView *)self buttonView];
    v57 = [v58 widthAnchor];
    v56 = [v57 constraintEqualToConstant:v25];
    v65[1] = v56;
    v54 = [v11 topAnchor];
    v55 = [(GuideHomeHeaderView *)self buttonView];
    v53 = [v55 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v65[2] = v52;
    v50 = [v11 leadingAnchor];
    v51 = [(GuideHomeHeaderView *)self buttonView];
    v49 = [v51 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v65[3] = v48;
    v46 = [v11 trailingAnchor];
    v47 = [(GuideHomeHeaderView *)self buttonView];
    v45 = [v47 trailingAnchor];
    v43 = [v46 constraintEqualToAnchor:v45];
    v44 = v11;
    v65[4] = v43;
    v41 = [v11 bottomAnchor];
    v42 = [(GuideHomeHeaderView *)self buttonView];
    v40 = [v42 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v65[5] = v39;
    v38 = [v17 topAnchor];
    v37 = [v11 topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v65[6] = v36;
    v35 = [v17 leadingAnchor];
    v26 = [v11 leadingAnchor];
    v27 = [v35 constraintEqualToAnchor:v26];
    v65[7] = v27;
    v28 = [v17 trailingAnchor];
    v29 = [v11 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v65[8] = v30;
    v31 = [v17 bottomAnchor];
    v32 = [v11 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
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
  v5 = [(GuideHomeHeaderView *)self collectionLabel];
  [v5 setTextColor:v4];

  v6 = [(GuideHomeHeaderView *)self collectionLabel];
  [v6 setNumberOfLines:0];

  v7 = [@"GuideHomeHeader" stringByAppendingString:@"CollectionLabel"];
  v8 = [(GuideHomeHeaderView *)self collectionLabel];
  [v8 setAccessibilityIdentifier:v7];

  v10 = [(GuideHomeHeaderView *)self metadataStackView];
  v9 = [(GuideHomeHeaderView *)self collectionLabel];
  [v10 addArrangedSubview:v9];
}

- (void)addPublisherLogoImage
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setPublisherLogoImageView:v3];

  v4 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v5 setAccessibilityIgnoresInvertColors:1];

  v6 = [@"GuideHomeHeader" stringByAppendingString:@"PublisherLogoImage"];
  v7 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v8 setContentMode:1];

  v10 = [(GuideHomeHeaderView *)self contentView];
  v9 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v10 addSubview:v9];
}

- (void)setupEditorsPickView
{
  v29 = [UIBlurEffect effectWithBlurRadius:10.0];
  v3 = [[UIVisualEffectView alloc] initWithEffect:v29];
  [(GuideHomeHeaderView *)self setEditorPickView:v3];

  v4 = [(GuideHomeHeaderView *)self editorPickView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  v6 = [(GuideHomeHeaderView *)self editorPickView];
  [v6 setBackgroundColor:v5];

  v7 = +[UIColor blackColor];
  v8 = [v7 colorWithAlphaComponent:0.2];
  v9 = [(GuideHomeHeaderView *)self editorPickView];
  v10 = [v9 contentView];
  [v10 setBackgroundColor:v8];

  v11 = [@"GuideHomeHeader" stringByAppendingString:@"EditorPick"];
  v12 = [(GuideHomeHeaderView *)self editorPickView];
  [v12 setAccessibilityIdentifier:v11];

  v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setEditorPickLabel:v13];

  v14 = [@"GuideHomeHeader" stringByAppendingString:@"EditorPickLabel"];
  v15 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v15 setAccessibilityIdentifier:v14];

  v16 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = +[UIColor whiteColor];
  v18 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v18 setTextColor:v17];

  v19 = [(GuideHomeHeaderView *)self editorPickLabel];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v20];

  v21 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v21 setNumberOfLines:1];

  v22 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v22 setTextAlignment:1];

  v23 = [(GuideHomeHeaderView *)self editorPickView];
  [v23 setHidden:1];

  v24 = [(GuideHomeHeaderView *)self editorPickView];
  v25 = [v24 contentView];
  v26 = [(GuideHomeHeaderView *)self editorPickLabel];
  [v25 addSubview:v26];

  v27 = [(GuideHomeHeaderView *)self contentView];
  v28 = [(GuideHomeHeaderView *)self editorPickView];
  [v27 addSubview:v28];
}

- (CGSize)sizeForEditorsPickLabel
{
  v3 = [(GuideHomeHeaderView *)self editorPickLabel];
  v4 = [v3 attributedText];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = [(GuideHomeHeaderView *)self editorPickView];
  [v9 _setContinuousCornerRadius:4.0];

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

  v4 = [(GuideHomeHeaderView *)self metadataStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(GuideHomeHeaderView *)self metadataStackView];
  [v5 setAxis:1];

  v6 = [(GuideHomeHeaderView *)self metadataStackView];
  [v6 setDistribution:0];

  v7 = [(GuideHomeHeaderView *)self metadataStackView];
  [v7 setAlignment:1];

  v8 = [(GuideHomeHeaderView *)self metadataStackView];
  [v8 setSpacing:20.0];

  v9 = [@"GuideHomeHeader" stringByAppendingString:@"MetadataStack"];
  v10 = [(GuideHomeHeaderView *)self metadataStackView];
  [v10 setAccessibilityIdentifier:v9];

  v11 = [(GuideHomeHeaderView *)self contentView];
  v12 = [(GuideHomeHeaderView *)self metadataStackView];
  [v11 addSubview:v12];

  [(GuideHomeHeaderView *)self addCollectionNameView];
}

- (void)setupGradientAndImageContainerView
{
  v3 = objc_alloc_init(UIView);
  [(GuideHomeHeaderView *)self setGradientAndImageContainerView:v3];

  v4 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  v6 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [v6 setBackgroundColor:v5];

  v7 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [v7 setClipsToBounds:1];

  v8 = [@"GuideHomeHeader" stringByAppendingString:@"GradientAndImageContainer"];
  v9 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [v9 setAccessibilityIdentifier:v8];

  v10 = [(GuideHomeHeaderView *)self contentView];
  v11 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  [v10 addSubview:v11];

  [(GuideHomeHeaderView *)self setupGuideImageView];
  [(GuideHomeHeaderView *)self setupBottomGradient];

  [(GuideHomeHeaderView *)self setupTopGradient];
}

- (void)setupGuideImageView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(GuideHomeHeaderView *)self setCollectionImageView:v3];

  v4 = [(GuideHomeHeaderView *)self collectionImageView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(GuideHomeHeaderView *)self collectionImageView];
  [v5 setAccessibilityIgnoresInvertColors:1];

  v6 = [@"GuideHomeHeader" stringByAppendingString:@"CollectionImage"];
  v7 = [(GuideHomeHeaderView *)self collectionImageView];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [(GuideHomeHeaderView *)self collectionImageView];
  [v8 setContentMode:2];

  v10 = [(GuideHomeHeaderView *)self gradientAndImageContainerView];
  v9 = [(GuideHomeHeaderView *)self collectionImageView];
  [v10 addSubview:v9];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UIView);
  [(GuideHomeHeaderView *)self setContentView:v3];

  v4 = [(GuideHomeHeaderView *)self contentView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  v6 = [(GuideHomeHeaderView *)self contentView];
  [v6 setBackgroundColor:v5];

  v7 = [@"GuideHomeHeader" stringByAppendingString:@"Content"];
  v8 = [(GuideHomeHeaderView *)self contentView];
  [v8 setAccessibilityIdentifier:v7];

  v9 = [(GuideHomeHeaderView *)self contentView];
  [(GuideHomeHeaderView *)self addSubview:v9];

  [(GuideHomeHeaderView *)self setupGradientAndImageContainerView];
  [(GuideHomeHeaderView *)self addPublisherLogoImage];
  [(GuideHomeHeaderView *)self setupStackView];

  [(GuideHomeHeaderView *)self setupEditorsPickView];
}

- (void)setImageMetadataUsingWidth:(double)a3
{
  v5 = [(GuideHomeHeaderView *)self logoWidthConstraint];
  [v5 setActive:0];

  [(GuideHomeHeaderView *)self setLogoWidthConstraint:0];
  objc_initWeak(&location, self);
  v6 = [(GuideHomeHeaderView *)self viewModel];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1008CFE6C;
  v17[3] = &unk_101650EA8;
  objc_copyWeak(&v18, &location);
  [v6 publisherLogoImageWithCompletion:v17];

  v7 = [(GuideHomeHeaderView *)self collectionImageView];
  v8 = [v7 image];
  if (v8)
  {

LABEL_5:
    goto LABEL_6;
  }

  v9 = [(GuideHomeHeaderView *)self viewModel];

  if (v9)
  {
    v10 = +[NSDate date];
    v11 = [(GuideHomeHeaderView *)self viewModel];
    +[GuideHomeHeaderView maximumCollectionImageHeight];
    v13 = v12;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1008CFFF0;
    v14[3] = &unk_10162DA08;
    objc_copyWeak(&v16, &location);
    v7 = v10;
    v15 = v7;
    [v11 collectionImageForSize:v14 onCompletion:{a3, v13}];

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

  v9 = [(GuideHomeHeaderView *)self editorsPickTopConstraint];
  [v9 setConstant:v8];
}

- (void)displayEditorsPickLabel
{
  v3 = [(GuideHomeHeaderView *)self editorPickLabel];
  v4 = [v3 attributedText];
  v5 = [(GuideHomeHeaderView *)self viewModel];
  v6 = [v5 sectionTitle];
  v7 = [v4 isEqualToAttributedString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(GuideHomeHeaderView *)self editorPickView];
    [v8 setHidden:0];

    v9 = [(GuideHomeHeaderView *)self viewModel];
    v10 = [v9 sectionTitle];
    v11 = [(GuideHomeHeaderView *)self editorPickLabel];
    [v11 setAttributedText:v10];

    [(GuideHomeHeaderView *)self sizeForEditorsPickLabel];
    v13 = v12;
    v15 = v14;
    v16 = [(GuideHomeHeaderView *)self editorPickView];
    v17 = [v16 topAnchor];
    v18 = [(GuideHomeHeaderView *)self contentView];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [(GuideHomeHeaderView *)self setEditorsPickTopConstraint:v20];

    [(GuideHomeHeaderView *)self updateEditorsPickTop];
    v43 = [(GuideHomeHeaderView *)self editorPickLabel];
    v41 = [v43 centerXAnchor];
    v42 = [(GuideHomeHeaderView *)self editorPickView];
    v40 = [v42 centerXAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v44[0] = v39;
    v38 = [(GuideHomeHeaderView *)self editorPickLabel];
    v36 = [v38 centerYAnchor];
    v37 = [(GuideHomeHeaderView *)self editorPickView];
    v35 = [v37 centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v44[1] = v34;
    v33 = [(GuideHomeHeaderView *)self editorsPickTopConstraint];
    v44[2] = v33;
    v32 = [(GuideHomeHeaderView *)self editorPickView];
    v31 = [v32 leadingAnchor];
    v21 = [(GuideHomeHeaderView *)self contentView];
    v22 = [v21 leadingAnchor];
    v23 = [v31 constraintEqualToAnchor:v22 constant:16.0];
    v44[3] = v23;
    v24 = [(GuideHomeHeaderView *)self editorPickView];
    v25 = [v24 heightAnchor];
    v26 = [v25 constraintEqualToConstant:v15];
    v44[4] = v26;
    v27 = [(GuideHomeHeaderView *)self editorPickView];
    v28 = [v27 widthAnchor];
    v29 = [v28 constraintEqualToConstant:v13];
    v44[5] = v29;
    v30 = [NSArray arrayWithObjects:v44 count:6];
    [NSLayoutConstraint activateConstraints:v30];
  }
}

- (void)didChangeContentYOffset:(double)a3
{
  v6 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v6 frame];
  v8 = a3 / v7;

  v9 = fmin(fmax(1.0 - v8, 0.0), 1.0);
  v10 = [(GuideHomeHeaderView *)self publisherLogoImageView];
  [v10 setAlpha:v9];

  v11 = [(GuideHomeHeaderView *)self metadataStackView];
  [v11 setAlpha:v9];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1008D0BB0;
  v29[3] = &unk_101661650;
  v29[4] = self;
  *&v29[5] = v8;
  [UIView animateWithDuration:v29 animations:0.2];
  v12 = [(GuideHomeHeaderView *)self collectionImageView];
  [v12 setAlpha:v9];

  v13 = [(GuideHomeHeaderView *)self topGradientView];
  [v13 setAlpha:v9];

  v14 = [(GuideHomeHeaderView *)self contentView];
  [v14 setAlpha:v9];

  if (a3 >= 0.0)
  {
    CGAffineTransformMakeScale(&v24, 1.0, 1.0);
    v21 = [(GuideHomeHeaderView *)self collectionImageView];
    v22 = v21;
    v25 = *&v24.a;
    v26 = *&v24.c;
    v23 = *&v24.tx;
  }

  else
  {
    v15 = [(GuideHomeHeaderView *)self viewModel];
    v16 = [v15 collectionLongTitle];
    v17 = v16;
    if (!v16)
    {
      v3 = [(GuideHomeHeaderView *)self viewModel];
      v17 = [v3 collectionTitle];
    }

    [(GuideHomeHeaderView *)self maxWidth];
    [GuideHomeHeaderView maximumRequiredHeightWithFeaturedGuideTitle:v17 maxWidth:?];
    v19 = v18;
    if (!v16)
    {
    }

    v20 = fmax(fabs(a3) / v19 + 1.0, 0.0);
    CGAffineTransformMakeScale(&v28, v20, v20);
    v21 = [(GuideHomeHeaderView *)self collectionImageView];
    v22 = v21;
    v25 = *&v28.a;
    v26 = *&v28.c;
    v23 = *&v28.tx;
  }

  v27 = v23;
  [v21 setTransform:&v25];
}

- (void)configureWithGuidesHomeHeaderViewModel:(id)a3 maxWidth:(double)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(GuideHomeHeaderView *)self setMaxWidth:a4];
  [(GuideHomeHeaderView *)self setViewModel:v8];
  [(GuideHomeHeaderView *)self setHeaderDelegate:v9];

  [(GuideHomeHeaderView *)self setupConstraints];
  v10 = [v8 collectionLongTitle];
  v11 = v10;
  if (!v10)
  {
    v11 = [v8 collectionTitle];
  }

  v12 = [(GuideHomeHeaderView *)self collectionLabel];
  [v12 setAttributedText:v11];

  if (!v10)
  {
  }

  v13 = [(GuideHomeHeaderView *)self viewModel];
  v14 = [v13 backgroundColor];
  [(GuideHomeHeaderView *)self setBackgroundColor:v14];

  [(GuideHomeHeaderView *)self displayEditorsPickLabel];
  v15 = [(GuideHomeHeaderView *)self topGradientView];
  v16 = [v15 gradientLayer];
  [v16 setStartPoint:{0.5, 0.0}];

  v17 = [(GuideHomeHeaderView *)self topGradientView];
  v18 = [v17 gradientLayer];
  [v18 setEndPoint:{0.5, 1.0}];

  v19 = +[UIColor blackColor];
  v20 = [v19 colorWithAlphaComponent:0.5];
  v39[0] = [v20 CGColor];
  v21 = +[UIColor blackColor];
  v22 = [v21 colorWithAlphaComponent:0.0];
  v39[1] = [v22 CGColor];
  v23 = [NSArray arrayWithObjects:v39 count:2];
  v24 = [(GuideHomeHeaderView *)self topGradientView];
  v25 = [v24 gradientLayer];
  [v25 setColors:v23];

  v26 = [(GuideHomeHeaderView *)self bottomGradientView];
  v27 = [v26 gradientLayer];
  [v27 setStartPoint:{0.5, 0.0}];

  v28 = [(GuideHomeHeaderView *)self bottomGradientView];
  v29 = [v28 gradientLayer];
  [v29 setEndPoint:{0.5, 1.0}];

  v30 = [(GuideHomeHeaderView *)self viewModel];
  v31 = [v30 backgroundColor];
  v32 = [v31 colorWithAlphaComponent:0.0];
  v38[0] = [v32 CGColor];
  v33 = [(GuideHomeHeaderView *)self viewModel];
  v34 = [v33 backgroundColor];
  v38[1] = [v34 CGColor];
  v35 = [NSArray arrayWithObjects:v38 count:2];
  v36 = [(GuideHomeHeaderView *)self bottomGradientView];
  v37 = [v36 gradientLayer];
  [v37 setColors:v35];

  [(GuideHomeHeaderView *)self setImageMetadataUsingWidth:a4];
  [(GuideHomeHeaderView *)self addOpenGuideButton];
}

- (GuideHomeHeaderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = GuideHomeHeaderView;
  v3 = [(GuideHomeHeaderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (double)maximumRequiredHeightWithFeaturedGuideTitle:(id)a3 maxWidth:(double)a4
{
  [a3 boundingRectWithSize:1 options:0 context:{a4 + -32.0, 1.79769313e308}];
  v5 = v4;
  +[GuideHomeHeaderView maximumCollectionImageHeight];
  return v5 + v6 + 94.0;
}

@end