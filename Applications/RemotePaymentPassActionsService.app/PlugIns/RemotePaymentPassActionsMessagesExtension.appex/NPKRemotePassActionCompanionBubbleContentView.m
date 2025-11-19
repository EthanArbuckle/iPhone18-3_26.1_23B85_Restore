@interface NPKRemotePassActionCompanionBubbleContentView
+ (double)_roundedTextHeightForAttributedText:(id)a3 withAvailableWidth:(double)a4;
+ (double)contentViewHeightForViewModel:(id)a3 withWidth:(double)a4;
+ (id)_attributedTextFromText:(id)a3 inFont:(id)a4;
+ (id)_defaultParagraphStyle;
- (NPKRemotePassActionCompanionBubbleContentView)initWithDelegate:(id)a3;
- (NPKRemotePassActionCompanionBubbleContentView)initWithFrame:(CGRect)a3;
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
- (void)_updateViewForViewModel:(id)a3;
- (void)layoutSubviews;
- (void)setViewModel:(id)a3;
@end

@implementation NPKRemotePassActionCompanionBubbleContentView

- (NPKRemotePassActionCompanionBubbleContentView)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NPKRemotePassActionCompanionBubbleContentView;
  v5 = [(NPKRemotePassActionCompanionBubbleContentView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (NPKRemotePassActionCompanionBubbleContentView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = NPKRemotePassActionCompanionBubbleContentView;
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self viewModel];
  v5 = [v4 cardArtImage];

  if (v5)
  {
    v6 = fmax(Width + -12.0 + -12.0, 0.0);
    [v5 size];
    v8 = v7;
    [v5 size];
    v10 = v6 / (v8 / v9);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageViewHeightConstraint];
  [v11 setConstant:v10];
}

- (void)setViewModel:(id)a3
{
  objc_storeStrong(&self->_viewModel, a3);
  v5 = a3;
  [(NPKRemotePassActionCompanionBubbleContentView *)self _updateViewForViewModel:v5];
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

    v10 = [(UIButton *)self->_actionButton titleLabel];
    [v10 setMinimumScaleFactor:0.699999988];

    v11 = [(UIButton *)self->_actionButton titleLabel];
    [v11 setAdjustsFontSizeToFitWidth:1];

    actionButton = self->_actionButton;
  }

  return actionButton;
}

+ (double)contentViewHeightForViewModel:(id)a3 withWidth:(double)a4
{
  v6 = a3;
  v7 = a4 + -12.0 + -12.0;
  v8 = [v6 cardArtImage];
  v9 = v8;
  if (v8)
  {
    [v8 size];
    v11 = v10;
    [v9 size];
    v13 = v7 / (v11 / v12) + 12.0 + 8.0;
  }

  else
  {
    v13 = 20.0;
  }

  if ([v6 showsActionButton])
  {
    v14 = v7 * 0.5 + -8.0;
  }

  else
  {
    v14 = v7;
  }

  v15 = [v6 titleText];
  v16 = [a1 _primaryFont];
  v17 = [a1 _attributedTextFromText:v15 inFont:v16];

  [a1 _roundedTextHeightForAttributedText:v17 withAvailableWidth:v14];
  v19 = v18;
  v20 = [v6 detailText];
  v21 = [a1 _secondaryFont];
  v22 = [a1 _attributedTextFromText:v20 inFont:v21];

  [a1 _roundedTextHeightForAttributedText:v22 withAvailableWidth:v14];
  v24 = v23;
  v25 = 0.0;
  if ([v6 showsActionButton])
  {
    v26 = [v6 actionButtonText];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [v6 actionButtonText];
      v29 = [a1 _primaryFont];
      v30 = [a1 _attributedTextFromText:v28 inFont:v29];

      [a1 _roundedTextHeightForAttributedText:v30 withAvailableWidth:v14];
      v25 = v31 + v31;
    }
  }

  return v13 + fmax(v19 + 2.0 + v24, v25) + 8.0;
}

- (void)_setUpConstraints
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(NPKRemotePassActionCompanionBubbleContentView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = objc_alloc_init(NSMutableArray);
  v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeVerticalConstraints];
  [v8 addObjectsFromArray:v5];

  v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeHorizontalConstraints];
  [v8 addObjectsFromArray:v6];

  v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self _makeRelativeConstraints];
  [v8 addObjectsFromArray:v7];

  [NSLayoutConstraint activateConstraints:v8];
}

- (id)_makeVerticalConstraints
{
  v22 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v21 = [v22 topAnchor];
  v20 = [(NPKRemotePassActionCompanionBubbleContentView *)self topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:12.0];
  v23[0] = v19;
  v18 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
  v16 = [v18 topAnchor];
  v17 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v15 = [v17 bottomAnchor];
  v3 = [v16 constraintEqualToAnchor:v15 constant:8.0];
  v23[1] = v3;
  v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  v5 = [v4 topAnchor];
  v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:8.0];
  v23[2] = v8;
  v9 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomAnchor];
  v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:8.0];
  v23[3] = v12;
  v14 = [NSArray arrayWithObjects:v23 count:4];

  return v14;
}

- (id)_makeHorizontalConstraints
{
  v20 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v19 = [v20 leadingAnchor];
  v18 = [(NPKRemotePassActionCompanionBubbleContentView *)self leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:12.0];
  v21[0] = v17;
  v15 = [(NPKRemotePassActionCompanionBubbleContentView *)self trailingAnchor];
  v16 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v3 = [v16 trailingAnchor];
  v4 = [v15 constraintEqualToAnchor:v3 constant:12.0];
  v21[1] = v4;
  v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  v6 = [v5 leadingAnchor];
  v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:12.0];
  v21[2] = v8;
  v9 = [(NPKRemotePassActionCompanionBubbleContentView *)self trailingAnchor];
  v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:12.0];
  v21[3] = v12;
  v14 = [NSArray arrayWithObjects:v21 count:4];

  return v14;
}

- (id)_makeRelativeConstraints
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  [(NPKRemotePassActionCompanionBubbleContentView *)self setCardArtImageViewHeightConstraint:v5];

  v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageViewHeightConstraint];
  v9 = v6;
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
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];

  if (v3)
  {
    v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    [v4 setContentMode:1];

    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    v6 = [v5 layer];
    [v6 setMasksToBounds:1];

    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
    [v7 _setContinuousCornerRadius:7.0];

    v12 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
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
        v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a card art image view, but instead found nil! cardArtImageView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpTitleLabel
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];

  if (v3)
  {
    v4 = +[UIColor labelColor];
    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [v5 setTextColor:v4];

    v6 = [objc_opt_class() _primaryFont];
    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [v7 setFont:v6];

    v12 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
    [v12 setNumberOfLines:0];
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
        v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a title label, but instead found nil! titleLabel: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpDetailLabel
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];

  if (v3)
  {
    v4 = +[UIColor secondaryLabelColor];
    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [v5 setTextColor:v4];

    v6 = [objc_opt_class() _secondaryFont];
    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [v7 setFont:v6];

    v12 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
    [v12 setNumberOfLines:0];
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
        v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a detail label, but instead found nil! detailLabel: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpLabelStackView
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];

  if (v3)
  {
    v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [v4 setAxis:1];

    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [v5 setDistribution:2];

    v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [v6 setAlignment:0];

    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
    [v7 setSpacing:2.0];

    v8 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];

    if (v8)
    {
      v9 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
      [v9 addArrangedSubview:v10];
    }

    v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];

    if (v11)
    {
      v12 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      v13 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
      [v12 addArrangedSubview:v13];
    }

    v18 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
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
        v17 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find a label container view, but instead found nil! labelStackView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpActionButton
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];

  if (!v3)
  {
    v4 = pk_RemotePassAction_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find an action button, but instead found nil! actionButton: %@", &v8, 0xCu);
      }
    }
  }
}

- (void)_setUpBottomContentStackView
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];

  if (v3)
  {
    v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [v4 setAxis:0];

    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [v5 setDistribution:0];

    v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [v6 setAlignment:3];

    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
    [v7 setSpacing:8.0];

    v8 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];

    if (v8)
    {
      v9 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
      v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self labelStackView];
      [v9 addArrangedSubview:v10];
    }

    v11 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];

    if (v11)
    {
      v12 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
      v13 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
      [v12 addArrangedSubview:v13];
    }

    v18 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
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
        v17 = [(NPKRemotePassActionCompanionBubbleContentView *)self bottomContentStackView];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected to find an bottom content stack view, but instead found nil! bottomContentStackView: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setUpTapGestureRecognizer
{
  v3 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];

  if (v3)
  {
    v4 = [(NPKRemotePassActionCompanionBubbleContentView *)self gestureRecognizers];
    v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
    v6 = [v4 containsObject:v5];

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
      v14 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
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
        v13 = [(NPKRemotePassActionCompanionBubbleContentView *)self tapGestureRecognizer];
        *buf = 138412290;
        v16 = v13;
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

  v6 = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];

  if (v6)
  {
    v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];
    [v7 remotePassActionRequestBubbleContentViewDidReceiveTap:self];
LABEL_7:

    return;
  }

  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v7 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self delegate];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unable to handle tap. Did you forget to set the delegate? delegate: %@", &v11, 0xCu);
    }

    goto LABEL_7;
  }
}

- (void)_updateViewForViewModel:(id)a3
{
  v32 = a3;
  v4 = [v32 cardArtImage];
  v5 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [v5 setImage:v4];

  if ([v32 shouldDimPass])
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [(NPKRemotePassActionCompanionBubbleContentView *)self cardArtImageView];
  [v7 setAlpha:v6];

  v8 = objc_opt_class();
  v9 = [v32 titleText];
  v10 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  v11 = [v10 font];
  v12 = [v8 _attributedTextFromText:v9 inFont:v11];

  v13 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  [v13 setAttributedText:v12];

  v14 = [v12 length] == 0;
  v15 = [(NPKRemotePassActionCompanionBubbleContentView *)self titleLabel];
  [v15 setHidden:v14];

  v16 = objc_opt_class();
  v17 = [v32 detailText];
  v18 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  v19 = [v18 font];
  v20 = [v16 _attributedTextFromText:v17 inFont:v19];

  v21 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  [v21 setAttributedText:v20];

  v22 = [v20 length] == 0;
  v23 = [(NPKRemotePassActionCompanionBubbleContentView *)self detailLabel];
  [v23 setHidden:v22];

  v24 = objc_opt_class();
  v25 = [v32 actionButtonText];
  v26 = [objc_opt_class() _primaryFont];
  v27 = [v24 _attributedTextFromText:v25 inFont:v26];

  v28 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
  [v28 setAttributedTitle:v27 forState:0];

  v29 = [v32 showsActionButton];
  if (v29)
  {
    v26 = [v32 actionButtonText];
    v30 = [v26 length] == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = [(NPKRemotePassActionCompanionBubbleContentView *)self actionButton];
  [v31 setHidden:v30];

  if (v29)
  {
  }

  [(NPKRemotePassActionCompanionBubbleContentView *)self setNeedsLayout];
  [(NPKRemotePassActionCompanionBubbleContentView *)self layoutIfNeeded];
}

+ (id)_attributedTextFromText:(id)a3 inFont:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = v4;
    v8 = [a1 _defaultParagraphStyle];
    v9 = [NSAttributedString alloc];
    v12[0] = NSFontAttributeName;
    v12[1] = NSParagraphStyleAttributeName;
    v13[0] = v6;
    v13[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    v4 = [v9 initWithString:v7 attributes:v10];
  }

  return v4;
}

+ (double)_roundedTextHeightForAttributedText:(id)a3 withAvailableWidth:(double)a4
{
  if (a3)
  {
    [a3 boundingRectWithSize:3 options:0 context:{a4, 1.79769313e308}];
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