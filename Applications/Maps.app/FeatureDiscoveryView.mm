@interface FeatureDiscoveryView
+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)idiom context:(unint64_t)context;
+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)idiom;
+ (id)_constraintsForFeatureDiscoveryView:(id)view centeredInContentView:(id)contentView withIdiom:(int64_t)idiom context:(unint64_t)context;
- (FeatureDiscoveryView)initWithFrame:(CGRect)frame;
- (double)arrowOffset;
- (void)_configureActionButton;
- (void)_dismiss;
- (void)_performAction;
- (void)_performBodyTap;
- (void)_setupActionButtonIfNeeded;
- (void)setModel:(id)model;
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
  model = [(FeatureDiscoveryView *)self model];
  if ([model shouldDisableAffordanceAfterAction])
  {
    model2 = [(FeatureDiscoveryView *)self model];
    hasActionExecuted = [model2 hasActionExecuted];

    if (hasActionExecuted)
    {
      v8 = +[UIColor systemGray2Color];
      [v14 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

      [(UIButton *)self->_actionButton setUserInteractionEnabled:0];
    }
  }

  else
  {
  }

  actionTitle = [(FeatureDiscoveryModel *)self->_model actionTitle];
  if (actionTitle)
  {
    v10 = [NSAttributedString alloc];
    actionTitle2 = [(FeatureDiscoveryModel *)self->_model actionTitle];
    v12 = [v10 initWithString:actionTitle2 attributes:v14];
  }

  else
  {
    v12 = 0;
  }

  configuration = [(UIButton *)self->_actionButton configuration];
  [configuration setAttributedTitle:v12];
  [(UIButton *)self->_actionButton setConfiguration:configuration];
}

- (void)_setupActionButtonIfNeeded
{
  v98 = 0u;
  v3 = objc_opt_class();
  traitCollection = [(FeatureDiscoveryView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (v3)
  {
    [v3 _metricsForIdiom:userInterfaceIdiom];
  }

  else
  {
    v98 = 0u;
  }

  model = [(FeatureDiscoveryView *)self model];
  dismissHandler = [model dismissHandler];

  model2 = [(FeatureDiscoveryView *)self model];
  actionTitle = [model2 actionTitle];
  if (!actionTitle)
  {
    if (dismissHandler)
    {
      v14 = sub_10000FA08(self);

      if (v14 != 5)
      {
        goto LABEL_14;
      }

LABEL_11:
      [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
      [(NSLayoutConstraint *)self->_closeButtonTrailingConstraint setActive:0];
      bottomAnchor = [(FeatureDiscoveryView *)self bottomAnchor];
      bottomAnchor2 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      bottomConstraint = self->_bottomConstraint;
      self->_bottomConstraint = v17;

      trailingAnchor = [(FeatureDiscoveryView *)self trailingAnchor];
      trailingAnchor2 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      closeButtonTrailingConstraint = self->_closeButtonTrailingConstraint;
      self->_closeButtonTrailingConstraint = v21;

      v23 = self->_bottomConstraint;
      v102[0] = self->_closeButtonTrailingConstraint;
      v102[1] = v23;
      model4 = [NSArray arrayWithObjects:v102 count:2];
      [NSLayoutConstraint activateConstraints:model4];
LABEL_16:

      return;
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = actionTitle;
  model3 = [(FeatureDiscoveryView *)self model];
  actionTitle2 = [model3 actionTitle];
  if ([actionTitle2 length] || !dismissHandler)
  {

    goto LABEL_13;
  }

  v13 = sub_10000FA08(self);

  if (v13 == 5)
  {
    goto LABEL_11;
  }

LABEL_14:
  model4 = [(FeatureDiscoveryView *)self model];
  actionTitle3 = [model4 actionTitle];
  titleLabel = [(UIButton *)self->_actionButton titleLabel];
  text = [titleLabel text];
  v28 = actionTitle3;
  v29 = text;
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
    model5 = [(FeatureDiscoveryView *)self model];
    actionTitle4 = [model5 actionTitle];
    v34 = [actionTitle4 length];

    if (v34)
    {
      model4 = objc_alloc_init(NSMutableArray);
      if (sub_10000FA08(self) == 5)
      {
        v35 = [UIButton buttonWithType:1];
        actionButton = self->_actionButton;
        self->_actionButton = v35;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        bottomAnchor3 = [(FeatureDiscoveryView *)self bottomAnchor];
        bottomAnchor4 = [(UIButton *)self->_actionButton bottomAnchor];
        v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
        v40 = self->_bottomConstraint;
        self->_bottomConstraint = v39;

        leadingAnchor = [(UIButton *)self->_actionButton leadingAnchor];
        trailingAnchor3 = [(MapsLargerHitTargetButton *)self->_closeButton trailingAnchor];
        v43 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
        v44 = self->_closeButtonTrailingConstraint;
        self->_closeButtonTrailingConstraint = v43;

        v100[0] = self->_closeButtonTrailingConstraint;
        trailingAnchor4 = [(FeatureDiscoveryView *)self trailingAnchor];
        trailingAnchor5 = [(UIButton *)self->_actionButton trailingAnchor];
        v47 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:0.0];
        v100[1] = v47;
        topAnchor = [(MapsLargerHitTargetButton *)self->_closeButton topAnchor];
        topAnchor2 = [(UIButton *)self->_actionButton topAnchor];
        v96 = [topAnchor constraintEqualToAnchor:?];
        v100[2] = v96;
        bottomAnchor5 = [(MapsLargerHitTargetButton *)self->_closeButton bottomAnchor];
        bottomAnchor6 = [(UIButton *)self->_actionButton bottomAnchor];
        v94 = [bottomAnchor5 constraintEqualToAnchor:?];
        v100[3] = v94;
        topAnchor3 = [(UIButton *)self->_actionButton topAnchor];
        bottomAnchor7 = [(UIStackView *)self->_textStackView bottomAnchor];
        trailingAnchor7 = topAnchor3;
        v51 = [topAnchor3 constraintEqualToAnchor:*&v98 constant:?];
        v52 = self->_bottomConstraint;
        v53 = v51;
        v100[4] = v51;
        v100[5] = v52;
        bottomAnchor11 = [NSArray arrayWithObjects:v100 count:6];
        [model4 addObjectsFromArray:bottomAnchor11];
      }

      else
      {
        v60 = [UIButton buttonWithType:0];
        v61 = self->_actionButton;
        self->_actionButton = v60;

        [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"FeatureDiscoveryActionButton"];
        [(UIButton *)self->_actionButton setContentHorizontalAlignment:4];
        titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
        [titleLabel2 setLineBreakMode:4];

        titleLabel3 = [(UIButton *)self->_actionButton titleLabel];
        [titleLabel3 setNumberOfLines:0];

        v91 = +[UIButtonConfiguration plainButtonConfiguration];
        [v91 setContentInsets:{*(&v98 + 1), 0.0, 0.0, 0.0}];
        [(UIButton *)self->_actionButton setConfiguration:v91];
        LODWORD(v64) = 1148846080;
        [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v64];
        v65 = [[HairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
        [(HairlineView *)v65 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(FeatureDiscoveryView *)self addSubview:v65];
        bottomAnchor8 = [(FeatureDiscoveryView *)self bottomAnchor];
        bottomAnchor9 = [(UIButton *)self->_actionButton bottomAnchor];
        v68 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
        v69 = self->_bottomConstraint;
        self->_bottomConstraint = v68;

        leadingAnchor2 = [(UIButton *)self->_actionButton leadingAnchor];
        leadingAnchor3 = [(UIStackView *)self->_textStackView leadingAnchor];
        topAnchor2 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
        v99[0] = topAnchor2;
        leadingAnchor4 = [(HairlineView *)v65 leadingAnchor];
        leadingAnchor5 = [(UIButton *)self->_actionButton leadingAnchor];
        v96 = leadingAnchor4;
        bottomAnchor6 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v99[1] = bottomAnchor6;
        trailingAnchor6 = [(FeatureDiscoveryView *)self trailingAnchor];
        trailingAnchor7 = [(HairlineView *)v65 trailingAnchor];
        v94 = trailingAnchor6;
        bottomAnchor7 = [trailingAnchor6 constraintEqualToAnchor:?];
        v99[2] = bottomAnchor7;
        bottomAnchor10 = [(HairlineView *)v65 bottomAnchor];
        bottomAnchor11 = [(UIStackView *)self->_textStackView bottomAnchor];
        v87 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:*&v98];
        v99[3] = v87;
        trailingAnchor8 = [(UIButton *)self->_actionButton trailingAnchor];
        leadingAnchor6 = [(MapsLargerHitTargetButton *)self->_closeButton leadingAnchor];
        v72 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:leadingAnchor6];
        v99[4] = v72;
        topAnchor4 = [(UIButton *)self->_actionButton topAnchor];
        bottomAnchor12 = [(HairlineView *)v65 bottomAnchor];
        v75 = [topAnchor4 constraintEqualToAnchor:bottomAnchor12];
        v76 = self->_bottomConstraint;
        v99[5] = v75;
        v99[6] = v76;
        v77 = [NSArray arrayWithObjects:v99 count:7];
        [model4 addObjectsFromArray:v77];

        v53 = bottomAnchor10;
        bottomAnchor5 = leadingAnchor5;

        topAnchor = leadingAnchor3;
        trailingAnchor5 = v65;
        v47 = leadingAnchor2;

        trailingAnchor4 = v91;
      }

      [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      titleLabel4 = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel4 setAdjustsFontForContentSizeCategory:1];

      [(UIButton *)self->_actionButton setRole:1];
      model6 = [(FeatureDiscoveryView *)self model];
      actionHandler = [model6 actionHandler];
      [(UIButton *)self->_actionButton setEnabled:actionHandler != 0];

      [(UIButton *)self->_actionButton addTarget:self action:"_performAction" forControlEvents:64];
      [(FeatureDiscoveryView *)self addSubview:self->_actionButton];
      [NSLayoutConstraint activateConstraints:model4];
      if (sub_10000FA08(self) == 5)
      {
        v81 = self->_actionButton;
        model7 = [(FeatureDiscoveryView *)self model];
        actionTitle5 = [model7 actionTitle];
        [(UIButton *)v81 setTitle:actionTitle5 forState:0];
      }

      else
      {
        [(FeatureDiscoveryView *)self _configureActionButton];
      }
    }

    else
    {
      bottomAnchor13 = [(FeatureDiscoveryView *)self bottomAnchor];
      bottomAnchor14 = [(UIStackView *)self->_textStackView bottomAnchor];
      v57 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14 constant:0.0];
      v58 = self->_bottomConstraint;
      self->_bottomConstraint = v57;

      v101 = self->_bottomConstraint;
      v59 = [NSArray arrayWithObjects:&v101 count:1];
      [NSLayoutConstraint activateConstraints:v59];

      model4 = self->_actionButton;
      self->_actionButton = 0;
    }

    goto LABEL_16;
  }
}

- (void)_performBodyTap
{
  model = [(FeatureDiscoveryView *)self model];
  if (([model isDismissed] & 1) == 0)
  {
    model2 = [(FeatureDiscoveryView *)self model];
    bodyTapHandler = [model2 bodyTapHandler];

    if (!bodyTapHandler)
    {
      return;
    }

    model = [(FeatureDiscoveryView *)self model];
    bodyTapHandler2 = [model bodyTapHandler];
    bodyTapHandler2[2]();
  }
}

- (void)_performAction
{
  model = [(FeatureDiscoveryView *)self model];
  if ([model isDismissed])
  {
  }

  else
  {
    model2 = [(FeatureDiscoveryView *)self model];
    actionHandler = [model2 actionHandler];

    if (actionHandler)
    {
      model3 = [(FeatureDiscoveryView *)self model];
      actionHandler2 = [model3 actionHandler];
      actionHandler2[2]();

      [(FeatureDiscoveryView *)self _configureActionButton];
    }
  }
}

- (void)_dismiss
{
  model = [(FeatureDiscoveryView *)self model];
  if (([model isDismissed] & 1) == 0)
  {
    model2 = [(FeatureDiscoveryView *)self model];
    dismissHandler = [model2 dismissHandler];

    if (!dismissHandler)
    {
      goto LABEL_5;
    }

    model = [(FeatureDiscoveryView *)self model];
    dismissHandler2 = [model dismissHandler];
    dismissHandler2[2]();
  }

LABEL_5:
  model3 = [(FeatureDiscoveryView *)self model];
  [model3 setDismissed:1];
}

- (void)setModel:(id)model
{
  modelCopy = model;
  model = self->_model;
  v20 = modelCopy;
  modelCopy2 = model;
  v8 = v20;
  if (v20 | modelCopy2)
  {
    v9 = [v20 isEqual:modelCopy2];

    v8 = v20;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_model, model);
      [(FeatureDiscoveryModel *)self->_model setUpdatesDelegate:self];
      [(FeatureDiscoveryView *)self setShowBubbleIndicator:[(FeatureDiscoveryModel *)self->_model isTipMode]];
      image = [v20 image];

      image2 = [v20 image];
      [(UIImageView *)self->_imageView setImage:image2];

      [(UIImageView *)self->_imageView setHidden:image == 0];
      title = [v20 title];
      [(UILabel *)self->_titleLabel setText:title];

      subtitle = [v20 subtitle];
      [(UILabel *)self->_subtitleLabel setText:subtitle];

      dismissHandler = [v20 dismissHandler];
      v15 = dismissHandler == 0;

      [(MapsLargerHitTargetButton *)self->_closeButton setHidden:v15];
      [(FeatureDiscoveryView *)self _setupActionButtonIfNeeded];
      bodyTapHandler = [v20 bodyTapHandler];

      tapGesture = self->_tapGesture;
      if (bodyTapHandler)
      {
        [(FeatureDiscoveryView *)self addGestureRecognizer:tapGesture];
      }

      else
      {
        [(FeatureDiscoveryView *)self removeGestureRecognizer:tapGesture];
      }

      if (image)
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithoutImage;
      }

      else
      {
        v18 = &OBJC_IVAR___FeatureDiscoveryView__constraintsWithImage;
      }

      if (image)
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
  sourceView = [(FeatureDiscoveryView *)self sourceView];

  if (sourceView)
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

- (FeatureDiscoveryView)initWithFrame:(CGRect)frame
{
  v117.receiver = self;
  v117.super_class = FeatureDiscoveryView;
  v3 = [(FeatureDiscoveryView *)&v117 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FeatureDiscoveryView *)v3 setClipsToBounds:0];
    [(FeatureDiscoveryView *)v4 setFloatingIndicator:1];
    traitCollection = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(FeatureDiscoveryView *)v4 setAccessibilityIdentifier:v7];

    v116 = 0u;
    v115 = 0u;
    v8 = objc_opt_class();
    traitCollection2 = [(FeatureDiscoveryView *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
    if (v8)
    {
      [v8 _metricsForIdiom:userInterfaceIdiom];
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
    traitCollection3 = [(FeatureDiscoveryView *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(FeatureDiscoveryView *)v4 setCornerRadius:?];

    v36 = UIFontTextStyleSubheadline;
    v114 = v34;
    if (sub_10000FA08(v4) == 5)
    {
      v37 = [UIColor colorWithWhite:0.0 alpha:0.0199999996];
      cGColor = [v37 CGColor];
      layer = [(FeatureDiscoveryView *)v4 layer];
      [layer setBorderColor:cGColor];

      traitCollection4 = [(FeatureDiscoveryView *)v4 traitCollection];
      [traitCollection4 displayScale];
      v42 = v41;
      v43 = v41 <= 1.0;
      v44 = 1.0;
      if (!v43)
      {
        cGColor = [(FeatureDiscoveryView *)v4 traitCollection];
        [cGColor displayScale];
      }

      v45 = 1.0 / v44;
      layer2 = [(FeatureDiscoveryView *)v4 layer];
      [layer2 setBorderWidth:v45];

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
      leadingAnchor = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      leadingAnchor2 = [(FeatureDiscoveryView *)v4 leadingAnchor];
      v109 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:*&v115 constant:?];
      v121[0] = v109;
      topAnchor = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      bottomAnchor = [(UIStackView *)v4->_textStackView bottomAnchor];
      v105 = topAnchor;
      trailingAnchor3 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:*&v115];
      v121[1] = trailingAnchor3;
      trailingAnchor = [(FeatureDiscoveryView *)v4 trailingAnchor];
      trailingAnchor2 = [(UIStackView *)v4->_textStackView trailingAnchor];
      topAnchor2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*&v115];
      v121[2] = topAnchor2;
      topAnchor3 = [NSArray arrayWithObjects:v121 count:3];
      [v34 addObjectsFromArray:topAnchor3];
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
      leadingAnchor3 = [(MapsLargerHitTargetButton *)v4->_closeButton leadingAnchor];
      [(UIStackView *)v4->_textStackView trailingAnchor];
      v105 = v109 = leadingAnchor3;
      bottomAnchor = [leadingAnchor3 constraintEqualToAnchor:*&v115 constant:?];
      v120[0] = bottomAnchor;
      trailingAnchor3 = [(FeatureDiscoveryView *)v4 trailingAnchor];
      [(MapsLargerHitTargetButton *)v4->_closeButton trailingAnchor];
      trailingAnchor = leadingAnchor2 = v67;
      trailingAnchor2 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor constant:*&v115];
      v120[1] = trailingAnchor2;
      topAnchor2 = [(MapsLargerHitTargetButton *)v4->_closeButton topAnchor];
      topAnchor3 = [(UIStackView *)v4->_textStackView topAnchor];
      v77 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      v120[2] = v77;
      v78 = [NSArray arrayWithObjects:v120 count:3];
      [v34 addObjectsFromArray:v78];

      v60 = v113;
      leadingAnchor = v104;
    }

    v79 = [UIFont preferredFontForTextStyle:v60];
    [(UILabel *)v4->_subtitleLabel setFont:v79];

    [(MapsLargerHitTargetButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsLargerHitTargetButton *)v4->_closeButton addTarget:v4 action:"_dismiss" forControlEvents:64];
    [(FeatureDiscoveryView *)v4 addSubview:v4->_closeButton];
    widthAnchor = [(UIImageView *)v4->_imageView widthAnchor];
    v110 = [widthAnchor constraintEqualToConstant:*(&v116 + 1)];
    v119[0] = v110;
    leadingAnchor4 = [(UIImageView *)v4->_imageView leadingAnchor];
    leadingAnchor5 = [(FeatureDiscoveryView *)v4 leadingAnchor];
    v80 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:*&v115];
    v119[1] = v80;
    centerYAnchor = [(UIImageView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [(UIStackView *)v4->_textStackView centerYAnchor];
    v83 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v119[2] = v83;
    topAnchor4 = [(UIStackView *)v4->_textStackView topAnchor];
    topAnchor5 = [(FeatureDiscoveryView *)v4 topAnchor];
    v86 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:*(&v115 + 1)];
    v119[3] = v86;
    v87 = [NSArray arrayWithObjects:v119 count:4];
    [v114 addObjectsFromArray:v87];

    leadingAnchor6 = [(UIStackView *)v4->_textStackView leadingAnchor];
    trailingAnchor4 = [(UIImageView *)v4->_imageView trailingAnchor];
    v90 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:*&v115];
    v91 = [v114 arrayByAddingObject:v90];
    constraintsWithImage = v4->_constraintsWithImage;
    v4->_constraintsWithImage = v91;

    leadingAnchor7 = [(UIStackView *)v4->_textStackView leadingAnchor];
    leadingAnchor8 = [(UIImageView *)v4->_imageView leadingAnchor];
    v95 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v96 = [v114 arrayByAddingObject:v95];
    constraintsWithoutImage = v4->_constraintsWithoutImage;
    v4->_constraintsWithoutImage = v96;

    [NSLayoutConstraint activateConstraints:v4->_constraintsWithoutImage];
    bottomAnchor2 = [(FeatureDiscoveryView *)v4 bottomAnchor];
    bottomAnchor3 = [(UIStackView *)v4->_textStackView bottomAnchor];
    v100 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:*&v116];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v100;

    v118 = v4->_bottomConstraint;
    v102 = [NSArray arrayWithObjects:&v118 count:1];
    [NSLayoutConstraint activateConstraints:v102];

    [(FeatureDiscoveryView *)v4 _setupActionButtonIfNeeded];
  }

  return v4;
}

+ (id)_constraintsForFeatureDiscoveryView:(id)view centeredInContentView:(id)contentView withIdiom:(int64_t)idiom context:(unint64_t)context
{
  contentViewCopy = contentView;
  viewCopy = view;
  [FeatureDiscoveryView _cellMetricsForIdiom:idiom context:context];
  v11 = [viewCopy _maps_constraintsEqualToEdgesOfView:contentViewCopy insets:? priority:?];

  allConstraints = [v11 allConstraints];

  return allConstraints;
}

+ ($1AB5FA073B851C12C2339EC22442E995)_cellMetricsForIdiom:(int64_t)idiom context:(unint64_t)context
{
  v4 = 2.0;
  if (!context)
  {
    v4 = 12.0;
  }

  v5 = 4.0;
  if (!context)
  {
    v5 = 0.0;
  }

  if (idiom == 5)
  {
    v5 = v4;
  }

  v6 = 10.0;
  if (idiom != 5)
  {
    v6 = 16.0;
  }

  v7 = 6.0;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v7;
  return result;
}

+ ($29727DC6989B69F22950FCD998EA20D4)_metricsForIdiom:(SEL)idiom
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