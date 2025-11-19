@interface FeatureDiscoveryView
+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)a3 context:(unint64_t)a4;
+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)a3;
+ (id)_constraintsForFeatureDiscoveryView:(id)a3 centeredInContentView:(id)a4 withIdiom:(int64_t)a5 context:(unint64_t)a6;
- (FeatureDiscoveryView)initWithFrame:(CGRect)a3;
- (double)arrowOffset;
- (void)_configureActionButton;
- (void)_dismiss;
- (void)_performAction;
- (void)_performBodyTap;
- (void)_setupActionButtonIfNeeded;
- (void)setModel:(id)a3;
@end

@implementation FeatureDiscoveryView

- (void)_configureActionButton
{
  v14 = objc_alloc_init(NSMutableDictionary);
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v14 setObject:v3 forKeyedSubscript:NSFontAttributeName];

  v4 = +[UIColor systemBlueColor];
  [v14 setObject:v4 forKeyedSubscript:NSForegroundColorAttributeName];

  [(UIButton *)self->_actionButton setUserInteractionEnabled:1];
  v5 = [(FeatureDiscoveryView *)self model];
  if ([v5 shouldDisableAffordanceAfterAction])
  {
    v6 = [(FeatureDiscoveryView *)self model];
    v7 = [v6 hasActionExecuted];

    if (v7)
    {
      v8 = +[UIColor systemGray2Color];
      [v14 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

      [(UIButton *)self->_actionButton setUserInteractionEnabled:0];
    }
  }

  else
  {
  }

  v9 = [(FeatureDiscoveryModel *)self->_model actionTitle];
  if (v9)
  {
    v10 = [NSAttributedString alloc];
    v11 = [(FeatureDiscoveryModel *)self->_model actionTitle];
    v12 = [v10 initWithString:v11 attributes:v14];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(UIButton *)self->_actionButton configuration];
  [v13 setAttributedTitle:v12];
  [(UIButton *)self->_actionButton setConfiguration:v13];
}

- (void)_setupActionButtonIfNeeded
{
  v98 = 0u;
  v3 = objc_opt_class();
  v4 = [(FeatureDiscoveryView *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];
  if (v3)
  {
    [v3 _metricsForIdiom:v5];
  }

  else
  {
    v98 = 0u;
  }

  v6 = [(FeatureDiscoveryView *)self model];
  v7 = [v6 dismissHandler];

  v8 = [(FeatureDiscoveryView *)self model];
  v9 = [v8 actionTitle];
  if (!v9)
  {
    if (v7)
    {
      v14 = sub_10000FA08(self);

      if (v14 != 5)
      {
        goto LABEL_14;
      }

LABEL_11:
      [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
      [(NSLayoutConstraint *)self->_closeButtonTrailingConstraint setActive:0];
      v15 = [(FeatureDiscoveryView *)self bottomAnchor];
      v16 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];
      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v17;

      v19 = [(FeatureDiscoveryView *)self trailingAnchor];
      v20 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
      closeButtonTrailingConstraint = self->_closeButtonTrailingConstraint;
      self->_closeButtonTrailingConstraint = v21;

      v23 = self->_bottomConstraint;
      v102[0] = self->_closeButtonTrailingConstraint;
      v102[1] = v23;
      v24 = [NSArray arrayWithObjects:v102 count:2];
      [NSLayoutConstraint activateConstraints:v24];
LABEL_16:

      return;
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = v9;
  v11 = [(FeatureDiscoveryView *)self model];
  v12 = [v11 actionTitle];
  if ([v12 length] || !v7)
  {

    goto LABEL_13;
  }

  v13 = sub_10000FA08(self);

  if (v13 == 5)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = [(FeatureDiscoveryView *)self model];
  v25 = [v24 actionTitle];
  v26 = [(UIButton *)self->_actionButton titleLabel];
  v27 = [v26 text];
  v28 = v25;
  v29 = v27;
  if (!(v28 | v29))
  {

    goto LABEL_16;
  }

  v30 = v29;
  v31 = [v28 isEqual:v29];

  if ((v31 & 1) == 0)
  {
    [(UIButton *)self->_actionButton removeFromSuperview];
    [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
    [(NSLayoutConstraint *)self->_closeButtonTrailingConstraint setActive:0];
    v32 = [(FeatureDiscoveryView *)self model];
    v33 = [v32 actionTitle];
    v34 = [v33 length];

    if (v34)
    {
      v24 = objc_alloc_init(NSMutableArray);
      if (sub_10000FA08(self) == 5)
      {
        v35 = [UIButton buttonWithType:1];
        actionButton = self->_actionButton;
        self->_actionButton = v35;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        v37 = [(FeatureDiscoveryView *)self bottomAnchor];
        v38 = [(UIButton *)self->_actionButton bottomAnchor];
        v39 = [v37 constraintEqualToAnchor:v38 constant:0.0];
        v40 = self->_bottomConstraint;
        self->_bottomConstraint = v39;

        v41 = [(UIButton *)self->_actionButton leadingAnchor];
        v42 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
        v43 = [v41 constraintEqualToSystemSpacingAfterAnchor:v42 multiplier:1.0];
        v44 = self->_closeButtonTrailingConstraint;
        self->_closeButtonTrailingConstraint = v43;

        v100[0] = self->_closeButtonTrailingConstraint;
        v45 = [(FeatureDiscoveryView *)self trailingAnchor];
        v46 = [(UIButton *)self->_actionButton trailingAnchor];
        v47 = [v45 constraintEqualToAnchor:v46 constant:0.0];
        v100[1] = v47;
        v48 = [(MapsLargerHitTargetButton *)self->_closeButton topAnchor];
        v97 = [(UIButton *)self->_actionButton topAnchor];
        v96 = [v48 constraintEqualToAnchor:?];
        v100[2] = v96;
        v49 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
        v95 = [(UIButton *)self->_actionButton bottomAnchor];
        v94 = [v49 constraintEqualToAnchor:?];
        v100[3] = v94;
        v50 = [(UIButton *)self->_actionButton topAnchor];
        v92 = [(UIStackView *)self->_textStackView bottomAnchor];
        v93 = v50;
        v51 = [v50 constraintEqualToAnchor:*&v98 constant:?];
        v52 = self->_bottomConstraint;
        v53 = v51;
        v100[4] = v51;
        v100[5] = v52;
        v54 = [NSArray arrayWithObjects:v100 count:6];
        [v24 addObjectsFromArray:v54];
      }

      else
      {
        v60 = [UIButton buttonWithType:0];
        v61 = self->_actionButton;
        self->_actionButton = v60;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        [(UIButton *)self->_actionButton setContentHorizontalAlignment:4];
        v62 = [(UIButton *)self->_actionButton titleLabel];
        [v62 setLineBreakMode:4];

        v63 = [(UIButton *)self->_actionButton titleLabel];
        [v63 setNumberOfLines:0];

        v91 = +[UIButtonConfiguration plainButtonConfiguration];
        [v91 setContentInsets:{*(&v98 + 1), 0.0, 0.0, 0.0}];
        [(UIButton *)self->_actionButton setConfiguration:v91];
        LODWORD(v64) = 1148846080;
        [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v64];
        v65 = [[HairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        [(HairlineView *)v65 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(FeatureDiscoveryView *)self addSubview:v65];
        v66 = [(FeatureDiscoveryView *)self bottomAnchor];
        v67 = [(UIButton *)self->_actionButton bottomAnchor];
        v68 = [v66 constraintEqualToAnchor:v67];
        v69 = self->_bottomConstraint;
        self->_bottomConstraint = v68;

        v90 = [(UIButton *)self->_actionButton leadingAnchor];
        v89 = [(UIStackView *)self->_textStackView leadingAnchor];
        v97 = [v90 constraintEqualToAnchor:v89];
        v99[0] = v97;
        v70 = [(HairlineView *)v65 leadingAnchor];
        v88 = [(UIButton *)self->_actionButton leadingAnchor];
        v96 = v70;
        v95 = [v70 constraintEqualToAnchor:v88];
        v99[1] = v95;
        v71 = [(FeatureDiscoveryView *)self trailingAnchor];
        v93 = [(HairlineView *)v65 trailingAnchor];
        v94 = v71;
        v92 = [v71 constraintEqualToAnchor:?];
        v99[2] = v92;
        v85 = [(HairlineView *)v65 bottomAnchor];
        v54 = [(UIStackView *)self->_textStackView bottomAnchor];
        v87 = [v85 constraintEqualToAnchor:v54 constant:*&v98];
        v99[3] = v87;
        v86 = [(UIButton *)self->_actionButton trailingAnchor];
        v84 = [(MapsLargerHitTargetButton *)self->_closeButton leadingAnchor];
        v72 = [v86 constraintLessThanOrEqualToAnchor:v84];
        v99[4] = v72;
        v73 = [(UIButton *)self->_actionButton topAnchor];
        v74 = [(HairlineView *)v65 bottomAnchor];
        v75 = [v73 constraintEqualToAnchor:v74];
        v76 = self->_bottomConstraint;
        v99[5] = v75;
        v99[6] = v76;
        v77 = [NSArray arrayWithObjects:v99 count:7];
        [v24 addObjectsFromArray:v77];

        v53 = v85;
        v49 = v88;

        v48 = v89;
        v46 = v65;
        v47 = v90;

        v45 = v91;
      }

      [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v78 = [(UIButton *)self->_actionButton titleLabel];
      [v78 setAdjustsFontForContentSizeCategory:1];

      [(UIButton *)self->_actionButton setRole:1];
      v79 = [(FeatureDiscoveryView *)self model];
      v80 = [v79 actionHandler];
      [(UIButton *)self->_actionButton setEnabled:v80 != 0];

      [(UIButton *)self->_actionButton addTarget:self action:"_performAction" forControlEvents:64];
      [(FeatureDiscoveryView *)self addSubview:self->_actionButton];
      [NSLayoutConstraint activateConstraints:v24];
      if (sub_10000FA08(self) == 5)
      {
        v81 = self->_actionButton;
        v82 = [(FeatureDiscoveryView *)self model];
        v83 = [v82 actionTitle];
        [(UIButton *)v81 setTitle:v83 forState:0];
      }

      else
      {
        [(FeatureDiscoveryView *)self _configureActionButton];
      }
    }

    else
    {
      v55 = [(FeatureDiscoveryView *)self bottomAnchor];
      v56 = [(UIStackView *)self->_textStackView bottomAnchor];
      v57 = [v55 constraintEqualToAnchor:v56 constant:0.0];
      v58 = self->_bottomConstraint;
      self->_bottomConstraint = v57;

      v101 = self->_bottomConstraint;
      v59 = [NSArray arrayWithObjects:&v101 count:1];
      [NSLayoutConstraint activateConstraints:v59];

      v24 = self->_actionButton;
      self->_actionButton = 0;
    }

    goto LABEL_16;
  }
}

- (void)_performBodyTap
{
  v6 = [(FeatureDiscoveryView *)self model];
  if (([v6 isDismissed] & 1) == 0)
  {
    v3 = [(FeatureDiscoveryView *)self model];
    v4 = [v3 bodyTapHandler];

    if (!v4)
    {
      return;
    }

    v6 = [(FeatureDiscoveryView *)self model];
    v5 = [v6 bodyTapHandler];
    v5[2]();
  }
}

- (void)_performAction
{
  v7 = [(FeatureDiscoveryView *)self model];
  if ([v7 isDismissed])
  {
  }

  else
  {
    v3 = [(FeatureDiscoveryView *)self model];
    v4 = [v3 actionHandler];

    if (v4)
    {
      v5 = [(FeatureDiscoveryView *)self model];
      v6 = [v5 actionHandler];
      v6[2]();

      [(FeatureDiscoveryView *)self _configureActionButton];
    }
  }
}

- (void)_dismiss
{
  v3 = [(FeatureDiscoveryView *)self model];
  if (([v3 isDismissed] & 1) == 0)
  {
    v4 = [(FeatureDiscoveryView *)self model];
    v5 = [v4 dismissHandler];

    if (!v5)
    {
      goto LABEL_5;
    }

    v3 = [(FeatureDiscoveryView *)self model];
    v6 = [v3 dismissHandler];
    v6[2]();
  }

LABEL_5:
  v7 = [(FeatureDiscoveryView *)self model];
  [v7 setDismissed:1];
}

- (void)setModel:(id)a3
{
  v5 = a3;
  model = self->_model;
  v20 = v5;
  v7 = model;
  v8 = v20;
  if (v20 | v7)
  {
    v9 = [v20 isEqual:v7];

    v8 = v20;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_model, a3);
      [(FeatureDiscoveryModel *)self->_model setUpdatesDelegate:self];
      [(FeatureDiscoveryView *)self setShowBubbleIndicator:[(FeatureDiscoveryModel *)self->_model isTipMode]];
      v10 = [v20 image];

      v11 = [v20 image];
      [(UIImageView *)self->_imageView setImage:v11];

      [(UIImageView *)self->_imageView setHidden:v10 == 0];
      v12 = [v20 title];
      [(UILabel *)self->_titleLabel setText:v12];

      v13 = [v20 subtitle];
      [(UILabel *)self->_subtitleLabel setText:v13];

      v14 = [v20 dismissHandler];
      v15 = v14 == 0;

      [(MapsLargerHitTargetButton *)self->_closeButton setHidden:v15];
      [(FeatureDiscoveryView *)self _setupActionButtonIfNeeded];
      v16 = [v20 bodyTapHandler];

      tapGesture = self->_tapGesture;
      if (v16)
      {
        [(FeatureDiscoveryView *)self addGestureRecognizer:tapGesture];
      }

      else
      {
        [(FeatureDiscoveryView *)self removeGestureRecognizer:tapGesture];
      }

      if (v10)
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithoutImage;
      }

      else
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithImage;
      }

      if (v10)
      {
        v19 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithImage;
      }

      else
      {
        v19 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithoutImage;
      }

      [NSLayoutConstraint deactivateConstraints:*&self->MUFeatureDiscoveryAnnotationView_opaque[*v18]];
      [NSLayoutConstraint activateConstraints:*&self->MUFeatureDiscoveryAnnotationView_opaque[*v19]];
      v8 = v20;
    }
  }
}

- (double)arrowOffset
{
  v3 = [(FeatureDiscoveryView *)self sourceView];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = FeatureDiscoveryView;
    [(FeatureDiscoveryView *)&v6 arrowOffset];
  }

  else
  {
    [(FeatureDiscoveryView *)self bounds];
    return v5 * 0.5 + -25.0;
  }

  return result;
}

- (FeatureDiscoveryView)initWithFrame:(CGRect)a3
{
  v117.receiver = self;
  v117.super_class = FeatureDiscoveryView;
  v3 = [(FeatureDiscoveryView *)&v117 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FeatureDiscoveryView *)v3 setClipsToBounds:0];
    [(FeatureDiscoveryView *)v4 setFloatingIndicator:1];
    v5 = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(FeatureDiscoveryView *)v4 setAccessibilityIdentifier:v7];

    v116 = 0u;
    v115 = 0u;
    v8 = objc_opt_class();
    v9 = [(FeatureDiscoveryView *)v4 traitCollection];
    v10 = [v9 userInterfaceIdiom];
    if (v8)
    {
      [v8 _metricsForIdiom:v10];
    }

    else
    {
      v116 = 0u;
      v115 = 0u;
    }

    v11 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v4->_imageView;
    v4->_imageView = v15;

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setAccessibilityIdentifier:@"FeatureDiscoveryImageView"];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_imageView];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v17;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v20 = [v19 _mapkit_fontWithWeight:UIFontWeightSemibold];
    [(UILabel *)v4->_titleLabel setFont:v20];

    v21 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v21];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"FeatureDiscoveryTitle"];
    LODWORD(v22) = 1132068864;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:0 forAxis:v22];
    v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v23;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:v25];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"FeatureDiscoverySubtitle"];
    LODWORD(v26) = 1132068864;
    [(UILabel *)v4->_subtitleLabel setContentHuggingPriority:0 forAxis:v26];
    v27 = [UIStackView alloc];
    v122[0] = v4->_titleLabel;
    v122[1] = v4->_subtitleLabel;
    v28 = [NSArray arrayWithObjects:v122 count:2];
    v29 = [v27 initWithArrangedSubviews:v28];
    textStackView = v4->_textStackView;
    v4->_textStackView = v29;

    [(UIStackView *)v4->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_textStackView setAxis:1];
    [(UIStackView *)v4->_textStackView setDistribution:0];
    [(UIStackView *)v4->_textStackView setAlignment:0];
    v31 = 0.0;
    [(UIStackView *)v4->_textStackView setSpacing:0.0];
    [(UIStackView *)v4->_textStackView setAccessibilityIdentifier:@"FeatureDiscoveryTextStack"];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_textStackView];
    v32 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"_performBodyTap"];
    tapGesture = v4->_tapGesture;
    v4->_tapGesture = v32;

    v34 = objc_alloc_init(NSMutableArray);
    v35 = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v36 = UIFontTextStyleSubheadline;
    v114 = v34;
    if (sub_10000FA08(v4) == 5)
    {
      v37 = [UIColor colorWithWhite:0.0 alpha:0.0199999996];
      v38 = [v37 CGColor];
      v39 = [(FeatureDiscoveryView *)v4 layer];
      [v39 setBorderColor:v38];

      v40 = [(FeatureDiscoveryView *)v4 traitCollection];
      [v40 displayScale];
      v42 = v41;
      v43 = v41 <= 1.0;
      v44 = 1.0;
      if (!v43)
      {
        v38 = [(FeatureDiscoveryView *)v4 traitCollection];
        [v38 displayScale];
      }

      v45 = 1.0 / v44;
      v46 = [(FeatureDiscoveryView *)v4 layer];
      [v46 setBorderWidth:v45];

      if (v42 > 1.0)
      {
      }

      v112 = UIFontTextStyleBody;
      v47 = [MapsLargerHitTargetButton buttonWithType:1];
      closeButton = v4->_closeButton;
      v4->_closeButton = v47;

      v49 = v4->_closeButton;
      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"Dismiss [Action value:Route Planning table:{Feature Discovery, Mac]", @"localized string not found", 0}];
      [(MapsLargerHitTargetButton *)v49 setTitle:v51 forState:0];

      [(MapsLargerHitTargetButton *)v4->_closeButton setAccessibilityIdentifier:@"FeatureDiscoveryCloseButton"];
      v52 = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      v107 = [(FeatureDiscoveryView *)v4 leadingAnchor];
      v109 = [v52 constraintGreaterThanOrEqualToAnchor:*&v115 constant:?];
      v121[0] = v109;
      v53 = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      v54 = [(UIStackView *)v4->_textStackView bottomAnchor];
      v105 = v53;
      v55 = [v53 constraintEqualToAnchor:v54 constant:*&v115];
      v121[1] = v55;
      v56 = [(FeatureDiscoveryView *)v4 trailingAnchor];
      v57 = [(UIStackView *)v4->_textStackView trailingAnchor];
      v58 = [v56 constraintEqualToAnchor:v57 constant:*&v115];
      v121[2] = v58;
      v59 = [NSArray arrayWithObjects:v121 count:3];
      [v34 addObjectsFromArray:v59];
      v60 = v112;
    }

    else
    {
      v61 = [MapsLargerHitTargetButton buttonWithType:0];
      v62 = v4->_closeButton;
      v4->_closeButton = v61;

      +[UIFont systemFontSize];
      v63 = [UIFont systemFontOfSize:?];
      v64 = [v63 _mapkit_fontWithWeight:UIFontWeightMedium];
      v65 = [UIImageSymbolConfiguration configurationWithFont:v64];

      v104 = v65;
      v66 = [UIImage systemImageNamed:@"xmark" withConfiguration:v65];
      v67 = [v66 imageWithRenderingMode:2];

      [(MapsLargerHitTargetButton *)v4->_closeButton setImage:v67 forState:0];
      [v67 size];
      if (v68 <= 0.0)
      {
        [v67 size];
        v31 = (0.0 - v69) * 0.5;
      }

      v113 = v36;
      [v67 size];
      v70 = 0.0;
      if (v71 <= 0.0)
      {
        [v67 size];
        v70 = (0.0 - v72) * 0.5;
      }

      [(MapsLargerHitTargetButton *)v4->_closeButton setTouchInsets:-v70, -v31, -v70, -v31];
      v73 = +[UIColor secondaryLabelColor];
      [(MapsLargerHitTargetButton *)v4->_closeButton setTintColor:v73];

      LODWORD(v74) = 1144750080;
      [(MapsLargerHitTargetButton *)v4->_closeButton setContentHuggingPriority:0 forAxis:v74];
      LODWORD(v75) = 1148846080;
      [(MapsLargerHitTargetButton *)v4->_closeButton setContentCompressionResistancePriority:0 forAxis:v75];
      v76 = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      [(UIStackView *)v4->_textStackView trailingAnchor];
      v105 = v109 = v76;
      v54 = [v76 constraintEqualToAnchor:*&v115 constant:?];
      v120[0] = v54;
      v55 = [(FeatureDiscoveryView *)v4 trailingAnchor];
      [(MapsLargerHitTargetButton *)v4->_closeButton trailingAnchor];
      v56 = v107 = v67;
      v57 = [v55 constraintEqualToAnchor:v56 constant:*&v115];
      v120[1] = v57;
      v58 = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      v59 = [(UIStackView *)v4->_textStackView topAnchor];
      v77 = [v58 constraintEqualToAnchor:v59];
      v120[2] = v77;
      v78 = [NSArray arrayWithObjects:v120 count:3];
      [v34 addObjectsFromArray:v78];

      v60 = v113;
      v52 = v104;
    }

    v79 = [UIFont preferredFontForTextStyle:v60];
    [(UILabel *)v4->_subtitleLabel setFont:v79];

    [(MapsLargerHitTargetButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsLargerHitTargetButton *)v4->_closeButton addTarget:v4 action:"_dismiss" forControlEvents:64];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_closeButton];
    v111 = [(UIImageView *)v4->_imageView widthAnchor];
    v110 = [v111 constraintEqualToConstant:*(&v116 + 1)];
    v119[0] = v110;
    v108 = [(UIImageView *)v4->_imageView leadingAnchor];
    v106 = [(FeatureDiscoveryView *)v4 leadingAnchor];
    v80 = [v108 constraintEqualToAnchor:v106 constant:*&v115];
    v119[1] = v80;
    v81 = [(UIImageView *)v4->_imageView centerYAnchor];
    v82 = [(UIStackView *)v4->_textStackView centerYAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];
    v119[2] = v83;
    v84 = [(UIStackView *)v4->_textStackView topAnchor];
    v85 = [(FeatureDiscoveryView *)v4 topAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:*(&v115 + 1)];
    v119[3] = v86;
    v87 = [NSArray arrayWithObjects:v119 count:4];
    [v114 addObjectsFromArray:v87];

    v88 = [(UIStackView *)v4->_textStackView leadingAnchor];
    v89 = [(UIImageView *)v4->_imageView trailingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 constant:*&v115];
    v91 = [v114 arrayByAddingObject:v90];
    constraintsWithImage = v4->_constraintsWithImage;
    v4->_constraintsWithImage = v91;

    v93 = [(UIStackView *)v4->_textStackView leadingAnchor];
    v94 = [(UIImageView *)v4->_imageView leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    v96 = [v114 arrayByAddingObject:v95];
    constraintsWithoutImage = v4->_constraintsWithoutImage;
    v4->_constraintsWithoutImage = v96;

    [NSLayoutConstraint activateConstraints:v4->_constraintsWithoutImage];
    v98 = [(FeatureDiscoveryView *)v4 bottomAnchor];
    v99 = [(UIStackView *)v4->_textStackView bottomAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:*&v116];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v100;

    v118 = v4->_bottomConstraint;
    v102 = [NSArray arrayWithObjects:&v118 count:1];
    [NSLayoutConstraint activateConstraints:v102];

    [(FeatureDiscoveryView *)v4 _setupActionButtonIfNeeded];
  }

  return v4;
}

+ (id)_constraintsForFeatureDiscoveryView:(id)a3 centeredInContentView:(id)a4 withIdiom:(int64_t)a5 context:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  [FeatureDiscoveryView _cellMetricsForIdiom:a5 context:a6];
  v11 = [v10 _maps_constraintsEqualToEdgesOfView:v9 insets:? priority:?];

  v12 = [v11 allConstraints];

  return v12;
}

+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)a3 context:(unint64_t)a4
{
  v4 = 2.0;
  if (!a4)
  {
    v4 = 12.0;
  }

  v5 = 4.0;
  if (!a4)
  {
    v5 = 0.0;
  }

  if (a3 == 5)
  {
    v5 = v4;
  }

  v6 = 10.0;
  if (a3 != 5)
  {
    v6 = 16.0;
  }

  v7 = 6.0;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v7;
  return result;
}

+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)a3
{
  if (a4 == 5)
  {
    retstr->var6 = 0.0;
    *&retstr->var0 = xmmword_101215ED0;
    *&retstr->var2 = unk_101215EE0;
    *&retstr->var4 = xmmword_101215EF0;
  }

  else
  {
    *&retstr->var0 = xmmword_101215F08;
    *&retstr->var2 = unk_101215F18;
    *&retstr->var4 = xmmword_101215F28;
    retstr->var6 = 40.0;
  }

  return result;
}

@end