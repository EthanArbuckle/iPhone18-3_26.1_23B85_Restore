@interface NavCategoryCell
+ (double)heightForCellWithCategory:(id)category width:(double)width;
- (NavCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateContent;
- (void)prepareForReuse;
- (void)setCategory:(id)category;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation NavCategoryCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  backgroundConfiguration = [(NavCategoryCell *)self backgroundConfiguration];
  v5 = [backgroundConfiguration updatedConfigurationForState:stateCopy];

  traitCollection = [(NavCategoryCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (([stateCopy isHighlighted] & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    if (userInterfaceStyle == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemLightMidGrayColor];
    }
    v8 = ;
  }

  else
  {
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  v9 = v8;
  [v5 setBackgroundColor:v8];

  [(NavCategoryCell *)self setBackgroundConfiguration:v5];
}

- (void)_updateContent
{
  category = [(NavCategoryCell *)self category];
  shortDisplayString = [category shortDisplayString];
  [(UILabel *)self->_titleLabel setText:shortDisplayString];

  category2 = [(NavCategoryCell *)self category];

  if (category2)
  {
    category3 = [(NavCategoryCell *)self category];
    styleAttributes = [category3 styleAttributes];
    traitCollection = [(NavCategoryCell *)self traitCollection];
    [traitCollection displayScale];
    v9 = v8;
    traitCollection2 = [(NavCategoryCell *)self traitCollection];
    v11 = +[MKIconManager imageForStyle:size:forScale:format:transparent:transitMode:nightMode:](MKIconManager, "imageForStyle:size:forScale:format:transparent:transitMode:nightMode:", styleAttributes, 5, 1, 0, 0, [traitCollection2 userInterfaceStyle] == 2, v9);
    [(UIImageView *)self->_leadingImageView setImage:v11];
  }

  else
  {
    leadingImageView = self->_leadingImageView;

    [(UIImageView *)leadingImageView setImage:0];
  }
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  v6 = self->_category;
  v7 = categoryCopy;
  if (v7 | v6)
  {
    v9 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v9;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_category, category);
      [(NavCategoryCell *)self _updateContent];
      v7 = v9;
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = NavCategoryCell;
  [(NavCategoryCell *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(NavCategoryCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle == [changeCopy userInterfaceStyle])
  {
    traitCollection2 = [(NavCategoryCell *)self traitCollection];
    [traitCollection2 displayScale];
    v9 = v8;
    [changeCopy displayScale];
    v11 = v10;

    if (v9 == v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(NavCategoryCell *)self _updateContent];
  [(NavCategoryCell *)self setNeedsUpdateConfiguration];
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NavCategoryCell;
  [(NavCategoryCell *)&v3 prepareForReuse];
  [(NavCategoryCell *)self setCategory:0];
}

- (NavCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v50.receiver = self;
  v50.super_class = NavCategoryCell;
  v4 = [(NavCategoryCell *)&v50 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavCategoryCell *)v4 setAccessibilityIdentifier:v6];

    contentView = [(NavCategoryCell *)v4 contentView];
    [contentView setAccessibilityIdentifier:@"NavCategoryCellContent"];

    v49 = +[UIBackgroundConfiguration listCellConfiguration];
    [v49 setCornerRadius:10.0];
    [(NavCategoryCell *)v4 setBackgroundConfiguration:v49];
    v8 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v8;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_leadingImageView setContentMode:1];
    layer = [(UIImageView *)v4->_leadingImageView layer];
    [layer setCornerRadius:27.0];

    [(UIImageView *)v4->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
    contentView2 = [(NavCategoryCell *)v4 contentView];
    [contentView2 addSubview:v4->_leadingImageView];

    v12 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UILabel *)v4->_titleLabel setFont:v14];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    contentView3 = [(NavCategoryCell *)v4 contentView];
    [contentView3 addSubview:v4->_titleLabel];

    leadingAnchor = [(UIImageView *)v4->_leadingImageView leadingAnchor];
    contentView4 = [(NavCategoryCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v51[0] = v45;
    widthAnchor = [(UIImageView *)v4->_leadingImageView widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:54.0];
    v51[1] = v43;
    centerYAnchor = [(UIImageView *)v4->_leadingImageView centerYAnchor];
    contentView5 = [(NavCategoryCell *)v4 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v51[2] = v39;
    heightAnchor = [(UIImageView *)v4->_leadingImageView heightAnchor];
    v37 = [heightAnchor constraintEqualToConstant:54.0];
    v51[3] = v37;
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v4->_leadingImageView trailingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v51[4] = v34;
    trailingAnchor2 = [(UILabel *)v4->_titleLabel trailingAnchor];
    contentView6 = [(NavCategoryCell *)v4 contentView];
    trailingAnchor3 = [contentView6 trailingAnchor];
    v30 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v51[5] = v30;
    centerYAnchor3 = [(UILabel *)v4->_titleLabel centerYAnchor];
    contentView7 = [(NavCategoryCell *)v4 contentView];
    centerYAnchor4 = [contentView7 centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v51[6] = v26;
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    contentView8 = [(NavCategoryCell *)v4 contentView];
    topAnchor2 = [contentView8 topAnchor];
    v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v51[7] = v19;
    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    contentView9 = [(NavCategoryCell *)v4 contentView];
    bottomAnchor2 = [contentView9 bottomAnchor];
    v23 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v51[8] = v23;
    v24 = [NSArray arrayWithObjects:v51 count:9];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v4;
}

+ (double)heightForCellWithCategory:(id)category width:(double)width
{
  categoryCopy = category;
  v6 = [NSAttributedString alloc];
  shortDisplayString = [categoryCopy shortDisplayString];

  v17 = NSFontAttributeName;
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  v18 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v10 = [v6 initWithString:shortDisplayString attributes:v9];

  [v10 boundingRectWithSize:1 options:0 context:{width + -92.0, 1.79769313e308}];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v15 = 78.0;
  if (ceil(CGRectGetMaxY(v19)) > 78.0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15 = ceil(CGRectGetMaxY(v20));
  }

  return v15;
}

@end