@interface RoutePlanningEVChargeOptionsView
- (RoutePlanningEVChargeOptionsView)init;
- (RoutePlanningEVChargeOptionsView)initWithFrame:(CGRect)frame;
- (void)_setup;
@end

@implementation RoutePlanningEVChargeOptionsView

- (void)_setup
{
  v3 = objc_opt_new();
  checkbox = self->_checkbox;
  self->_checkbox = v3;

  [(UISwitch *)self->_checkbox setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [(UISwitch *)self->_checkbox setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UISwitch *)self->_checkbox setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(UISwitch *)self->_checkbox setContentHuggingPriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [(UISwitch *)self->_checkbox setContentCompressionResistancePriority:1 forAxis:v8];
  v9 = objc_opt_new();
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v9;

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[UIColor labelColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v11];

  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_descriptionLabel setFont:v12];

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentHuggingPriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v16];
  [(RoutePlanningEVChargeOptionsView *)self addSubview:self->_checkbox];
  [(RoutePlanningEVChargeOptionsView *)self addSubview:self->_descriptionLabel];
  leadingAnchor = [(UISwitch *)self->_checkbox leadingAnchor];
  leadingAnchor2 = [(RoutePlanningEVChargeOptionsView *)self leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v58[0] = v55;
  centerYAnchor = [(UISwitch *)self->_checkbox centerYAnchor];
  centerYAnchor2 = [(RoutePlanningEVChargeOptionsView *)self centerYAnchor];
  v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v58[1] = v52;
  topAnchor = [(UISwitch *)self->_checkbox topAnchor];
  topAnchor2 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  v49 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  v58[2] = v49;
  bottomAnchor = [(UISwitch *)self->_checkbox bottomAnchor];
  bottomAnchor2 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  v46 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
  v58[3] = v46;
  leadingAnchor3 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  trailingAnchor = [(UISwitch *)self->_checkbox trailingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v58[4] = v43;
  trailingAnchor2 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor3 = [(RoutePlanningEVChargeOptionsView *)self trailingAnchor];
  v40 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
  v58[5] = v40;
  topAnchor3 = [(UILabel *)self->_descriptionLabel topAnchor];
  topAnchor4 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  v37 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
  v58[6] = v37;
  bottomAnchor3 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor4 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  v34 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-8.0];
  v58[7] = v34;
  topAnchor5 = [(UISwitch *)self->_checkbox topAnchor];
  topAnchor6 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  LODWORD(v17) = 1144750080;
  v31 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0 priority:v17];
  v58[8] = v31;
  topAnchor7 = [(UILabel *)self->_descriptionLabel topAnchor];
  topAnchor8 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  LODWORD(v20) = 1144750080;
  v21 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:8.0 priority:v20];
  v58[9] = v21;
  topAnchor9 = [(UISwitch *)self->_checkbox topAnchor];
  bottomAnchor5 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  LODWORD(v24) = 1144750080;
  v25 = [topAnchor9 constraintEqualToAnchor:bottomAnchor5 constant:-8.0 priority:v24];
  v58[10] = v25;
  bottomAnchor6 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor7 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  LODWORD(v28) = 1144750080;
  v29 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-8.0 priority:v28];
  v58[11] = v29;
  v30 = [NSArray arrayWithObjects:v58 count:12];
  [NSLayoutConstraint activateConstraints:v30];
}

- (RoutePlanningEVChargeOptionsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RoutePlanningEVChargeOptionsView;
  v3 = [(RoutePlanningEVChargeOptionsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RoutePlanningEVChargeOptionsView *)v3 _setup];
  }

  return v4;
}

- (RoutePlanningEVChargeOptionsView)init
{
  v5.receiver = self;
  v5.super_class = RoutePlanningEVChargeOptionsView;
  v2 = [(RoutePlanningEVChargeOptionsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RoutePlanningEVChargeOptionsView *)v2 _setup];
  }

  return v3;
}

@end