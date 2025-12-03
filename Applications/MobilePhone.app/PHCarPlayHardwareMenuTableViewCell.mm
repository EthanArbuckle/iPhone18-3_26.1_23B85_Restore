@interface PHCarPlayHardwareMenuTableViewCell
- (PHCarPlayHardwareMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PHCarPlayHardwareMenuTableViewCell

- (PHCarPlayHardwareMenuTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = PHCarPlayHardwareMenuTableViewCell;
  v4 = [(PHCarPlayGenericTableViewCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v5;

    [(UILabel *)v4->_mainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [(UILabel *)v4->_mainLabel setFont:v7];

    v8 = +[UIColor dynamicLabelColor];
    [(UILabel *)v4->_mainLabel setTextColor:v8];

    v9 = +[UIColor blackColor];
    [(UILabel *)v4->_mainLabel setBackgroundColor:v9];

    v10 = +[UIColor whiteColor];
    [(UILabel *)v4->_mainLabel setHighlightedTextColor:v10];

    contentView = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_mainLabel];

    v12 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v12;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_iconImageView];

    v32[0] = @"mainLabel";
    mainLabel = [(PHCarPlayHardwareMenuTableViewCell *)v4 mainLabel];
    v32[1] = @"iconImage";
    v33[0] = mainLabel;
    iconImageView = [(PHCarPlayHardwareMenuTableViewCell *)v4 iconImageView];
    v33[1] = iconImageView;
    v17 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    contentView3 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-53-[mainLabel]", 0, 0, v17);
    [contentView3 addConstraints:v19];

    contentView4 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    mainLabel2 = [(PHCarPlayHardwareMenuTableViewCell *)v4 mainLabel];
    contentView5 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v23 = [NSLayoutConstraint constraintWithItem:mainLabel2 attribute:11 relatedBy:0 toItem:contentView5 attribute:3 multiplier:1.0 constant:28.5];
    [contentView4 addConstraint:v23];

    contentView6 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v25 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-22-[iconImage]", 0, 0, v17);
    [contentView6 addConstraints:v25];

    contentView7 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    iconImageView2 = [(PHCarPlayHardwareMenuTableViewCell *)v4 iconImageView];
    contentView8 = [(PHCarPlayHardwareMenuTableViewCell *)v4 contentView];
    v29 = [NSLayoutConstraint constraintWithItem:iconImageView2 attribute:10 relatedBy:0 toItem:contentView8 attribute:10 multiplier:1.0 constant:0.0];
    [contentView7 addConstraint:v29];

    [(PHCarPlayGenericTableViewCell *)v4 setShowsChevron:1];
  }

  return v4;
}

@end