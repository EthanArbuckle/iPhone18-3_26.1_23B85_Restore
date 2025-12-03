@interface CarTrafficAlertBannerView
- (BNBannerSource)target;
- (CGSize)sizeThatFits:(CGSize)result;
- (CarTrafficAlertBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation;
- (void)updateFromBannerItem;
@end

@implementation CarTrafficAlertBannerView

- (BNBannerSource)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 54.0;
  result.height = v3;
  return result;
}

- (void)updateFromBannerItem
{
  if (qword_10195F978 != -1)
  {
    dispatch_once(&qword_10195F978, &stru_1016601A0);
  }

  item = [(CarTrafficAlertBannerView *)self item];
  title = [item title];
  if (title)
  {
    v4 = [NSAttributedString alloc];
    title2 = [item title];
    v6 = [v4 initWithString:title2 attributes:qword_10195F968];
    [(UILabel *)self->_titleLabel setAttributedText:v6];
  }

  else
  {
    [(UILabel *)self->_titleLabel setAttributedText:0];
  }

  subtitle = [item subtitle];
  if (subtitle)
  {
    v8 = [NSAttributedString alloc];
    subtitle2 = [item subtitle];
    v10 = [v8 initWithString:subtitle2 attributes:qword_10195F970];
    [(UILabel *)self->_descriptionLabel setAttributedText:v10];
  }

  else
  {
    [(UILabel *)self->_descriptionLabel setAttributedText:0];
  }
}

- (CarTrafficAlertBannerView)initWithTarget:(id)target item:(id)item aperturePresentation:(BOOL)presentation
{
  targetCopy = target;
  itemCopy = item;
  v70.receiver = self;
  v70.super_class = CarTrafficAlertBannerView;
  v9 = [(CarTrafficAlertBannerView *)&v70 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(CarTrafficAlertBannerView *)v9 setAccessibilityIdentifier:v11];

    objc_storeWeak(&v9->_target, targetCopy);
    objc_storeStrong(&v9->_item, item);
    v67 = [UIImage _applicationIconImageForBundleIdentifier:MapsAppBundleId format:9];
    v12 = [[UIImageView alloc] initWithImage:v67];
    [v12 setAccessibilityIdentifier:@"AppIconView"];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setContentMode:1];
    v13 = v12;
    [(CarTrafficAlertBannerView *)v9 addSubview:v12];
    v14 = objc_opt_new();
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v14;

    [(UILabel *)v9->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = objc_opt_new();
    v69 = targetCopy;
    descriptionLabel = v9->_descriptionLabel;
    v9->_descriptionLabel = v16;

    [(UILabel *)v9->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    [(UILabel *)v9->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [UIStackView alloc];
    v72[0] = v9->_titleLabel;
    v72[1] = v9->_descriptionLabel;
    v19 = [NSArray arrayWithObjects:v72 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];
    labelStackView = v9->_labelStackView;
    v9->_labelStackView = v20;

    [(UIStackView *)v9->_labelStackView setAccessibilityIdentifier:@"LabelStackView"];
    [(UIStackView *)v9->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_labelStackView setAxis:1];
    [(UIStackView *)v9->_labelStackView setDistribution:2];
    [(UIStackView *)v9->_labelStackView setAlignment:0];
    [(CarTrafficAlertBannerView *)v9 addSubview:v9->_labelStackView];
    v22 = +[CPUIBannerViewButton buttonWithChevronImage];
    actionButton = v9->_actionButton;
    v9->_actionButton = v22;

    [(CPUIBannerViewButton *)v9->_actionButton setAccessibilityIdentifier:@"ActionButton"];
    [(CPUIBannerViewButton *)v9->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = +[CarDisplayController sharedInstance];
    window = [v24 window];
    windowScene = [window windowScene];
    [windowScene focusSystem];
    v27 = v68 = itemCopy;
    [(CPUIBannerViewButton *)v9->_actionButton setSelected:v27 != 0];

    LODWORD(v28) = 1148846080;
    [(CPUIBannerViewButton *)v9->_actionButton setContentHuggingPriority:0 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [(CPUIBannerViewButton *)v9->_actionButton setContentHuggingPriority:1 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(CPUIBannerViewButton *)v9->_actionButton setContentCompressionResistancePriority:0 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(CPUIBannerViewButton *)v9->_actionButton setContentCompressionResistancePriority:1 forAxis:v31];
    [(CarTrafficAlertBannerView *)v9 addSubview:v9->_actionButton];
    leadingAnchor = [v13 leadingAnchor];
    leadingAnchor2 = [(CarTrafficAlertBannerView *)v9 leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v71[0] = v64;
    widthAnchor = [v13 widthAnchor];
    v62 = [widthAnchor constraintEqualToConstant:33.0];
    v71[1] = v62;
    centerYAnchor = [v13 centerYAnchor];
    centerYAnchor2 = [(CarTrafficAlertBannerView *)v9 centerYAnchor];
    v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v71[2] = v59;
    v54 = v13;
    heightAnchor = [v13 heightAnchor];
    v57 = [heightAnchor constraintEqualToConstant:33.0];
    v71[3] = v57;
    trailingAnchor = [(CPUIBannerViewButton *)v9->_actionButton trailingAnchor];
    trailingAnchor2 = [(CarTrafficAlertBannerView *)v9 trailingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v71[4] = v53;
    widthAnchor2 = [(CPUIBannerViewButton *)v9->_actionButton widthAnchor];
    v51 = [widthAnchor2 constraintEqualToConstant:29.0];
    v71[5] = v51;
    centerYAnchor3 = [(CPUIBannerViewButton *)v9->_actionButton centerYAnchor];
    centerYAnchor4 = [(CarTrafficAlertBannerView *)v9 centerYAnchor];
    v48 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v71[6] = v48;
    heightAnchor2 = [(CPUIBannerViewButton *)v9->_actionButton heightAnchor];
    v46 = [heightAnchor2 constraintEqualToConstant:29.0];
    v71[7] = v46;
    leadingAnchor3 = [(UIStackView *)v9->_labelStackView leadingAnchor];
    trailingAnchor3 = [v13 trailingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    v71[8] = v43;
    trailingAnchor4 = [(UIStackView *)v9->_labelStackView trailingAnchor];
    leadingAnchor4 = [(CPUIBannerViewButton *)v9->_actionButton leadingAnchor];
    v33 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor4 constant:-12.0];
    v71[9] = v33;
    topAnchor = [(UIStackView *)v9->_labelStackView topAnchor];
    topAnchor2 = [(CarTrafficAlertBannerView *)v9 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
    v71[10] = v36;
    bottomAnchor = [(UIStackView *)v9->_labelStackView bottomAnchor];
    bottomAnchor2 = [(CarTrafficAlertBannerView *)v9 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
    v71[11] = v39;
    v40 = [NSArray arrayWithObjects:v71 count:12];
    [NSLayoutConstraint activateConstraints:v40];

    targetCopy = v69;
    itemCopy = v68;

    [(CarTrafficAlertBannerView *)v9 updateFromBannerItem];
  }

  return v9;
}

@end