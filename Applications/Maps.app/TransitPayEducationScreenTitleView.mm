@interface TransitPayEducationScreenTitleView
- (TransitPayEducationScreenTitleView)initWithTitle:(id)title;
- (id)_createIconImageView;
- (id)_createTitleLabel;
- (void)_setUpConstraints;
- (void)_setupViews;
@end

@implementation TransitPayEducationScreenTitleView

- (id)_createIconImageView
{
  v2 = objc_alloc_init(UIImageView);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v4 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.Passbook" format:2 scale:?];
  [v2 setImage:v4];

  [v2 setClipsToBounds:1];

  return v2;
}

- (id)_createTitleLabel
{
  v3 = objc_alloc_init(UILabel);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setText:self->_title];
  [v3 setTextAlignment:0];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
  [v3 setFont:v4];

  return v3;
}

- (void)_setUpConstraints
{
  GEOConfigGetDouble();
  v4 = v3;
  GEOConfigGetDouble();
  v6 = v5 * v4;
  GEOConfigGetDouble();
  v8 = v7;
  GEOConfigGetDouble();
  v10 = v9 * v8;
  GEOConfigGetDouble();
  v12 = v11;
  GEOConfigGetDouble();
  v14 = v13 * v12;
  heightAnchor = [(UIImageView *)self->_iconImageView heightAnchor];
  v36 = [heightAnchor constraintEqualToConstant:v10];
  v38[0] = v36;
  widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
  v34 = [widthAnchor constraintEqualToConstant:v10];
  v38[1] = v34;
  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [(TransitPayEducationScreenTitleView *)self leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
  v38[2] = v31;
  centerYAnchor = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor2 = [(TransitPayEducationScreenTitleView *)self centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v38[3] = v28;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v14];
  v38[4] = v25;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(TransitPayEducationScreenTitleView *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[5] = v17;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [(TransitPayEducationScreenTitleView *)self trailingAnchor];
  v20 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v38[6] = v20;
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor2 = [(TransitPayEducationScreenTitleView *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[7] = v23;
  v24 = [NSArray arrayWithObjects:v38 count:8];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)_setupViews
{
  _createTitleLabel = [(TransitPayEducationScreenTitleView *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _createTitleLabel;

  [(TransitPayEducationScreenTitleView *)self addSubview:self->_titleLabel];
  _createIconImageView = [(TransitPayEducationScreenTitleView *)self _createIconImageView];
  iconImageView = self->_iconImageView;
  self->_iconImageView = _createIconImageView;

  v7 = self->_iconImageView;

  [(TransitPayEducationScreenTitleView *)self addSubview:v7];
}

- (TransitPayEducationScreenTitleView)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = TransitPayEducationScreenTitleView;
  v5 = [(TransitPayEducationScreenTitleView *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    [(TransitPayEducationScreenTitleView *)v5 _setupViews];
    [(TransitPayEducationScreenTitleView *)v5 _setUpConstraints];
  }

  return v5;
}

@end