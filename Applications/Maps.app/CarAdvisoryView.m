@interface CarAdvisoryView
- (CarAdvisoryView)init;
- (CarAdvisoryView)initWithAdvisory:(id)a3;
- (void)_setupViews;
- (void)_updateContent;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarAdvisoryView

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarAdvisoryView;
  v4 = a3;
  [(CarAdvisoryView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarAdvisoryView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CarAdvisoryView *)self _updateContent];
  }
}

- (void)_updateContent
{
  v3 = [(GEOComposedRouteAdvisory *)self->_advisory titleString];
  v4 = [v3 stringWithDefaultOptions];
  [(UILabel *)self->_advisoryLabel setText:v4];

  v5 = [(GEOComposedRouteAdvisory *)self->_advisory artwork];
  v6 = [(CarAdvisoryView *)self traitCollection];
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

  v16 = [(UILabel *)self->_advisoryLabel font];
  [v16 lineHeight];
  v18 = v17;

  v19 = fmin(v18, 13.0);
  v45 = [(UIImageView *)self->_advisoryImage leadingAnchor];
  v44 = [(CarAdvisoryView *)self leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v47[0] = v43;
  v42 = [(UIImageView *)self->_advisoryImage widthAnchor];
  v41 = [v42 constraintEqualToConstant:v19];
  v47[1] = v41;
  v40 = [(UIImageView *)self->_advisoryImage heightAnchor];
  v39 = [v40 constraintEqualToConstant:v19];
  v47[2] = v39;
  v38 = [(UIImageView *)self->_advisoryImage centerYAnchor];
  v37 = [(UILabel *)self->_advisoryLabel firstBaselineAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:-3.0];
  v47[3] = v36;
  v35 = [(UIImageView *)self->_advisoryImage bottomAnchor];
  v34 = [(CarAdvisoryView *)self bottomAnchor];
  v33 = [v35 constraintLessThanOrEqualToAnchor:v34];
  v47[4] = v33;
  v32 = [(UILabel *)self->_advisoryLabel topAnchor];
  v31 = [(CarAdvisoryView *)self topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v47[5] = v30;
  v20 = [(UILabel *)self->_advisoryLabel trailingAnchor];
  v21 = [(CarAdvisoryView *)self trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v47[6] = v22;
  v23 = [(UILabel *)self->_advisoryLabel leadingAnchor];
  v24 = [(UIImageView *)self->_advisoryImage trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:3.0];
  v47[7] = v25;
  v26 = [(UILabel *)self->_advisoryLabel bottomAnchor];
  v27 = [(CarAdvisoryView *)self bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v47[8] = v28;
  v29 = [NSArray arrayWithObjects:v47 count:9];
  [NSLayoutConstraint activateConstraints:v29];
}

- (CarAdvisoryView)initWithAdvisory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarAdvisoryView;
  v6 = [(CarAdvisoryView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_advisory, a3);
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