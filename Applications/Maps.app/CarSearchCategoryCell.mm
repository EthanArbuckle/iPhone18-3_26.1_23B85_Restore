@interface CarSearchCategoryCell
- (CarSearchCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setupWithBrowseCategory:(id)category;
- (void)setupWithIncidentLayoutItem:(id)item;
- (void)setupWithSavedPlaces;
@end

@implementation CarSearchCategoryCell

- (void)_setupConstraints
{
  heightAnchor = [(UIImageView *)self->_iconImageView heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:29.0];
  v26[0] = v24;
  widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:29.0];
  v26[1] = v22;
  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [(CarSearchCategoryCell *)self leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
  v26[2] = v19;
  centerYAnchor = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor2 = [(CarSearchCategoryCell *)self centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v26[3] = v16;
  leadingAnchor3 = [(UILabel *)self->_categoryLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  v26[4] = v13;
  topAnchor = [(UILabel *)self->_categoryLabel topAnchor];
  topAnchor2 = [(CarSearchCategoryCell *)self topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
  v26[5] = v5;
  bottomAnchor = [(UILabel *)self->_categoryLabel bottomAnchor];
  bottomAnchor2 = [(CarSearchCategoryCell *)self bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
  v26[6] = v8;
  trailingAnchor2 = [(UILabel *)self->_categoryLabel trailingAnchor];
  trailingAnchor3 = [(CarSearchCategoryCell *)self trailingAnchor];
  v11 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-6.0];
  v26[7] = v11;
  v12 = [NSArray arrayWithObjects:v26 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = CarSearchCategoryCell;
  [(CarSearchCategoryCell *)&v9 setHighlighted:highlighted animated:animated];
  if (highlighted)
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

- (void)setupWithIncidentLayoutItem:(id)item
{
  itemCopy = item;
  displayImage = [itemCopy displayImage];
  if (displayImage)
  {
    [(UIImageView *)self->_iconImageView setImage:displayImage];
  }

  else
  {
    v6 = [UIImage _mapsCar_systemImageNamed:@"exclamationmark.bubble.fill" pointSize:22.0];
    [(UIImageView *)self->_iconImageView setImage:v6];
  }

  displayText = [itemCopy displayText];

  [(UILabel *)self->_categoryLabel setText:displayText];
}

- (void)setupWithSavedPlaces
{
  v3 = [UIImage _mapsCar_systemImageNamed:@"rectangle.stack.fill" pointSize:22.0];
  [(UIImageView *)self->_iconImageView setImage:v3];

  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"CarPlay_Guides_List_Title" value:@"localized string not found" table:0];
  [(UILabel *)self->_categoryLabel setText:v4];
}

- (void)setupWithBrowseCategory:(id)category
{
  categoryCopy = category;
  v5 = +[NSUUID UUID];
  [(CarSearchCategoryCell *)self setUpdateIdentifier:v5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100FB2644;
  v12[3] = &unk_10165FED0;
  v6 = v5;
  v13 = v6;
  selfCopy = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FB26DC;
  v10[3] = &unk_10165FEF8;
  v7 = objc_retainBlock(v12);
  v11 = v7;
  [categoryCopy imageWithScale:1 isCarplay:v10 resultHandler:0.0];
  alternativeName = [categoryCopy alternativeName];
  if ([alternativeName length])
  {
    [categoryCopy alternativeName];
  }

  else
  {
    [categoryCopy name];
  }
  v9 = ;

  [(UILabel *)self->_categoryLabel setText:v9];
}

- (CarSearchCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = CarSearchCategoryCell;
  v4 = [(CarSearchCategoryCell *)&v22 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(CarSearchCategoryCell *)v4 contentView];
    [contentView addSubview:v4->_iconImageView];

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
    traitCollection = [(CarSearchCategoryCell *)v4 traitCollection];
    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v4->_categoryLabel setFont:v19];

    contentView2 = [(CarSearchCategoryCell *)v4 contentView];
    [contentView2 addSubview:v4->_categoryLabel];

    [(CarSearchCategoryCell *)v4 _setupConstraints];
  }

  return v4;
}

@end