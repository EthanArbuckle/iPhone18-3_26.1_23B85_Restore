@interface HOLocationTableViewCell
- (HOLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)titleText;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setShowLocationIcon:(BOOL)icon;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
@end

@implementation HOLocationTableViewCell

- (HOLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = HOLocationTableViewCell;
  v4 = [(HOLocationTableViewCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_titleLabel setFont:v7];

    contentView = [(HOLocationTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v4->_disabled = 0;
    v9 = +[NSMutableArray array];
    contentView2 = [(HOLocationTableViewCell *)v4 contentView];
    heightAnchor = [contentView2 heightAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];

    LODWORD(v13) = 1144750080;
    [v12 setPriority:v13];
    [v9 addObject:v12];
    centerYAnchor = [(UILabel *)v4->_titleLabel centerYAnchor];
    contentView3 = [(HOLocationTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v9 addObject:v18];

    heightAnchor2 = [(UILabel *)v4->_titleLabel heightAnchor];
    contentView4 = [(HOLocationTableViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    heightAnchor3 = [layoutMarginsGuide2 heightAnchor];
    v23 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3];
    [v9 addObject:v23];

    [NSLayoutConstraint activateConstraints:v9];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HOLocationTableViewCell;
  [(HOLocationTableViewCell *)&v3 prepareForReuse];
  [(HOLocationTableViewCell *)self setAccessoryView:0];
  [(HOLocationTableViewCell *)self setShowLocationIcon:0];
  [(HOLocationTableViewCell *)self setDisabled:0];
}

- (NSString)titleText
{
  titleLabel = [(HOLocationTableViewCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HOLocationTableViewCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (void)setDisabled:(BOOL)disabled
{
  self->_disabled = disabled;
  if (disabled)
  {
    +[UIColor systemGrayColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v5 = ;
  titleLabel = [(HOLocationTableViewCell *)self titleLabel];
  [titleLabel setTextColor:v5];
}

- (void)setShowLocationIcon:(BOOL)icon
{
  iconCopy = icon;
  locationIcon = [(HOLocationTableViewCell *)self locationIcon];
  v6 = locationIcon;
  if (iconCopy)
  {

    if (!v6)
    {
      v7 = [UIImageView alloc];
      v8 = +[UIImage hu_locationArrowTemplate];
      v9 = [v7 initWithImage:v8];
      [(HOLocationTableViewCell *)self setLocationIcon:v9];

      v10 = +[UIColor systemLightGrayColor];
      locationIcon2 = [(HOLocationTableViewCell *)self locationIcon];
      [locationIcon2 setTintColor:v10];

      locationIcon3 = [(HOLocationTableViewCell *)self locationIcon];
      [locationIcon3 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    contentView = [(HOLocationTableViewCell *)self contentView];
    locationIcon4 = [(HOLocationTableViewCell *)self locationIcon];
    [contentView addSubview:locationIcon4];

    v28 = +[NSMutableArray array];
    locationIcon5 = [(HOLocationTableViewCell *)self locationIcon];
    widthAnchor = [locationIcon5 widthAnchor];
    v17 = [widthAnchor constraintEqualToConstant:20.0];
    [v28 addObject:v17];

    locationIcon6 = [(HOLocationTableViewCell *)self locationIcon];
    heightAnchor = [locationIcon6 heightAnchor];
    locationIcon7 = [(HOLocationTableViewCell *)self locationIcon];
    widthAnchor2 = [locationIcon7 widthAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v28 addObject:v22];

    locationIcon8 = [(HOLocationTableViewCell *)self locationIcon];
    centerYAnchor = [locationIcon8 centerYAnchor];
    contentView2 = [(HOLocationTableViewCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v28 addObject:v27];

    [NSLayoutConstraint activateConstraints:v28];
    [(HOLocationTableViewCell *)self setNeedsUpdateConstraints];
  }

  else
  {
    [locationIcon removeFromSuperview];

    [(HOLocationTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v3 = +[NSMutableArray array];
  horizontalConstraints = [(HOLocationTableViewCell *)self horizontalConstraints];
  [NSLayoutConstraint deactivateConstraints:horizontalConstraints];

  titleLabel = [(HOLocationTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  contentView = [(HOLocationTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v3 addObject:v10];

  locationIcon = [(HOLocationTableViewCell *)self locationIcon];
  if (!locationIcon)
  {
    goto LABEL_4;
  }

  v12 = locationIcon;
  locationIcon2 = [(HOLocationTableViewCell *)self locationIcon];
  contentView2 = [(HOLocationTableViewCell *)self contentView];
  v15 = [locationIcon2 isDescendantOfView:contentView2];

  if (v15)
  {
    locationIcon3 = [(HOLocationTableViewCell *)self locationIcon];
    leadingAnchor3 = [locationIcon3 leadingAnchor];
    titleLabel2 = [(HOLocationTableViewCell *)self titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:20.0];
    [v3 addObject:v20];

    locationIcon4 = [(HOLocationTableViewCell *)self locationIcon];
  }

  else
  {
LABEL_4:
    locationIcon4 = [(HOLocationTableViewCell *)self titleLabel];
  }

  v22 = locationIcon4;
  trailingAnchor2 = [locationIcon4 trailingAnchor];
  contentView3 = [(HOLocationTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v3 addObject:v27];

  [(HOLocationTableViewCell *)self setHorizontalConstraints:v3];
  horizontalConstraints2 = [(HOLocationTableViewCell *)self horizontalConstraints];
  [NSLayoutConstraint activateConstraints:horizontalConstraints2];

  v29.receiver = self;
  v29.super_class = HOLocationTableViewCell;
  [(HOLocationTableViewCell *)&v29 updateConstraints];
}

@end