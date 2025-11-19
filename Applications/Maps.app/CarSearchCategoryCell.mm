@interface CarSearchCategoryCell
- (CarSearchCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setupWithBrowseCategory:(id)a3;
- (void)setupWithIncidentLayoutItem:(id)a3;
- (void)setupWithSavedPlaces;
@end

@implementation CarSearchCategoryCell

- (void)_setupConstraints
{
  v25 = [(UIImageView *)self->_iconImageView heightAnchor];
  v24 = [v25 constraintEqualToConstant:29.0];
  v26[0] = v24;
  v23 = [(UIImageView *)self->_iconImageView widthAnchor];
  v22 = [v23 constraintEqualToConstant:29.0];
  v26[1] = v22;
  v21 = [(UIImageView *)self->_iconImageView leadingAnchor];
  v20 = [(CarSearchCategoryCell *)self leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:6.0];
  v26[2] = v19;
  v18 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v17 = [(CarSearchCategoryCell *)self centerYAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v26[3] = v16;
  v15 = [(UILabel *)self->_categoryLabel leadingAnchor];
  v14 = [(UIImageView *)self->_iconImageView trailingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:6.0];
  v26[4] = v13;
  v3 = [(UILabel *)self->_categoryLabel topAnchor];
  v4 = [(CarSearchCategoryCell *)self topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:6.0];
  v26[5] = v5;
  v6 = [(UILabel *)self->_categoryLabel bottomAnchor];
  v7 = [(CarSearchCategoryCell *)self bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-6.0];
  v26[6] = v8;
  v9 = [(UILabel *)self->_categoryLabel trailingAnchor];
  v10 = [(CarSearchCategoryCell *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-6.0];
  v26[7] = v11;
  v12 = [NSArray arrayWithObjects:v26 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CarSearchCategoryCell;
  [(CarSearchCategoryCell *)&v9 setHighlighted:a3 animated:a4];
  if (a3)
  {
    v6 = +[UIColor _carSystemFocusLabelColor];
    [(UIImageView *)self->_iconImageView setTintColor:v6];

    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v7 = +[UIColor _carSystemFocusColor];
    [(UIImageView *)self->_iconImageView setTintColor:v7];

    +[UIColor labelColor];
  }
  v8 = ;
  [(UILabel *)self->_categoryLabel setTextColor:v8];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CarSearchCategoryCell;
  [(CarSearchCategoryCell *)&v3 prepareForReuse];
  [(UIImageView *)self->_iconImageView setImage:0];
  [(UILabel *)self->_categoryLabel setText:0];
}

- (void)setupWithIncidentLayoutItem:(id)a3
{
  v4 = a3;
  v5 = [v4 displayImage];
  if (v5)
  {
    [(UIImageView *)self->_iconImageView setImage:v5];
  }

  else
  {
    v6 = [UIImage _mapsCar_systemImageNamed:@"exclamationmark.bubble.fill" pointSize:22.0];
    [(UIImageView *)self->_iconImageView setImage:v6];
  }

  v7 = [v4 displayText];

  [(UILabel *)self->_categoryLabel setText:v7];
}

- (void)setupWithSavedPlaces
{
  v3 = [UIImage _mapsCar_systemImageNamed:@"rectangle.stack.fill" pointSize:22.0];
  [(UIImageView *)self->_iconImageView setImage:v3];

  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"CarPlay_Guides_List_Title" value:@"localized string not found" table:0];
  [(UILabel *)self->_categoryLabel setText:v4];
}

- (void)setupWithBrowseCategory:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  [(CarSearchCategoryCell *)self setUpdateIdentifier:v5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FB2644;
  v12[3] = &unk_10165FED0;
  v6 = v5;
  v13 = v6;
  v14 = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FB26DC;
  v10[3] = &unk_10165FEF8;
  v7 = objc_retainBlock(v12);
  v11 = v7;
  [v4 imageWithScale:1 isCarplay:v10 resultHandler:0.0];
  v8 = [v4 alternativeName];
  if ([v8 length])
  {
    [v4 alternativeName];
  }

  else
  {
    [v4 name];
  }
  v9 = ;

  [(UILabel *)self->_categoryLabel setText:v9];
}

- (CarSearchCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v22.receiver = self;
  v22.super_class = CarSearchCategoryCell;
  v4 = [(CarSearchCategoryCell *)&v22 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v9;

    [(UIImageView *)v4->_iconImageView setAccessibilityIdentifier:@"CarSearchCategoryIcon"];
    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:0 forAxis:v12];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    v13 = [(CarSearchCategoryCell *)v4 contentView];
    [v13 addSubview:v4->_iconImageView];

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    categoryLabel = v4->_categoryLabel;
    v4->_categoryLabel = v14;

    [(UILabel *)v4->_categoryLabel setAccessibilityIdentifier:@"CarSearchCategoryLabel"];
    [(UILabel *)v4->_categoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v4->_categoryLabel setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(UILabel *)v4->_categoryLabel setContentCompressionResistancePriority:0 forAxis:v17];
    [(UILabel *)v4->_categoryLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v4->_categoryLabel setNumberOfLines:1];
    v18 = [(CarSearchCategoryCell *)v4 traitCollection];
    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v18];
    [(UILabel *)v4->_categoryLabel setFont:v19];

    v20 = [(CarSearchCategoryCell *)v4 contentView];
    [v20 addSubview:v4->_categoryLabel];

    [(CarSearchCategoryCell *)v4 _setupConstraints];
  }

  return v4;
}

@end