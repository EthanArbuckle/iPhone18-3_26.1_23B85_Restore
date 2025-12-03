@interface CarAdvisoryView
- (CarAdvisoryView)init;
- (CarAdvisoryView)initWithAdvisory:(id)advisory;
- (void)_setupViews;
- (void)_updateContent;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarAdvisoryView

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarAdvisoryView;
  changeCopy = change;
  [(CarAdvisoryView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarAdvisoryView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CarAdvisoryView *)self _updateContent];
  }
}

- (void)_updateContent
{
  titleString = [(GEOComposedRouteAdvisory *)self->_advisory titleString];
  stringWithDefaultOptions = [titleString stringWithDefaultOptions];
  [(UILabel *)self->_advisoryLabel setText:stringWithDefaultOptions];

  artwork = [(GEOComposedRouteAdvisory *)self->_advisory artwork];
  traitCollection = [(CarAdvisoryView *)self traitCollection];
  v8 = ImageForArtwork();

  if (v8)
  {
    [(UIImageView *)self->_advisoryImage setImage:v8];
  }

  else
  {
    v7 = [UIImage warningImageOfSize:13.0];
    [(UIImageView *)self->_advisoryImage setImage:v7];
  }
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v7 setNumberOfLines:2];
  LODWORD(v8) = 1148846080;
  [(UILabel *)v7 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(UILabel *)v7 setContentHuggingPriority:1 forAxis:v9];
  v10 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 traits:0x8000];
  [(UILabel *)v7 setFont:v10];

  v11 = +[UIColor _carSystemSecondaryColor];
  [(UILabel *)v7 setTextColor:v11];

  [(UILabel *)v7 setLineBreakMode:4];
  advisoryLabel = self->_advisoryLabel;
  self->_advisoryLabel = v7;
  v46 = v7;

  [(UILabel *)self->_advisoryLabel setAccessibilityIdentifier:@"AdvisoryLabel"];
  [(CarAdvisoryView *)self addSubview:self->_advisoryLabel];
  v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  advisoryImage = self->_advisoryImage;
  self->_advisoryImage = v13;

  [(UIImageView *)self->_advisoryImage setAccessibilityIdentifier:@"AdvisoryImage"];
  [(UIImageView *)self->_advisoryImage setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_advisoryImage setContentMode:1];
  [(UIImageView *)self->_advisoryImage setClipsToBounds:1];
  [(CarAdvisoryView *)self addSubview:self->_advisoryImage];
  v15 = [UIImage warningImageOfSize:13.0];
  [(UIImageView *)self->_advisoryImage setImage:v15];

  font = [(UILabel *)self->_advisoryLabel font];
  [font lineHeight];
  v18 = v17;

  v19 = fmin(v18, 13.0);
  leadingAnchor = [(UIImageView *)self->_advisoryImage leadingAnchor];
  leadingAnchor2 = [(CarAdvisoryView *)self leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v43;
  widthAnchor = [(UIImageView *)self->_advisoryImage widthAnchor];
  v41 = [widthAnchor constraintEqualToConstant:v19];
  v47[1] = v41;
  heightAnchor = [(UIImageView *)self->_advisoryImage heightAnchor];
  v39 = [heightAnchor constraintEqualToConstant:v19];
  v47[2] = v39;
  centerYAnchor = [(UIImageView *)self->_advisoryImage centerYAnchor];
  firstBaselineAnchor = [(UILabel *)self->_advisoryLabel firstBaselineAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-3.0];
  v47[3] = v36;
  bottomAnchor = [(UIImageView *)self->_advisoryImage bottomAnchor];
  bottomAnchor2 = [(CarAdvisoryView *)self bottomAnchor];
  v33 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v47[4] = v33;
  topAnchor = [(UILabel *)self->_advisoryLabel topAnchor];
  topAnchor2 = [(CarAdvisoryView *)self topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[5] = v30;
  trailingAnchor = [(UILabel *)self->_advisoryLabel trailingAnchor];
  trailingAnchor2 = [(CarAdvisoryView *)self trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[6] = v22;
  leadingAnchor3 = [(UILabel *)self->_advisoryLabel leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_advisoryImage trailingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:3.0];
  v47[7] = v25;
  bottomAnchor3 = [(UILabel *)self->_advisoryLabel bottomAnchor];
  bottomAnchor4 = [(CarAdvisoryView *)self bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v47[8] = v28;
  v29 = [NSArray arrayWithObjects:v47 count:9];
  [NSLayoutConstraint activateConstraints:v29];
}

- (CarAdvisoryView)initWithAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v9.receiver = self;
  v9.super_class = CarAdvisoryView;
  v6 = [(CarAdvisoryView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_advisory, advisory);
    [(CarAdvisoryView *)v7 setAccessibilityIdentifier:@"CarAdvisoryView"];
    [(CarAdvisoryView *)v7 _setupViews];
    [(CarAdvisoryView *)v7 _updateContent];
  }

  return v7;
}

- (CarAdvisoryView)init
{
  v5.receiver = self;
  v5.super_class = CarAdvisoryView;
  v2 = [(CarAdvisoryView *)&v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    [(CarAdvisoryView *)v2 _setupViews];
  }

  return v3;
}

@end