@interface NavTrayFeedbackView
- (CGSize)intrinsicContentSize;
- (NavTrayFeedbackView)initWithDelegate:(id)delegate;
- (void)_applyBackgroundColor;
- (void)_thumbsDownPressed:(id)pressed;
- (void)_thumbsUpPressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NavTrayFeedbackView

- (void)_thumbsDownPressed:(id)pressed
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

- (void)_thumbsUpPressed:(id)pressed
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
  traitCollection = [(NavTrayFeedbackView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    v3 = +[UIColor secondarySystemGroupedBackgroundColor];
    v4 = [v3 resolvedColorWithTraitCollection:traitCollection];
    [(NavTrayFeedbackView *)self setBackgroundColor:v4];
  }

  else
  {
    v3 = +[UIColor whiteColor];
    [(NavTrayFeedbackView *)self setBackgroundColor:v3];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = NavTrayFeedbackView;
  changeCopy = change;
  [(NavTrayFeedbackView *)&v11 traitCollectionDidChange:changeCopy];
  v5 = [(NavTrayFeedbackView *)self traitCollection:v11.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    minimizedValueFontProvider = self->_minimizedValueFontProvider;
    traitCollection = [(NavTrayFeedbackView *)self traitCollection];
    v10 = minimizedValueFontProvider[2](minimizedValueFontProvider, traitCollection);
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

- (NavTrayFeedbackView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v84.receiver = self;
  v84.super_class = NavTrayFeedbackView;
  v5 = [(NavTrayFeedbackView *)&v84 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavTrayFeedbackView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, delegateCopy);
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
    v13 = v83 = delegateCopy;
    [(UILabel *)v5->_titleLabel setText:v13];

    v14 = v5->_minimizedValueFontProvider;
    traitCollection = [(NavTrayFeedbackView *)v5 traitCollection];
    v16 = v14[2](v14, traitCollection);
    [(UILabel *)v5->_titleLabel setFont:v16];

    [(UILabel *)v5->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_titleLabel];
    v17 = [RAPThumbsButton buttonWithType:0];
    thumbsUpButton = v5->_thumbsUpButton;
    v5->_thumbsUpButton = v17;

    [(UIButton *)v5->_thumbsUpButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v5->_thumbsUpButton;
    traitCollection2 = [(NavTrayFeedbackView *)v5 traitCollection];
    v21 = [UIImage systemImageNamed:@"hand.thumbsup" compatibleWithTraitCollection:traitCollection2];
    [(UIButton *)v19 setImage:v21 forState:0];

    v22 = v5->_thumbsUpButton;
    traitCollection3 = [(NavTrayFeedbackView *)v5 traitCollection];
    v24 = [UIImage systemImageNamed:@"hand.thumbsup.fill" compatibleWithTraitCollection:traitCollection3];
    [(UIButton *)v22 setImage:v24 forState:1];

    v25 = v5->_thumbsUpButton;
    traitCollection4 = [(NavTrayFeedbackView *)v5 traitCollection];
    v27 = [UIImage systemImageNamed:@"hand.thumbsup.fill" compatibleWithTraitCollection:traitCollection4];
    [(UIButton *)v25 setImage:v27 forState:4];

    [(UIButton *)v5->_thumbsUpButton addTarget:v5 action:"_thumbsUpPressed:" forControlEvents:0x2000];
    [(UIButton *)v5->_thumbsUpButton setAccessibilityIdentifier:@"ThumbsUpButton"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_thumbsUpButton];
    v28 = [RAPThumbsButton buttonWithType:0];
    thumbsDownButton = v5->_thumbsDownButton;
    v5->_thumbsDownButton = v28;

    [(UIButton *)v5->_thumbsDownButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v5->_thumbsDownButton;
    traitCollection5 = [(NavTrayFeedbackView *)v5 traitCollection];
    v32 = [UIImage systemImageNamed:@"hand.thumbsdown" compatibleWithTraitCollection:traitCollection5];
    [(UIButton *)v30 setImage:v32 forState:0];

    v33 = v5->_thumbsDownButton;
    traitCollection6 = [(NavTrayFeedbackView *)v5 traitCollection];
    v35 = [UIImage systemImageNamed:@"hand.thumbsdown.fill" compatibleWithTraitCollection:traitCollection6];
    [(UIButton *)v33 setImage:v35 forState:1];

    v36 = v5->_thumbsDownButton;
    traitCollection7 = [(NavTrayFeedbackView *)v5 traitCollection];
    v38 = [UIImage systemImageNamed:@"hand.thumbsdown.fill" compatibleWithTraitCollection:traitCollection7];
    [(UIButton *)v36 setImage:v38 forState:4];

    [(UIButton *)v5->_thumbsDownButton addTarget:v5 action:"_thumbsDownPressed:" forControlEvents:0x2000];
    [(UIButton *)v5->_thumbsDownButton setAccessibilityIdentifier:@"ThumbsDownButton"];
    [(NavTrayFeedbackView *)v5 addSubview:v5->_thumbsDownButton];
    topAnchor = [(UILabel *)v5->_titleLabel topAnchor];
    topAnchor2 = [(NavTrayFeedbackView *)v5 topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v85[0] = v80;
    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    leadingAnchor2 = [(NavTrayFeedbackView *)v5 leadingAnchor];
    v77 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v85[1] = v77;
    trailingAnchor = [(UILabel *)v5->_titleLabel trailingAnchor];
    trailingAnchor2 = [(NavTrayFeedbackView *)v5 trailingAnchor];
    v74 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-20.0];
    v85[2] = v74;
    bottomAnchor = [(UILabel *)v5->_titleLabel bottomAnchor];
    bottomAnchor2 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    v85[3] = v71;
    widthAnchor = [(UIButton *)v5->_thumbsUpButton widthAnchor];
    heightAnchor = [(UIButton *)v5->_thumbsUpButton heightAnchor];
    v68 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v85[4] = v68;
    topAnchor3 = [(UIButton *)v5->_thumbsUpButton topAnchor];
    topAnchor4 = [(NavTrayFeedbackView *)v5 topAnchor];
    v65 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
    v85[5] = v65;
    leadingAnchor3 = [(UIButton *)v5->_thumbsUpButton leadingAnchor];
    trailingAnchor3 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v62 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:12.0];
    v85[6] = v62;
    bottomAnchor3 = [(UIButton *)v5->_thumbsUpButton bottomAnchor];
    bottomAnchor4 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
    v85[7] = v59;
    heightAnchor2 = [(UIButton *)v5->_thumbsDownButton heightAnchor];
    heightAnchor3 = [(UIButton *)v5->_thumbsUpButton heightAnchor];
    v56 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v85[8] = v56;
    widthAnchor2 = [(UIButton *)v5->_thumbsDownButton widthAnchor];
    heightAnchor4 = [(UIButton *)v5->_thumbsDownButton heightAnchor];
    v53 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
    v85[9] = v53;
    topAnchor5 = [(UIButton *)v5->_thumbsDownButton topAnchor];
    topAnchor6 = [(NavTrayFeedbackView *)v5 topAnchor];
    v50 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:20.0];
    v85[10] = v50;
    leadingAnchor4 = [(UIButton *)v5->_thumbsDownButton leadingAnchor];
    trailingAnchor4 = [(UIButton *)v5->_thumbsUpButton trailingAnchor];
    v40 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
    v85[11] = v40;
    trailingAnchor5 = [(UIButton *)v5->_thumbsDownButton trailingAnchor];
    trailingAnchor6 = [(NavTrayFeedbackView *)v5 trailingAnchor];
    v43 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-20.0];
    v85[12] = v43;
    bottomAnchor5 = [(UIButton *)v5->_thumbsDownButton bottomAnchor];
    bottomAnchor6 = [(NavTrayFeedbackView *)v5 bottomAnchor];
    v46 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-20.0];
    v85[13] = v46;
    v47 = [NSArray arrayWithObjects:v85 count:14];
    [NSLayoutConstraint activateConstraints:v47];

    delegateCopy = v83;
  }

  return v5;
}

@end