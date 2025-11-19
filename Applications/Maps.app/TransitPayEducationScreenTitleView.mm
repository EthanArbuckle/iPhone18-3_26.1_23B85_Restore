@interface TransitPayEducationScreenTitleView
- (TransitPayEducationScreenTitleView)initWithTitle:(id)a3;
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
  v37 = [(UIImageView *)self->_iconImageView heightAnchor];
  v36 = [v37 constraintEqualToConstant:v10];
  v38[0] = v36;
  v35 = [(UIImageView *)self->_iconImageView widthAnchor];
  v34 = [v35 constraintEqualToConstant:v10];
  v38[1] = v34;
  v33 = [(UIImageView *)self->_iconImageView leadingAnchor];
  v32 = [(TransitPayEducationScreenTitleView *)self leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:v6];
  v38[2] = v31;
  v30 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v29 = [(TransitPayEducationScreenTitleView *)self centerYAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v38[3] = v28;
  v27 = [(UILabel *)self->_titleLabel leadingAnchor];
  v26 = [(UIImageView *)self->_iconImageView trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:v14];
  v38[4] = v25;
  v15 = [(UILabel *)self->_titleLabel topAnchor];
  v16 = [(TransitPayEducationScreenTitleView *)self topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v38[5] = v17;
  v18 = [(UILabel *)self->_titleLabel trailingAnchor];
  v19 = [(TransitPayEducationScreenTitleView *)self trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v38[6] = v20;
  v21 = [(UILabel *)self->_titleLabel bottomAnchor];
  v22 = [(TransitPayEducationScreenTitleView *)self bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v38[7] = v23;
  v24 = [NSArray arrayWithObjects:v38 count:8];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)_setupViews
{
  v3 = [(TransitPayEducationScreenTitleView *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(TransitPayEducationScreenTitleView *)self addSubview:self->_titleLabel];
  v5 = [(TransitPayEducationScreenTitleView *)self _createIconImageView];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v5;

  v7 = self->_iconImageView;

  [(TransitPayEducationScreenTitleView *)self addSubview:v7];
}

- (TransitPayEducationScreenTitleView)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TransitPayEducationScreenTitleView;
  v5 = [(TransitPayEducationScreenTitleView *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    [(TransitPayEducationScreenTitleView *)v5 _setupViews];
    [(TransitPayEducationScreenTitleView *)v5 _setUpConstraints];
  }

  return v5;
}

@end