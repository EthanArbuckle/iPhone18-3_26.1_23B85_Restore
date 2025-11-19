@interface ContinuityCaptureShieldUIContentView
- (BOOL)_shouldShowFaceTimeButton;
- (ContinuityCaptureShieldUIContentView)initWithFrame:(CGRect)a3;
- (ContinuityCaptureShieldUIContentViewDelegate)delegate;
- (double)_defaultButtonScreenWidth;
- (double)_defaultDescriptionScreenWidth;
- (id)_defaultImageSymbolConfiguration;
- (id)_disconnectButtonConfiguration;
- (id)_facetimeButtonConfiguration;
- (id)_favoritesButtonConfiguration;
- (id)_pauseButtonConfiguration;
- (id)_skipButtonConfiguration;
- (void)_setPullFaceTimeButtonLoading:(BOOL)a3;
- (void)setInFaceTimeSession:(BOOL)a3;
- (void)setInPlacementStep:(BOOL)a3;
- (void)setIsDedicatedSession:(BOOL)a3;
- (void)setPauseButtonState:(unint64_t)a3;
@end

@implementation ContinuityCaptureShieldUIContentView

- (ContinuityCaptureShieldUIContentView)initWithFrame:(CGRect)a3
{
  v175.receiver = self;
  v175.super_class = ContinuityCaptureShieldUIContentView;
  v3 = [(ContinuityCaptureShieldUIContentView *)&v175 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    [(ContinuityCaptureShieldUIContentView *)v3 addLayoutGuide:v4];
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v7 = [v4 widthAnchor];
      v153 = [v7 constraintEqualToConstant:620.0];
      v174[0] = v153;
      v8 = [v4 centerXAnchor];
      v145 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      [v145 centerXAnchor];
      v141 = v149 = v8;
      v137 = [v8 constraintEqualToAnchor:?];
      v174[1] = v137;
      v9 = [v4 topAnchor];
      v130 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      [v130 topAnchor];
      v128 = v133 = v9;
      v10 = [v9 constraintEqualToAnchor:?];
      v174[2] = v10;
      v11 = [v4 bottomAnchor];
      v12 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      v13 = [v12 bottomAnchor];
      [v11 constraintEqualToAnchor:v13 constant:-35.0];
      v15 = v14 = v4;
      v174[3] = v15;
      v16 = [NSArray arrayWithObjects:v174 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }

    else
    {
      v125 = [v4 leftAnchor];
      v153 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      v149 = [v153 leftAnchor];
      v145 = [v125 constraintEqualToAnchor:?];
      v173[0] = v145;
      v17 = [v4 rightAnchor];
      v137 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      [v137 rightAnchor];
      v133 = v141 = v17;
      v130 = [v17 constraintEqualToAnchor:?];
      v173[1] = v130;
      v18 = [v4 topAnchor];
      v10 = [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      v11 = [v10 topAnchor];
      v128 = v18;
      v12 = [v18 constraintEqualToAnchor:v11];
      v173[2] = v12;
      v13 = [v4 bottomAnchor];
      [(ContinuityCaptureShieldUIContentView *)v3 safeAreaLayoutGuide];
      v15 = v14 = v4;
      v16 = [v15 bottomAnchor];
      v19 = [v13 constraintEqualToAnchor:v16 constant:-15.0];
      v173[3] = v19;
      v20 = [NSArray arrayWithObjects:v173 count:4];
      [NSLayoutConstraint activateConstraints:v20];

      v7 = v125;
    }

    v21 = objc_alloc_init(UIScrollView);
    accessibilityScrollView = v3->_accessibilityScrollView;
    v3->_accessibilityScrollView = v21;

    [(UIScrollView *)v3->_accessibilityScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v3->_accessibilityScrollView setBounces:0];
    [(UIScrollView *)v3->_accessibilityScrollView setClipsToBounds:0];
    [(ContinuityCaptureShieldUIContentView *)v3 addSubview:v3->_accessibilityScrollView];
    v154 = [(UIScrollView *)v3->_accessibilityScrollView topAnchor];
    v150 = [v14 topAnchor];
    v146 = [v154 constraintEqualToAnchor:v150];
    v172[0] = v146;
    v142 = [(UIScrollView *)v3->_accessibilityScrollView bottomAnchor];
    v138 = [v14 bottomAnchor];
    v23 = [v142 constraintEqualToAnchor:v138];
    v172[1] = v23;
    v24 = [(UIScrollView *)v3->_accessibilityScrollView leadingAnchor];
    v25 = [v14 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v172[2] = v26;
    v27 = [(UIScrollView *)v3->_accessibilityScrollView trailingAnchor];
    v110 = v14;
    v28 = [v14 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v172[3] = v29;
    v30 = [NSArray arrayWithObjects:v172 count:4];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = objc_alloc_init(UIView);
    containerView = v3->_containerView;
    v3->_containerView = v31;

    [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_containerView setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    [(UIScrollView *)v3->_accessibilityScrollView addSubview:v3->_containerView];
    v33 = [(UIView *)v3->_containerView heightAnchor];
    v34 = [(UIScrollView *)v3->_accessibilityScrollView heightAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    LODWORD(v36) = 1132068864;
    [v35 setPriority:v36];
    v151 = [(UIView *)v3->_containerView topAnchor];
    v155 = [(UIScrollView *)v3->_accessibilityScrollView contentLayoutGuide];
    v147 = [v155 topAnchor];
    v143 = [v151 constraintEqualToAnchor:v147];
    v171[0] = v143;
    v136 = [(UIView *)v3->_containerView bottomAnchor];
    v139 = [(UIScrollView *)v3->_accessibilityScrollView contentLayoutGuide];
    v134 = [v139 bottomAnchor];
    v131 = [v136 constraintEqualToAnchor:v134];
    v171[1] = v131;
    v123 = [(UIView *)v3->_containerView leadingAnchor];
    v126 = [(UIScrollView *)v3->_accessibilityScrollView contentLayoutGuide];
    v121 = [v126 leadingAnchor];
    v119 = [v123 constraintEqualToAnchor:v121];
    v171[2] = v119;
    v117 = [(UIView *)v3->_containerView trailingAnchor];
    v37 = [(UIScrollView *)v3->_accessibilityScrollView contentLayoutGuide];
    v38 = [v37 trailingAnchor];
    v39 = [v117 constraintEqualToAnchor:v38];
    v171[3] = v39;
    v40 = [(UIView *)v3->_containerView widthAnchor];
    v41 = [(UIScrollView *)v3->_accessibilityScrollView frameLayoutGuide];
    v42 = [v41 widthAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    v171[4] = v43;
    v109 = v35;
    v171[5] = v35;
    v44 = [NSArray arrayWithObjects:v171 count:6];
    [NSLayoutConstraint activateConstraints:v44];

    v45 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v45;

    [(UIImageView *)v3->_imageView setContentMode:1];
    v47 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultImageTintColor];
    [(UIImageView *)v3->_imageView setTintColor:v47];

    v48 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultImageSymbolConfiguration];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v48];

    [(UIImageView *)v3->_imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v49 = objc_alloc_init(UIView);
    animationViewContainer = v3->_animationViewContainer;
    v3->_animationViewContainer = v49;

    [(UIView *)v3->_animationViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_animationViewContainer setHidden:1];
    v51 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v51;

    v53 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultTextFont];
    [(UILabel *)v3->_titleLabel setFont:v53];

    v54 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultTextColor];
    [(UILabel *)v3->_titleLabel setTextColor:v54];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v55 = objc_alloc_init(UILabel);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v55;

    v57 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultSecondaryTextFont];
    [(UILabel *)v3->_subtitleLabel setFont:v57];

    v58 = [(ContinuityCaptureShieldUIContentView *)v3 _defaultSecondaryTextColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v58];

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v59 = [UIStackView alloc];
    v170[0] = v3->_animationViewContainer;
    v170[1] = v3->_imageView;
    v170[2] = v3->_titleLabel;
    v170[3] = v3->_subtitleLabel;
    v60 = [NSArray arrayWithObjects:v170 count:4];
    v61 = [v59 initWithArrangedSubviews:v60];
    descriptionStackView = v3->_descriptionStackView;
    v3->_descriptionStackView = v61;

    [(UIStackView *)v3->_descriptionStackView setAlignment:3];
    [(UIStackView *)v3->_descriptionStackView setAxis:1];
    v63 = v3->_descriptionStackView;
    [(ContinuityCaptureShieldUIContentView *)v3 _imageToTextPadding];
    [(UIStackView *)v63 setCustomSpacing:v3->_imageView afterView:?];
    v64 = v3->_descriptionStackView;
    [(ContinuityCaptureShieldUIContentView *)v3 _defaultDescriptionPadding];
    [(UIStackView *)v64 setCustomSpacing:v3->_titleLabel afterView:?];
    objc_initWeak(&location, v3);
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_1000070C4;
    v167[3] = &unk_100018710;
    objc_copyWeak(&v168, &location);
    v156 = [UIAction actionWithHandler:v167];
    v65 = [(ContinuityCaptureShieldUIContentView *)v3 _pauseButtonConfiguration];
    v66 = [UIButton buttonWithConfiguration:v65 primaryAction:v156];
    pauseButton = v3->_pauseButton;
    v3->_pauseButton = v66;

    v68 = [(UIButton *)v3->_pauseButton titleLabel];
    [v68 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_pauseButton setAccessibilityIdentifier:@"ShieldUI.pauseButton"];
    v165[0] = _NSConcreteStackBlock;
    v165[1] = 3221225472;
    v165[2] = sub_10000717C;
    v165[3] = &unk_100018710;
    objc_copyWeak(&v166, &location);
    v152 = [UIAction actionWithHandler:v165];
    v69 = [(ContinuityCaptureShieldUIContentView *)v3 _facetimeButtonConfiguration];
    v70 = [UIButton buttonWithConfiguration:v69 primaryAction:v152];
    faceTimeButton = v3->_faceTimeButton;
    v3->_faceTimeButton = v70;

    v3->_inFaceTimeSession = 0;
    [(UIButton *)v3->_faceTimeButton setHidden:1];
    v72 = [(UIButton *)v3->_faceTimeButton titleLabel];
    [v72 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_faceTimeButton setAccessibilityIdentifier:@"ShieldUI.faceTimeButton"];
    v163[0] = _NSConcreteStackBlock;
    v163[1] = 3221225472;
    v163[2] = sub_1000073E0;
    v163[3] = &unk_100018710;
    objc_copyWeak(&v164, &location);
    v148 = [UIAction actionWithHandler:v163];
    v73 = [(ContinuityCaptureShieldUIContentView *)v3 _favoritesButtonConfiguration];
    v74 = [UIButton buttonWithConfiguration:v73 primaryAction:v148];
    favoritesButton = v3->_favoritesButton;
    v3->_favoritesButton = v74;

    v3->_isDedicated = 0;
    [(UIButton *)v3->_favoritesButton setHidden:[(ContinuityCaptureShieldUIContentView *)v3 _shouldShowFavoritesButton]^ 1];
    v76 = [(UIButton *)v3->_favoritesButton titleLabel];
    [v76 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_favoritesButton setAccessibilityIdentifier:@"ShieldUI.favoritesButton"];
    v161[0] = _NSConcreteStackBlock;
    v161[1] = 3221225472;
    v161[2] = sub_1000074C8;
    v161[3] = &unk_100018710;
    objc_copyWeak(&v162, &location);
    v144 = [UIAction actionWithHandler:v161];
    v77 = [(ContinuityCaptureShieldUIContentView *)v3 _disconnectButtonConfiguration];
    v78 = [UIButton buttonWithConfiguration:v77 primaryAction:v144];
    disconnectButton = v3->_disconnectButton;
    v3->_disconnectButton = v78;

    v80 = [(UIButton *)v3->_disconnectButton titleLabel];
    [v80 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_disconnectButton setAccessibilityIdentifier:@"ShieldUI.disconnectButton"];
    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_100007580;
    v159[3] = &unk_100018710;
    objc_copyWeak(&v160, &location);
    v140 = [UIAction actionWithHandler:v159];
    v81 = [(ContinuityCaptureShieldUIContentView *)v3 _skipButtonConfiguration];
    v82 = [UIButton buttonWithConfiguration:v81 primaryAction:v140];
    skipButton = v3->_skipButton;
    v3->_skipButton = v82;

    [(UIButton *)v3->_skipButton setHidden:1];
    v84 = [(UIButton *)v3->_skipButton titleLabel];
    [v84 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v3->_skipButton setAccessibilityIdentifier:@"ShieldUI.skipButton"];
    v85 = [UIStackView alloc];
    v158[0] = v3->_pauseButton;
    v158[1] = v3->_favoritesButton;
    v158[2] = v3->_faceTimeButton;
    v158[3] = v3->_skipButton;
    v158[4] = v3->_disconnectButton;
    v86 = [NSArray arrayWithObjects:v158 count:5];
    v87 = [v85 initWithArrangedSubviews:v86];
    buttonsStackView = v3->_buttonsStackView;
    v3->_buttonsStackView = v87;

    [(UIStackView *)v3->_buttonsStackView setAlignment:0];
    [(UIStackView *)v3->_buttonsStackView setAxis:1];
    [(ContinuityCaptureShieldUIContentView *)v3 _defaultButtonPadding];
    [(UIStackView *)v3->_buttonsStackView setSpacing:?];
    [(UIStackView *)v3->_buttonsStackView setDistribution:0];
    [(UIStackView *)v3->_buttonsStackView setAccessibilityIdentifier:@"ShieldUI.buttonsStackView"];
    [(UIStackView *)v3->_descriptionStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_buttonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_containerView addSubview:v3->_descriptionStackView];
    [(UIView *)v3->_containerView addSubview:v3->_buttonsStackView];
    v89 = [(UIStackView *)v3->_descriptionStackView leadingAnchor];
    v90 = [(UIView *)v3->_containerView leadingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:53.0];
    descriptionLeadingAnchor = v3->_descriptionLeadingAnchor;
    v3->_descriptionLeadingAnchor = v91;

    v93 = [(UIStackView *)v3->_descriptionStackView trailingAnchor];
    v94 = [(UIView *)v3->_containerView trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:-53.0];
    descriptionTrailingAnchor = v3->_descriptionTrailingAnchor;
    v3->_descriptionTrailingAnchor = v95;

    v135 = [(UIStackView *)v3->_descriptionStackView centerYAnchor];
    v132 = [(UIView *)v3->_containerView centerYAnchor];
    v129 = [v135 constraintEqualToAnchor:v132];
    v157[0] = v129;
    v127 = [(UIStackView *)v3->_descriptionStackView centerXAnchor];
    v124 = [(UIView *)v3->_containerView centerXAnchor];
    v122 = [v127 constraintEqualToAnchor:v124];
    v157[1] = v122;
    v120 = [(UIStackView *)v3->_descriptionStackView bottomAnchor];
    v118 = [(UIStackView *)v3->_buttonsStackView topAnchor];
    [(ContinuityCaptureShieldUIContentView *)v3 _textToButtonsPadding];
    v116 = [v120 constraintLessThanOrEqualToAnchor:v118 constant:-v97];
    v157[2] = v116;
    v157[3] = v3->_descriptionLeadingAnchor;
    v157[4] = v3->_descriptionTrailingAnchor;
    v115 = [(UIStackView *)v3->_buttonsStackView bottomAnchor];
    v114 = [(UIView *)v3->_containerView bottomAnchor];
    [(ContinuityCaptureShieldUIContentView *)v3 _defaultButtonPadding];
    v113 = [v115 constraintEqualToAnchor:v114 constant:-v98];
    v157[5] = v113;
    v112 = [(UIStackView *)v3->_buttonsStackView centerXAnchor];
    v111 = [(UIView *)v3->_containerView centerXAnchor];
    v99 = [v112 constraintEqualToAnchor:v111];
    v157[6] = v99;
    v100 = [(UIStackView *)v3->_buttonsStackView widthAnchor];
    v101 = [(UIView *)v3->_containerView widthAnchor];
    [(ContinuityCaptureShieldUIContentView *)v3 _defaultButtonScreenWidth];
    v102 = [v100 constraintEqualToAnchor:v101 multiplier:?];
    v157[7] = v102;
    v103 = [(UIView *)v3->_animationViewContainer widthAnchor];
    v104 = [v103 constraintEqualToConstant:240.0];
    v157[8] = v104;
    v105 = [(UIView *)v3->_animationViewContainer heightAnchor];
    v106 = [v105 constraintEqualToConstant:240.0];
    v157[9] = v106;
    v107 = [NSArray arrayWithObjects:v157 count:10];
    [NSLayoutConstraint activateConstraints:v107];

    objc_destroyWeak(&v160);
    objc_destroyWeak(&v162);

    objc_destroyWeak(&v164);
    objc_destroyWeak(&v166);

    objc_destroyWeak(&v168);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)setInFaceTimeSession:(BOOL)a3
{
  if (self->_inFaceTimeSession != a3)
  {
    self->_inFaceTimeSession = a3;
    [(UIButton *)self->_faceTimeButton setHidden:[(ContinuityCaptureShieldUIContentView *)self _shouldShowFaceTimeButton]^ 1];
    v5 = [(ContinuityCaptureShieldUIContentView *)self _disconnectButtonConfiguration];
    [(UIButton *)self->_disconnectButton setConfiguration:v5];
  }
}

- (void)setInPlacementStep:(BOOL)a3
{
  if (self->_inPlacementStep != a3)
  {
    v3 = a3;
    self->_inPlacementStep = a3;
    [(UIButton *)self->_pauseButton setHidden:?];
    [(UIButton *)self->_skipButton setHidden:!self->_inPlacementStep];
    [(UIImageView *)self->_imageView setHidden:self->_inPlacementStep];
    [(UIButton *)self->_favoritesButton setHidden:[(ContinuityCaptureShieldUIContentView *)self _shouldShowFavoritesButton]^ 1];
    [(UIView *)self->_animationViewContainer setHidden:!self->_inPlacementStep];
    v5 = [(ContinuityCaptureShieldUIContentView *)self _disconnectButtonConfiguration];
    [(UIButton *)self->_disconnectButton setConfiguration:v5];

    if (v3)
    {
      v6 = [(ContinuityCaptureShieldUIContentView *)self _defaultTextColor];
      v7 = 20.0;
      v8 = -20.0;
    }

    else
    {
      v6 = [(ContinuityCaptureShieldUIContentView *)self _defaultSecondaryTextColor];
      v7 = 53.0;
      v8 = -53.0;
    }

    [(UILabel *)self->_subtitleLabel setTextColor:v6];

    [(NSLayoutConstraint *)self->_descriptionLeadingAnchor setConstant:v7];
    [(NSLayoutConstraint *)self->_descriptionTrailingAnchor setConstant:v8];
    [(ContinuityCaptureShieldUIContentView *)self setNeedsUpdateConstraints];
    if (v3)
    {
      if (!self->_animationView)
      {
        v9 = +[UIDevice currentDevice];
        v10 = [v9 userInterfaceIdiom];

        v11 = @"iPhone_Rotate";
        if (v10 == 1)
        {
          v11 = @"iPad_Static";
        }

        v12 = v11;
        v13 = [ContinuityCaptureShieldUICAPackageView alloc];
        v14 = kCAPackageTypeArchive;
        v15 = +[NSBundle mainBundle];
        v16 = [(ContinuityCaptureShieldUICAPackageView *)v13 initWithPackageName:v12 type:v14 inBundle:v15];

        animationView = self->_animationView;
        self->_animationView = v16;

        [(ContinuityCaptureShieldUICAPackageView *)self->_animationView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)self->_animationViewContainer addSubview:self->_animationView];
        v31 = [(ContinuityCaptureShieldUICAPackageView *)self->_animationView leftAnchor];
        v30 = [(UIView *)self->_animationViewContainer leftAnchor];
        v29 = [v31 constraintEqualToAnchor:v30];
        v35[0] = v29;
        v28 = [(ContinuityCaptureShieldUICAPackageView *)self->_animationView rightAnchor];
        v27 = [(UIView *)self->_animationViewContainer rightAnchor];
        v26 = [v28 constraintEqualToAnchor:v27];
        v35[1] = v26;
        v18 = [(ContinuityCaptureShieldUICAPackageView *)self->_animationView topAnchor];
        v19 = [(UIView *)self->_animationViewContainer topAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        v35[2] = v20;
        v21 = [(ContinuityCaptureShieldUICAPackageView *)self->_animationView bottomAnchor];
        v22 = [(UIView *)self->_animationViewContainer bottomAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        v35[3] = v23;
        v24 = [NSArray arrayWithObjects:v35 count:4];
        [NSLayoutConstraint activateConstraints:v24];

        [(ContinuityCaptureShieldUIContentView *)self layoutIfNeeded];
        [(ContinuityCaptureShieldUICAPackageView *)self->_animationView setState:@"Static"];
      }

      objc_initWeak(&location, self);
      v25 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007B50;
      block[3] = &unk_100018738;
      objc_copyWeak(&v33, &location);
      dispatch_after(v25, &_dispatch_main_q, block);
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setIsDedicatedSession:(BOOL)a3
{
  if (self->_isDedicated != a3)
  {
    self->_isDedicated = a3;
    [(UIButton *)self->_favoritesButton setHidden:[(ContinuityCaptureShieldUIContentView *)self _shouldShowFavoritesButton]^ 1];
    faceTimeButton = self->_faceTimeButton;
    v6 = [(ContinuityCaptureShieldUIContentView *)self _shouldShowFaceTimeButton]^ 1;

    [(UIButton *)faceTimeButton setHidden:v6];
  }
}

- (void)setPauseButtonState:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      [(UIButton *)self->_pauseButton setHidden:0];
      v5 = [(UIButton *)self->_pauseButton configuration];
      v6 = [NSAttributedString alloc];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"BUTTON_TITLE_RESUME" value:&stru_100018990 table:0];
      v9 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
      v15 = v9;
      v10 = &v15;
      v11 = &v14;
      goto LABEL_9;
    case 1uLL:
      [(UIButton *)self->_pauseButton setHidden:0];
      v5 = [(UIButton *)self->_pauseButton configuration];
      v6 = [NSAttributedString alloc];
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"BUTTON_TITLE_PAUSE" value:&stru_100018990 table:0];
      v16 = NSFontAttributeName;
      v9 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
      v17 = v9;
      v10 = &v17;
      v11 = &v16;
LABEL_9:
      v12 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
      v13 = [v6 initWithString:v8 attributes:v12];
      [v5 setAttributedTitle:v13];

      [(UIButton *)self->_pauseButton setConfiguration:v5];
      return;
    case 0uLL:
      pauseButton = self->_pauseButton;

      [(UIButton *)pauseButton setHidden:1];
      break;
  }
}

- (void)_setPullFaceTimeButtonLoading:(BOOL)a3
{
  self->_pullFaceTimeButtonLoading = a3;
  faceTimeButton = self->_faceTimeButton;
  v5 = [(ContinuityCaptureShieldUIContentView *)self _facetimeButtonConfiguration];
  [(UIButton *)faceTimeButton setConfiguration:v5];

  v6 = self->_faceTimeButton;
  v7 = [(ContinuityCaptureShieldUIContentView *)self _shouldShowFaceTimeButton]^ 1;

  [(UIButton *)v6 setHidden:v7];
}

- (BOOL)_shouldShowFaceTimeButton
{
  if (self->_isDedicated)
  {
    return 0;
  }

  else
  {
    return self->_inFaceTimeSession || self->_pullFaceTimeButtonLoading;
  }
}

- (double)_defaultButtonScreenWidth
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 0.666666667;
  }

  return v3;
}

- (double)_defaultDescriptionScreenWidth
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 0.8;
  }

  return v3;
}

- (id)_defaultImageSymbolConfiguration
{
  v3 = +[UIFontMetrics defaultMetrics];
  v4 = [(ContinuityCaptureShieldUIContentView *)self traitCollection];
  [v3 scaledValueForValue:v4 compatibleWithTraitCollection:96.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)_pauseButtonConfiguration
{
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  [v3 setButtonSize:3];
  [v3 setCornerStyle:3];
  v4 = +[UIColor systemBlackColor];
  [v3 setBaseForegroundColor:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"BUTTON_TITLE_PAUSE" value:&stru_100018990 table:0];

  v7 = [NSAttributedString alloc];
  v8 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
  v14 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [v7 initWithString:v6 attributes:v9];
  [v3 setAttributedTitle:v10];

  v11 = +[UIColor systemWhiteColor];
  [v3 setBaseBackgroundColor:v11];

  return v3;
}

- (id)_facetimeButtonConfiguration
{
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  [v3 setButtonSize:3];
  [v3 setCornerStyle:3];
  v4 = +[UIColor systemWhiteColor];
  [v3 setBaseForegroundColor:v4];

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = +[UIColor systemGreenColor];
  [v3 setBaseBackgroundColor:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"BUTTON_TITLE_SWITCH_%@" value:&stru_100018990 table:0];
  v10 = @"iPhone";
  if (v6 == 1)
  {
    v10 = @"iPad";
    v11 = @"ipad.and.arrow.forward";
  }

  else
  {
    v11 = @"iphone.and.arrow.forward";
  }

  v12 = [NSString stringWithFormat:v9, v10];

  v13 = [NSAttributedString alloc];
  v19 = NSFontAttributeName;
  v14 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
  v20 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v16 = [v13 initWithString:v12 attributes:v15];
  [v3 setAttributedTitle:v16];

  v17 = [UIImage systemImageNamed:v11];
  [v3 setImage:v17];

  [v3 setImagePadding:6.0];
  [v3 setShowsActivityIndicator:self->_pullFaceTimeButtonLoading];

  return v3;
}

- (id)_favoritesButtonConfiguration
{
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  [v3 setButtonSize:3];
  [v3 setCornerStyle:3];
  v4 = +[UIColor systemBlackColor];
  [v3 setBaseForegroundColor:v4];

  v5 = +[UIColor systemWhiteColor];
  [v3 setBaseBackgroundColor:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"BUTTON_TITLE_FAVORITES" value:&stru_100018990 table:0];

  v8 = [NSAttributedString alloc];
  v9 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [v8 initWithString:v7 attributes:v10];
  [v3 setAttributedTitle:v11];

  v12 = [UIImage _systemImageNamed:@"star.circle.badge.person.crop"];
  [v3 setImage:v12];

  [v3 setImagePadding:6.0];

  return v3;
}

- (id)_disconnectButtonConfiguration
{
  if (self->_inPlacementStep)
  {
    +[UIButtonConfiguration borderlessButtonConfiguration];
  }

  else
  {
    +[UIButtonConfiguration filledButtonConfiguration];
  }
  v3 = ;
  [v3 setButtonSize:3];
  [v3 setCornerStyle:3];
  if (self->_inPlacementStep)
  {
    v4 = +[UIColor systemRedColor];
    [v3 setBaseForegroundColor:v4];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"BUTTON_TITLE_DISCONNECT" value:&stru_100018990 table:0];

    v7 = [[NSAttributedString alloc] initWithString:v6 attributes:&__NSDictionary0__struct];
    [v3 setAttributedTitle:v7];

    [v3 setImage:0];
  }

  else
  {
    v8 = +[UIColor systemWhiteColor];
    [v3 setBaseForegroundColor:v8];

    [v3 setImagePadding:6.0];
    v9 = +[UIColor systemRedColor];
    [v3 setBaseBackgroundColor:v9];

    LODWORD(v9) = self->_inFaceTimeSession;
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    if (v9)
    {
      v12 = @"BUTTON_TITLE_END_CALL_AND_DISCONNECT";
    }

    else
    {
      v12 = @"BUTTON_TITLE_DISCONNECT";
    }

    v6 = [v10 localizedStringForKey:v12 value:&stru_100018990 table:0];

    v13 = [NSAttributedString alloc];
    v14 = [(ContinuityCaptureShieldUIContentView *)self _defaultButtonTextFont];
    v22 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [v13 initWithString:v6 attributes:v15];
    [v3 setAttributedTitle:v16];

    [v3 setTitleLineBreakMode:0];
    if (self->_inFaceTimeSession)
    {
      v17 = [UIImage systemImageNamed:@"phone.down.fill"];
      [v3 setImage:v17];
    }

    else
    {
      v17 = [UIImage systemImageNamed:@"xmark"];
      v18 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleSubheadline];
      v19 = [v17 imageByApplyingSymbolConfiguration:v18];
      [v3 setImage:v19];
    }
  }

  [v3 contentInsets];
  [v3 setContentInsets:?];

  return v3;
}

- (id)_skipButtonConfiguration
{
  v2 = +[UIButtonConfiguration borderlessButtonConfiguration];
  [v2 setButtonSize:3];
  [v2 setCornerStyle:3];
  v3 = +[UIColor systemBlueColor];
  [v2 setBaseForegroundColor:v3];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"BUTTON_TITLE_SKIP_THIS_STEP" value:&stru_100018990 table:0];
  [v2 setTitle:v5];

  return v2;
}

- (ContinuityCaptureShieldUIContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end