@interface TrafficIncidentTitleView
- (TrafficIncidentTitleView)init;
- (void)_setupConstraints;
- (void)_setupViews;
@end

@implementation TrafficIncidentTitleView

- (void)_setupConstraints
{
  v17 = [(UILabel *)self->_titleLabel leadingAnchor];
  v16 = [(TrafficIncidentTitleView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:16.0];
  v18[0] = v15;
  v14 = [(UILabel *)self->_titleLabel trailingAnchor];
  v13 = [(TrafficIncidentTitleView *)self trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:-16.0];
  v18[1] = v3;
  v4 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v5 = [(TrafficIncidentTitleView *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v7 = [DynamicTypeWizard autoscaledConstraint:v6 constant:&stru_10165D9E8 withFontProvider:37.0];
  v18[2] = v7;
  v8 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v9 = [(TrafficIncidentTitleView *)self bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v11 = [DynamicTypeWizard autoscaledConstraint:v10 constant:&stru_10165D9E8 withFontProvider:-22.0];
  v18[3] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_10165D9E8];
  v6 = self->_titleLabel;

  [(TrafficIncidentTitleView *)self addSubview:v6];
}

- (TrafficIncidentTitleView)init
{
  v5.receiver = self;
  v5.super_class = TrafficIncidentTitleView;
  v2 = [(TrafficIncidentTitleView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TrafficIncidentTitleView *)v2 _setupViews];
    [(TrafficIncidentTitleView *)v3 _setupConstraints];
  }

  return v3;
}

@end