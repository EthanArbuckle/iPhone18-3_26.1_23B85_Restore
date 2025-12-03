@interface NPKRemotePassActionCompanionBubbleContentView
+ (double)_roundedTextHeightForAttributedText:(id)text withAvailableWidth:(double)width;
+ (double)contentViewHeightForViewModel:(id)model withWidth:(double)width;
+ (id)_attributedTextFromText:(id)text inFont:(id)font;
+ (id)_defaultParagraphStyle;
- (NPKRemotePassActionCompanionBubbleContentView)initWithDelegate:(id)delegate;
- (NPKRemotePassActionCompanionBubbleContentView)initWithFrame:(CGRect)frame;
- (NPKRemotePassActionCompanionBubbleContentViewDelegate)delegate;
- (UIButton)actionButton;
- (id)_makeHorizontalConstraints;
- (id)_makeRelativeConstraints;
- (id)_makeVerticalConstraints;
- (void)_handleTap;
- (void)_setUpActionButton;
- (void)_setUpAppearance;
- (void)_setUpBottomContentStackView;
- (void)_setUpCardArtImageView;
- (void)_setUpConstraints;
- (void)_setUpDetailLabel;
- (void)_setUpLabelStackView;
- (void)_setUpSubviews;
- (void)_setUpTapGestureRecognizer;
- (void)_setUpTitleLabel;
- (void)_updateViewForViewModel:(id)model;
- (void)layoutSubviews;
- (void)setViewModel:(id)model;
@end

@implementation NPKRemotePassActionCompanionBubbleContentView

- (NPKRemotePassActionCompanionBubbleContentView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = NPKRemotePassActionCompanionBubbleContentView;
  v5 = [(NPKRemotePassActionCompanionBubbleContentView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (NPKRemotePassActionCompanionBubbleContentView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = NPKRemotePassActionCompanionBubbleContentView;
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    cardArtImageView = v3->_cardArtImageView;
    v3->_cardArtImageView = v4;

    v6 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    v8 = objc_alloc_init(UILabel);
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v8;

    v10 = objc_alloc_init(UIStackView);
    labelStackView = v3->_labelStackView;
    v3->_labelStackView = v10;

    v12 = objc_alloc_init(UIStackView);
    bottomContentStackView = v3->_bottomContentStackView;
    v3->_bottomContentStackView = v12;

    v14 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_handleTap"];
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v14;

    [(NPKRemotePassActionCompanionBubbleContentView *)v3 _setUpSubviews];
    [(NPKRemotePassActionCompanionBubbleContentView *)v3 _setUpConstraints];
    [(NPKRemotePassActionCompanionBubbleContentView *)v3 _setUpAppearance];
    [(NPKRemotePassActionCompanionBubbleContentView *)v3 _setUpTapGestureRecognizer];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NPKRemotePassActionCompanionBubbleContentView;
  [(NPKRemotePassActionCompanionBubbleContentView *)&v12 layoutSubviews];
  [(NPKRemotePassActionCompanionBubbleContentView *)self frame];
  Width = CGRectGetWidth(v13);
  viewModel = [(NPKRemotePassActionCompanionBubbleContentView *)self viewModel];
  cardArtImage = [viewModel cardArtImage];

  if (cardArtImage)
  {
    v6 = fmax(Width + -12.0 + -12.0, 0.0);
    [cardArtImage size];
    v8 = v7;
    [cardArtImage size];
    v10 = v6 / (v8 / v9);
  }

  else
  {
    v10 = 0.0;
  }

  cardArtImageViewHeightConstraint = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageViewHeightConstraint];
  [cardArtImageViewHeightConstraint setConstant:v10];
}

- (void)setViewModel:(id)model
{
  objc_storeStrong(&self->_viewModel, model);
  modelCopy = model;
  [(NPKRemotePassActionCompanionBubbleContentView *)self _updateViewForViewModel:modelCopy];
}

- (UIButton)actionButton
{
  actionButton = self->_actionButton;
  if (!actionButton)
  {
    v4 = +[UIButtonConfiguration filledButtonConfiguration];
    v5 = +[UIColor labelColor];
    [v4 setBaseForegroundColor:v5];

    v6 = +[UIColor systemBackgroundColor];
    [v4 setBaseBackgroundColor:v6];

    [v4 setCornerStyle:4];
    [v4 setButtonSize:1];
    [v4 setTitleAlignment:2];
    [v4 setTitleLineBreakMode:4];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002A60;
    v13[3] = &unk_100014580;
    v13[4] = self;
    v7 = [UIAction actionWithHandler:v13];
    v8 = [UIButton buttonWithConfiguration:v4 primaryAction:v7];
    v9 = self->_actionButton;
    self->_actionButton = v8;

    titleLabel = [(UIButton *)self->_actionButton titleLabel];
    [titleLabel setMinimumScaleFactor:0.699999988];

    titleLabel2 = [(UIButton *)self->_actionButton titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    actionButton = self->_actionButton;
  }

  return actionButton;
}

+ (double)contentViewHeightForViewModel:(id)model withWidth:(double)width
{
  modelCopy = model;
  v7 = width + -12.0 + -12.0;
  cardArtImage = [modelCopy cardArtImage];
  v9 = cardArtImage;
  if (cardArtImage)
  {
    [cardArtImage size];
    v11 = v10;
    [v9 size];
    v13 = v7 / (v11 / v12) + 12.0 + 8.0;
  }

  else
  {
    v13 = 20.0;
  }

  if ([modelCopy showsActionButton])
  {
    v14 = v7 * 0.5 + -8.0;
  }

  else
  {
    v14 = v7;
  }

  titleText = [modelCopy titleText];
  _primaryFont = [self _primaryFont];
  v17 = [self _attributedTextFromText:titleText inFont:_primaryFont];

  [self _roundedTextHeightForAttributedText:v17 withAvailableWidth:v14];
  v19 = v18;
  detailText = [modelCopy detailText];
  _secondaryFont = [self _secondaryFont];
  v22 = [self _attributedTextFromText:detailText inFont:_secondaryFont];

  [self _roundedTextHeightForAttributedText:v22 withAvailableWidth:v14];
  v24 = v23;
  v25 = 0.0;
  if ([modelCopy showsActionButton])
  {
    actionButtonText = [modelCopy actionButtonText];
    v27 = [actionButtonText length];

    if (v27)
    {
      actionButtonText2 = [modelCopy actionButtonText];
      _primaryFont2 = [self _primaryFont];
      v30 = [self _attributedTextFromText:actionButtonText2 inFont:_primaryFont2];

      [self _roundedTextHeightForAttributedText:v30 withAvailableWidth:v14];
      v25 = v31 + v31;
    }
  }

  return v13 + fmax(v19 + 2.0 + v24, v25) + 8.0;
}

- (void)_setUpConstraints
{
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [cardArtImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomContentStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  [bottomContentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(NPKRemotePassActionCompanionBubbleContentView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = objc_alloc_init(NSMutableArray);
  _makeVerticalConstraints = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeVerticalConstraints];
  [v8 addObjectsFromArray:_makeVerticalConstraints];

  _makeHorizontalConstraints = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeHorizontalConstraints];
  [v8 addObjectsFromArray:_makeHorizontalConstraints];

  _makeRelativeConstraints = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeRelativeConstraints];
  [v8 addObjectsFromArray:_makeRelativeConstraints];

  [NSLayoutConstraint activateConstraints:v8];
}

- (id)_makeVerticalConstraints
{
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  topAnchor = [cardArtImageView topAnchor];
  topAnchor2 = [(NPKRemotePassActionCompanionBubbleContentView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  v23[0] = v19;
  labelStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
  topAnchor3 = [labelStackView topAnchor];
  cardArtImageView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  bottomAnchor = [cardArtImageView2 bottomAnchor];
  v3 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
  v23[1] = v3;
  bottomContentStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  topAnchor4 = [bottomContentStackView topAnchor];
  cardArtImageView3 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  bottomAnchor2 = [cardArtImageView3 bottomAnchor];
  v8 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:8.0];
  v23[2] = v8;
  bottomAnchor3 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomAnchor];
  bottomContentStackView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  bottomAnchor4 = [bottomContentStackView2 bottomAnchor];
  v12 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:8.0];
  v23[3] = v12;
  v14 = [NSArray arrayWithObjects:v23 count:4];

  return v14;
}

- (id)_makeHorizontalConstraints
{
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  leadingAnchor = [cardArtImageView leadingAnchor];
  leadingAnchor2 = [(NPKRemotePassActionCompanionBubbleContentView *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  v21[0] = v17;
  trailingAnchor = [(NPKRemotePassActionCompanionBubbleContentView *)self trailingAnchor];
  cardArtImageView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  trailingAnchor2 = [cardArtImageView2 trailingAnchor];
  v4 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
  v21[1] = v4;
  bottomContentStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  leadingAnchor3 = [bottomContentStackView leadingAnchor];
  leadingAnchor4 = [(NPKRemotePassActionCompanionBubbleContentView *)self leadingAnchor];
  v8 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  v21[2] = v8;
  trailingAnchor3 = [(NPKRemotePassActionCompanionBubbleContentView *)self trailingAnchor];
  bottomContentStackView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  trailingAnchor4 = [bottomContentStackView2 trailingAnchor];
  v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
  v21[3] = v12;
  v14 = [NSArray arrayWithObjects:v21 count:4];

  return v14;
}

- (id)_makeRelativeConstraints
{
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  heightAnchor = [cardArtImageView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  [(NPKRemotePassActionCompanionBubbleContentView *)self setCardArtImageViewHeightConstraint:v5];

  cardArtImageViewHeightConstraint = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageViewHeightConstraint];
  v9 = cardArtImageViewHeightConstraint;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

- (void)_setUpSubviews
{
  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpCardArtImageView];
  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpTitleLabel];
  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpDetailLabel];
  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpLabelStackView];
  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpActionButton];

  [(NPKRemotePassActionCompanionBubbleContentView *)self _setUpBottomContentStackView];
}

- (void)_setUpCardArtImageView
{
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];

  if (cardArtImageView)
  {
    cardArtImageView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    [cardArtImageView2 setContentMode:1];

    cardArtImageView3 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    layer = [cardArtImageView3 layer];
    [layer setMasksToBounds:1];

    cardArtImageView4 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    [cardArtImageView4 _setContinuousCornerRadius:7.0];

    cardArtImageView5 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    [(NPKRemotePassActionCompanionBubbleContentView *)self addSubview:?];
  }

  else
  {
    v8 = pk_RemotePassAction_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        cardArtImageView6 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
        *buf = 138412290;
        v14 = cardArtImageView6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a card art image view, but instead found nil! cardArtImageView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpTitleLabel
{
  titleLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];

  if (titleLabel)
  {
    v4 = +[UIColor labelColor];
    titleLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [titleLabel2 setTextColor:v4];

    _primaryFont = [objc_opt_class() _primaryFont];
    titleLabel3 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [titleLabel3 setFont:_primaryFont];

    titleLabel4 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [titleLabel4 setNumberOfLines:0];
  }

  else
  {
    v8 = pk_RemotePassAction_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        titleLabel5 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
        *buf = 138412290;
        v14 = titleLabel5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a title label, but instead found nil! titleLabel: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpDetailLabel
{
  detailLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];

  if (detailLabel)
  {
    v4 = +[UIColor secondaryLabelColor];
    detailLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [detailLabel2 setTextColor:v4];

    _secondaryFont = [objc_opt_class() _secondaryFont];
    detailLabel3 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [detailLabel3 setFont:_secondaryFont];

    detailLabel4 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [detailLabel4 setNumberOfLines:0];
  }

  else
  {
    v8 = pk_RemotePassAction_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        detailLabel5 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
        *buf = 138412290;
        v14 = detailLabel5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a detail label, but instead found nil! detailLabel: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpLabelStackView
{
  labelStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];

  if (labelStackView)
  {
    labelStackView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [labelStackView2 setAxis:1];

    labelStackView3 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [labelStackView3 setDistribution:2];

    labelStackView4 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [labelStackView4 setAlignment:0];

    labelStackView5 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [labelStackView5 setSpacing:2.0];

    titleLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];

    if (titleLabel)
    {
      labelStackView6 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      titleLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
      [labelStackView6 addArrangedSubview:titleLabel2];
    }

    detailLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];

    if (detailLabel)
    {
      labelStackView7 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      detailLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
      [labelStackView7 addArrangedSubview:detailLabel2];
    }

    labelStackView8 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [(NPKRemotePassActionCompanionBubbleContentView *)self addSubview:?];
  }

  else
  {
    v14 = pk_RemotePassAction_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        labelStackView9 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
        *buf = 138412290;
        v20 = labelStackView9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a label container view, but instead found nil! labelStackView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpActionButton
{
  actionButton = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];

  if (!actionButton)
  {
    v4 = pk_RemotePassAction_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        actionButton2 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
        v8 = 138412290;
        v9 = actionButton2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find an action button, but instead found nil! actionButton: %@", &v8, 0xCu);
      }
    }
  }
}

- (void)_setUpBottomContentStackView
{
  bottomContentStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];

  if (bottomContentStackView)
  {
    bottomContentStackView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [bottomContentStackView2 setAxis:0];

    bottomContentStackView3 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [bottomContentStackView3 setDistribution:0];

    bottomContentStackView4 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [bottomContentStackView4 setAlignment:3];

    bottomContentStackView5 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [bottomContentStackView5 setSpacing:8.0];

    labelStackView = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];

    if (labelStackView)
    {
      bottomContentStackView6 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
      labelStackView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      [bottomContentStackView6 addArrangedSubview:labelStackView2];
    }

    actionButton = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];

    if (actionButton)
    {
      bottomContentStackView7 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
      actionButton2 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
      [bottomContentStackView7 addArrangedSubview:actionButton2];
    }

    bottomContentStackView8 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [(NPKRemotePassActionCompanionBubbleContentView *)self addSubview:?];
  }

  else
  {
    v14 = pk_RemotePassAction_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        bottomContentStackView9 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
        *buf = 138412290;
        v20 = bottomContentStackView9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find an bottom content stack view, but instead found nil! bottomContentStackView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpTapGestureRecognizer
{
  tapGestureRecognizer = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    gestureRecognizers = [(NPKRemotePassActionCompanionBubbleContentView *)self gestureRecognizers];
    tapGestureRecognizer2 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
    v6 = [gestureRecognizers containsObject:tapGestureRecognizer2];

    if (v6)
    {
      v7 = pk_RemotePassAction_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Gesture recognizer is already observing taps; no update required", buf, 2u);
        }
      }
    }

    else
    {
      tapGestureRecognizer3 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
      [(NPKRemotePassActionCompanionBubbleContentView *)self addGestureRecognizer:?];
    }
  }

  else
  {
    v10 = pk_RemotePassAction_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        tapGestureRecognizer4 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
        *buf = 138412290;
        v16 = tapGestureRecognizer4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a tap gesture recognizer, but instead found nil!: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpAppearance
{
  v3 = +[UIColor tertiarySystemGroupedBackgroundColor];
  [(NPKRemotePassActionCompanionBubbleContentView *)self setBackgroundColor:v3];
}

+ (id)_defaultParagraphStyle
{
  v2 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v3) = 1045220557;
  [v2 setHyphenationFactor:v3];
  v4 = [v2 copy];

  return v4;
}

- (void)_handleTap
{
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Did receive tap", &v11, 2u);
    }
  }

  delegate = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];
    [delegate2 remotePassActionRequestBubbleContentViewDidReceiveTap:self];
LABEL_7:

    return;
  }

  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    delegate2 = pk_RemotePassAction_log();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
    {
      delegate3 = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];
      v11 = 138412290;
      v12 = delegate3;
      _os_log_impl(&_mh_execute_header, delegate2, OS_LOG_TYPE_DEFAULT, "Warning: Unable to handle tap. Did you forget to set the delegate? delegate: %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }
}

- (void)_updateViewForViewModel:(id)model
{
  modelCopy = model;
  cardArtImage = [modelCopy cardArtImage];
  cardArtImageView = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [cardArtImageView setImage:cardArtImage];

  if ([modelCopy shouldDimPass])
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 1.0;
  }

  cardArtImageView2 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [cardArtImageView2 setAlpha:v6];

  v8 = objc_opt_class();
  titleText = [modelCopy titleText];
  titleLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  font = [titleLabel font];
  v12 = [v8 _attributedTextFromText:titleText inFont:font];

  titleLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  [titleLabel2 setAttributedText:v12];

  v14 = [v12 length] == 0;
  titleLabel3 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  [titleLabel3 setHidden:v14];

  v16 = objc_opt_class();
  detailText = [modelCopy detailText];
  detailLabel = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  font2 = [detailLabel font];
  v20 = [v16 _attributedTextFromText:detailText inFont:font2];

  detailLabel2 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  [detailLabel2 setAttributedText:v20];

  v22 = [v20 length] == 0;
  detailLabel3 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  [detailLabel3 setHidden:v22];

  v24 = objc_opt_class();
  actionButtonText = [modelCopy actionButtonText];
  _primaryFont = [objc_opt_class() _primaryFont];
  v27 = [v24 _attributedTextFromText:actionButtonText inFont:_primaryFont];

  actionButton = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
  [actionButton setAttributedTitle:v27 forState:0];

  showsActionButton = [modelCopy showsActionButton];
  if (showsActionButton)
  {
    _primaryFont = [modelCopy actionButtonText];
    v30 = [_primaryFont length] == 0;
  }

  else
  {
    v30 = 1;
  }

  actionButton2 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
  [actionButton2 setHidden:v30];

  if (showsActionButton)
  {
  }

  [(NPKRemotePassActionCompanionBubbleContentView *)self setNeedsLayout];
  [(NPKRemotePassActionCompanionBubbleContentView *)self layoutIfNeeded];
}

+ (id)_attributedTextFromText:(id)text inFont:(id)font
{
  textCopy = text;
  if (text)
  {
    fontCopy = font;
    v7 = textCopy;
    _defaultParagraphStyle = [self _defaultParagraphStyle];
    v9 = [NSAttributedString alloc];
    v12[0] = NSFontAttributeName;
    v12[1] = NSParagraphStyleAttributeName;
    v13[0] = fontCopy;
    v13[1] = _defaultParagraphStyle;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    textCopy = [v9 initWithString:v7 attributes:v10];
  }

  return textCopy;
}

+ (double)_roundedTextHeightForAttributedText:(id)text withAvailableWidth:(double)width
{
  if (text)
  {
    [text boundingRectWithSize:3 options:0 context:{width, 1.79769313e308}];
    Height = CGRectGetHeight(v12);
  }

  else
  {
    Height = 0.0;
  }

  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  v8.n128_f64[0] = Height;
  v9.n128_u64[0] = v7;

  _UIRoundToScale(v8, v9);
  return result;
}

- (NPKRemotePassActionCompanionBubbleContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end