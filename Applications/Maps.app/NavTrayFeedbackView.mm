@interface NavTrayFeedbackView
- (CGSize)intrinsicContentSize;
- (NavTrayFeedbackView)initWithDelegate:(id)a3;
- (void)_applyBackgroundColor;
- (void)_thumbsDownPressed:(id)a3;
- (void)_thumbsUpPressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NavTrayFeedbackView

- (void)_thumbsDownPressed:(id)a3
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_thumbsDownPressed: ", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained feedbackViewDidSelectThumbsDown];
}

- (void)_thumbsUpPressed:(id)a3
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_thumbsUpPressed: ", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained feedbackViewDidSelectThumbsUp];
}

- (void)_applyBackgroundColor
{
  v5 = [(NavTrayFeedbackView *)self traitCollection];
  if ([v5 userInterfaceStyle] == 2)
  {
    v3 = +[UIColor secondarySystemGroupedBackgroundColor];
    v4 = [v3 resolvedColorWithTraitCollection:v5];
    [(NavTrayFeedbackView *)self setBackgroundColor:v4];
  }

  else
  {
    v3 = +[UIColor whiteColor];
    [(NavTrayFeedbackView *)self setBackgroundColor:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = NavTrayFeedbackView;
  v4 = a3;
  [(NavTrayFeedbackView *)&v11 traitCollectionDidChange:v4];
  v5 = [(NavTrayFeedbackView *)self traitCollection:v11.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    minimizedValueFontProvider = self->_minimizedValueFontProvider;
    v9 = [(NavTrayFeedbackView *)self traitCollection];
    v10 = minimizedValueFontProvider[2](minimizedValueFontProvider, v9);
    [(UILabel *)self->_titleLabel setFont:v10];

    [(NavTrayFeedbackView *)self invalidateIntrinsicContentSize];
  }

  [(NavTrayFeedbackView *)self _applyBackgroundColor];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  [(UIButton *)self->_thumbsUpButton intrinsicContentSize];
  [(NavTrayFeedbackView *)self frame];
  v4 = v3;
  UIRoundToViewScale();
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (NavTrayFeedbackView)initWithDelegate:(id)a3
{
  v4 = a3;
  v84.receiver = self;
  v84.super_class = NavTrayFeedbackView;
  v5 = [(NavTrayFeedbackView *)&v84 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavTrayFeedbackView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, v4);
    [(NavTrayFeedbackView *)v5 _applyBackgroundColor];
    [(NavTrayFeedbackView *)v5 _setContinuousCornerRadius:10.0];
    v8 = [UIFont _maps_fontProviderWeight:UIContentSizeCategoryLarge minimumPointSize:UIContentSizeCategoryExtraExtraExtraLarge minimumSizeCategory:UIFontWeightRegular maximumPointSize:20.0 maximumSizeCategory:26.0];
    minimizedValueFontProvider = v5->_minimizedValueFontProvider;
    v5->_minimizedValueFontProvider = v8;

    v10 = objc_opt_new();
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v10;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[NSBundle mainBundle];
    [v12 localizedStringForKey:@"Rate Your Route [RAP Revamp][NavTray]" value:@"localized string not found" table:0];
    v13 = v83 = v4;
    [(UILabel *)v5->_titleLabel setText:v13];

    v14 = v5->_minimizedValueFontProvider;
    v15 = [(NavTrayFeedbackView *)v5 traitCollection];
    v16 = v14[2](v14, v15);
    [(UILabel *)v5->_titleLabel setFont:v16];

    [(UILabel *)v5->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_titleLabel];
    v17 = [RAPThumbsButton buttonWithType:0];
    thumbsUpButton = v5->_thumbsUpButton;
    v5->_thumbsUpButton = v17;

    [(UIButton *)v5->_thumbsUpButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v5->_thumbsUpButton;
    v20 = [(NavTrayFeedbackView *)v5 traitCollection];
    v21 = [UIImage systemImageNamed:@"hand.thumbsup" compatibleWithTraitCollection:v20];
    [(UIButton *)v19 setImage:v21 forState:0];

    v22 = v5->_thumbsUpButton;
    v23 = [(NavTrayFeedbackView *)v5 traitCollection];
    v24 = [UIImage systemImageNamed:@"hand.thumbsup.fill" compatibleWithTraitCollection:v23];
    [(UIButton *)v22 setImage:v24 forState:1];

    v25 = v5->_thumbsUpButton;
    v26 = [(NavTrayFeedbackView *)v5 traitCollection];
    v27 = [UIImage systemImageNamed:@"hand.thumbsup.fill" compatibleWithTraitCollection:v26];
    [(UIButton *)v25 setImage:v27 forState:4];

    [(UIButton *)v5->_thumbsUpButton addTarget:v5 action:"_thumbsUpPressed:" forControlEvents:0x2000];
    [(UIButton *)v5->_thumbsUpButton setAccessibilityIdentifier:@"ThumbsUpButton"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_thumbsUpButton];
    v28 = [RAPThumbsButton buttonWithType:0];
    thumbsDownButton = v5->_thumbsDownButton;
    v5->_thumbsDownButton = v28;

    [(UIButton *)v5->_thumbsDownButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v5->_thumbsDownButton;
    v31 = [(NavTrayFeedbackView *)v5 traitCollection];
    v32 = [UIImage systemImageNamed:@"hand.thumbsdown" compatibleWithTraitCollection:v31];
    [(UIButton *)v30 setImage:v32 forState:0];

    v33 = v5->_thumbsDownButton;
    v34 = [(NavTrayFeedbackView *)v5 traitCollection];
    v35 = [UIImage systemImageNamed:@"hand.thumbsdown.fill" compatibleWithTraitCollection:v34];
    [(UIButton *)v33 setImage:v35 forState:1];

    v36 = v5->_thumbsDownButton;
    v37 = [(NavTrayFeedbackView *)v5 traitCollection];
    v38 = [UIImage systemImageNamed:@"hand.thumbsdown.fill" compatibleWithTraitCollection:v37];
    [(UIButton *)v36 setImage:v38 forState:4];

    [(UIButton *)v5->_thumbsDownButton addTarget:v5 action:"_thumbsDownPressed:" forControlEvents:0x2000];
    [(UIButton *)v5->_thumbsDownButton setAccessibilityIdentifier:@"ThumbsDownButton"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_thumbsDownButton];
    v82 = [(UILabel *)v5->_titleLabel topAnchor];
    v81 = [(NavTrayFeedbackView *)v5 topAnchor];
    v80 = [v82 constraintEqualToAnchor:v81 constant:20.0];
    v85[0] = v80;
    v79 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v78 = [(NavTrayFeedbackView *)v5 leadingAnchor];
    v77 = [v79 constraintEqualToAnchor:v78 constant:20.0];
    v85[1] = v77;
    v76 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v75 = [(NavTrayFeedbackView *)v5 trailingAnchor];
    v74 = [v76 constraintLessThanOrEqualToAnchor:v75 constant:-20.0];
    v85[2] = v74;
    v73 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v72 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v71 = [v73 constraintEqualToAnchor:v72 constant:-20.0];
    v85[3] = v71;
    v70 = [(UIButton *)v5->_thumbsUpButton widthAnchor];
    v69 = [(UIButton *)v5->_thumbsUpButton heightAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v85[4] = v68;
    v67 = [(UIButton *)v5->_thumbsUpButton topAnchor];
    v66 = [(NavTrayFeedbackView *)v5 topAnchor];
    v65 = [v67 constraintEqualToAnchor:v66 constant:20.0];
    v85[5] = v65;
    v64 = [(UIButton *)v5->_thumbsUpButton leadingAnchor];
    v63 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v62 = [v64 constraintGreaterThanOrEqualToAnchor:v63 constant:12.0];
    v85[6] = v62;
    v61 = [(UIButton *)v5->_thumbsUpButton bottomAnchor];
    v60 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60 constant:-20.0];
    v85[7] = v59;
    v58 = [(UIButton *)v5->_thumbsDownButton heightAnchor];
    v57 = [(UIButton *)v5->_thumbsUpButton heightAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v85[8] = v56;
    v55 = [(UIButton *)v5->_thumbsDownButton widthAnchor];
    v54 = [(UIButton *)v5->_thumbsDownButton heightAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v85[9] = v53;
    v52 = [(UIButton *)v5->_thumbsDownButton topAnchor];
    v51 = [(NavTrayFeedbackView *)v5 topAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:20.0];
    v85[10] = v50;
    v49 = [(UIButton *)v5->_thumbsDownButton leadingAnchor];
    v39 = [(UIButton *)v5->_thumbsUpButton trailingAnchor];
    v40 = [v49 constraintEqualToAnchor:v39 constant:12.0];
    v85[11] = v40;
    v41 = [(UIButton *)v5->_thumbsDownButton trailingAnchor];
    v42 = [(NavTrayFeedbackView *)v5 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-20.0];
    v85[12] = v43;
    v44 = [(UIButton *)v5->_thumbsDownButton bottomAnchor];
    v45 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:-20.0];
    v85[13] = v46;
    v47 = [NSArray arrayWithObjects:v85 count:14];
    [NSLayoutConstraint activateConstraints:v47];

    v4 = v83;
  }

  return v5;
}

@end