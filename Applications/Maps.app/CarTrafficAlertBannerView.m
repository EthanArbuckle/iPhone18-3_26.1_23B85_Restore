@interface CarTrafficAlertBannerView
- (BNBannerSource)target;
- (CGSize)sizeThatFits:(CGSize)result;
- (CarTrafficAlertBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5;
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

  v11 = [(CarTrafficAlertBannerView *)self item];
  v3 = [v11 title];
  if (v3)
  {
    v4 = [NSAttributedString alloc];
    v5 = [v11 title];
    v6 = [v4 initWithString:v5 attributes:qword_10195F968];
    [(UILabel *)self->_titleLabel setAttributedText:v6];
  }

  else
  {
    [(UILabel *)self->_titleLabel setAttributedText:0];
  }

  v7 = [v11 subtitle];
  if (v7)
  {
    v8 = [NSAttributedString alloc];
    v9 = [v11 subtitle];
    v10 = [v8 initWithString:v9 attributes:qword_10195F970];
    [(UILabel *)self->_descriptionLabel setAttributedText:v10];
  }

  else
  {
    [(UILabel *)self->_descriptionLabel setAttributedText:0];
  }
}

- (CarTrafficAlertBannerView)initWithTarget:(id)a3 item:(id)a4 aperturePresentation:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v70.receiver = self;
  v70.super_class = CarTrafficAlertBannerView;
  v9 = [(CarTrafficAlertBannerView *)&v70 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(CarTrafficAlertBannerView *)v9 setAccessibilityIdentifier:v11];

    objc_storeWeak(&v9->_target, v7);
    objc_storeStrong(&v9->_item, a4);
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
    v69 = v7;
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
    v25 = [v24 window];
    v26 = [v25 windowScene];
    [v26 focusSystem];
    v27 = v68 = v8;
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
    v66 = [v13 leadingAnchor];
    v65 = [(CarTrafficAlertBannerView *)v9 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65 constant:12.0];
    v71[0] = v64;
    v63 = [v13 widthAnchor];
    v62 = [v63 constraintEqualToConstant:33.0];
    v71[1] = v62;
    v61 = [v13 centerYAnchor];
    v60 = [(CarTrafficAlertBannerView *)v9 centerYAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v71[2] = v59;
    v54 = v13;
    v58 = [v13 heightAnchor];
    v57 = [v58 constraintEqualToConstant:33.0];
    v71[3] = v57;
    v56 = [(CPUIBannerViewButton *)v9->_actionButton trailingAnchor];
    v55 = [(CarTrafficAlertBannerView *)v9 trailingAnchor];
    v53 = [v56 constraintEqualToAnchor:v55 constant:-12.0];
    v71[4] = v53;
    v52 = [(CPUIBannerViewButton *)v9->_actionButton widthAnchor];
    v51 = [v52 constraintEqualToConstant:29.0];
    v71[5] = v51;
    v50 = [(CPUIBannerViewButton *)v9->_actionButton centerYAnchor];
    v49 = [(CarTrafficAlertBannerView *)v9 centerYAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v71[6] = v48;
    v47 = [(CPUIBannerViewButton *)v9->_actionButton heightAnchor];
    v46 = [v47 constraintEqualToConstant:29.0];
    v71[7] = v46;
    v45 = [(UIStackView *)v9->_labelStackView leadingAnchor];
    v44 = [v13 trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:12.0];
    v71[8] = v43;
    v42 = [(UIStackView *)v9->_labelStackView trailingAnchor];
    v32 = [(CPUIBannerViewButton *)v9->_actionButton leadingAnchor];
    v33 = [v42 constraintEqualToAnchor:v32 constant:-12.0];
    v71[9] = v33;
    v34 = [(UIStackView *)v9->_labelStackView topAnchor];
    v35 = [(CarTrafficAlertBannerView *)v9 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:3.0];
    v71[10] = v36;
    v37 = [(UIStackView *)v9->_labelStackView bottomAnchor];
    v38 = [(CarTrafficAlertBannerView *)v9 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-3.0];
    v71[11] = v39;
    v40 = [NSArray arrayWithObjects:v71 count:12];
    [NSLayoutConstraint activateConstraints:v40];

    v7 = v69;
    v8 = v68;

    [(CarTrafficAlertBannerView *)v9 updateFromBannerItem];
  }

  return v9;
}

@end