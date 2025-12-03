@interface TrafficIncidentTitleView
- (TrafficIncidentTitleView)init;
- (void)_setupConstraints;
- (void)_setupViews;
@end

@implementation TrafficIncidentTitleView

- (void)_setupConstraints
{
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(TrafficIncidentTitleView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v18[0] = v15;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(TrafficIncidentTitleView *)self trailingAnchor];
  v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v18[1] = v3;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor = [(TrafficIncidentTitleView *)self topAnchor];
  v6 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  v7 = [DynamicTypeWizard autoscaledConstraint:v6 constant:&stru_10165D9E8 withFontProvider:37.0];
  v18[2] = v7;
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  bottomAnchor = [(TrafficIncidentTitleView *)self bottomAnchor];
  v10 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
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