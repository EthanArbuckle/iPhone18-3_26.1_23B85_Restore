@interface IncidentsCell
+ (id)reuseIdentifier;
- (IncidentsCell)initWithFrame:(CGRect)frame;
- (NSString)title;
- (void)_setupSubviews;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation IncidentsCell

- (NSString)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if (self->_icon != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_icon, icon);
    [(UIImageView *)self->_iconImageView setImage:v6];
    iconCopy = v6;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_subtitle != subtitleCopy)
  {
    v6 = subtitleCopy;
    objc_storeStrong(&self->_subtitle, subtitle);
    [(UILabel *)self->_subtitleLabel setText:v6];
    subtitleCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  obj = title;
  WeakRetained = objc_loadWeakRetained(&self->_title);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_title, obj);
    [(UILabel *)self->_titleLabel setText:obj];
  }
}

- (void)_setupSubviews
{
  contentView = [(IncidentsCell *)self contentView];
  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v10];

  [contentView addSubview:self->_titleLabel];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v11;

  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_subtitleLabel setFont:v13];

  v14 = +[UIColor systemGrayColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v14];

  [contentView addSubview:self->_subtitleLabel];
  v15 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v15;

  [(UIImageView *)self->_iconImageView setAccessibilityIdentifier:@"IconImageView"];
  layer = [(UIImageView *)self->_iconImageView layer];
  [layer setCornerRadius:15.0];

  [(UIImageView *)self->_iconImageView setClipsToBounds:1];
  [(UIImageView *)self->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_iconImageView];
  heightAnchor = [contentView heightAnchor];
  v47 = [heightAnchor constraintEqualToConstant:52.0];
  v49[0] = v47;
  widthAnchor = [(UIImageView *)self->_iconImageView widthAnchor];
  v45 = [widthAnchor constraintEqualToConstant:30.0];
  v49[1] = v45;
  heightAnchor2 = [(UIImageView *)self->_iconImageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_iconImageView widthAnchor];
  v42 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];
  v49[2] = v42;
  leadingAnchor = [(UIImageView *)self->_iconImageView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v49[3] = v39;
  centerYAnchor = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[4] = v36;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconImageView trailingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v49[5] = v33;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor4 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  v49[6] = v29;
  centerYAnchor3 = [(UILabel *)self->_titleLabel centerYAnchor];
  v19 = contentView;
  centerYAnchor4 = [contentView centerYAnchor];
  v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v49[7] = v21;
  trailingAnchor3 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v32 = v19;
  trailingAnchor4 = [v19 trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v49[8] = v24;
  centerYAnchor5 = [(UILabel *)self->_subtitleLabel centerYAnchor];
  centerYAnchor6 = [v19 centerYAnchor];
  v27 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v49[9] = v27;
  v28 = [NSArray arrayWithObjects:v49 count:10];
  [NSLayoutConstraint activateConstraints:v28];
}

- (IncidentsCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = IncidentsCell;
  v3 = [(IncidentsCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(IncidentsCell *)v3 setAccessibilityIdentifier:v5];

    [(IncidentsCell *)v3 _setupSubviews];
  }

  return v3;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end