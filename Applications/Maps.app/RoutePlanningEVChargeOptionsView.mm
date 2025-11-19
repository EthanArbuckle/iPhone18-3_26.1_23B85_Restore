@interface RoutePlanningEVChargeOptionsView
- (RoutePlanningEVChargeOptionsView)init;
- (RoutePlanningEVChargeOptionsView)initWithFrame:(CGRect)a3;
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
  v57 = [(UISwitch *)self->_checkbox leadingAnchor];
  v56 = [(RoutePlanningEVChargeOptionsView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:0.0];
  v58[0] = v55;
  v54 = [(UISwitch *)self->_checkbox centerYAnchor];
  v53 = [(RoutePlanningEVChargeOptionsView *)self centerYAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v58[1] = v52;
  v51 = [(UISwitch *)self->_checkbox topAnchor];
  v50 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  v49 = [v51 constraintGreaterThanOrEqualToAnchor:v50 constant:8.0];
  v58[2] = v49;
  v48 = [(UISwitch *)self->_checkbox bottomAnchor];
  v47 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  v46 = [v48 constraintLessThanOrEqualToAnchor:v47 constant:-8.0];
  v58[3] = v46;
  v45 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  v44 = [(UISwitch *)self->_checkbox trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:8.0];
  v58[4] = v43;
  v42 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  v41 = [(RoutePlanningEVChargeOptionsView *)self trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:-8.0];
  v58[5] = v40;
  v39 = [(UILabel *)self->_descriptionLabel topAnchor];
  v38 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  v37 = [v39 constraintGreaterThanOrEqualToAnchor:v38 constant:8.0];
  v58[6] = v37;
  v36 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v35 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  v34 = [v36 constraintLessThanOrEqualToAnchor:v35 constant:-8.0];
  v58[7] = v34;
  v33 = [(UISwitch *)self->_checkbox topAnchor];
  v32 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  LODWORD(v17) = 1144750080;
  v31 = [v33 constraintEqualToAnchor:v32 constant:8.0 priority:v17];
  v58[8] = v31;
  v18 = [(UILabel *)self->_descriptionLabel topAnchor];
  v19 = [(RoutePlanningEVChargeOptionsView *)self topAnchor];
  LODWORD(v20) = 1144750080;
  v21 = [v18 constraintEqualToAnchor:v19 constant:8.0 priority:v20];
  v58[9] = v21;
  v22 = [(UISwitch *)self->_checkbox topAnchor];
  v23 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  LODWORD(v24) = 1144750080;
  v25 = [v22 constraintEqualToAnchor:v23 constant:-8.0 priority:v24];
  v58[10] = v25;
  v26 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v27 = [(RoutePlanningEVChargeOptionsView *)self bottomAnchor];
  LODWORD(v28) = 1144750080;
  v29 = [v26 constraintEqualToAnchor:v27 constant:-8.0 priority:v28];
  v58[11] = v29;
  v30 = [NSArray arrayWithObjects:v58 count:12];
  [NSLayoutConstraint activateConstraints:v30];
}

- (RoutePlanningEVChargeOptionsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningEVChargeOptionsView;
  v3 = [(RoutePlanningEVChargeOptionsView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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