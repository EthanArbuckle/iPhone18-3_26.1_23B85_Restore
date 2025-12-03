@interface SettingsProfileCell
- (SettingsProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SettingsProfileCell

- (SettingsProfileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v55.receiver = self;
  v55.super_class = SettingsProfileCell;
  v4 = [(SettingsProfileCell *)&v55 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SettingsProfileCell *)v4 contentView];
    v7 = objc_alloc_init(UIImageView);
    imageView = v5->_imageView;
    v5->_imageView = v7;

    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_imageView setContentMode:4];
    [contentView addSubview:v5->_imageView];
    v9 = objc_alloc_init(UILabel);
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)v5->_textLabel setFont:v11];

    v12 = objc_alloc_init(UILabel);
    detailTextLabel = v5->_detailTextLabel;
    v5->_detailTextLabel = v12;

    [(UILabel *)v5->_detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v5->_detailTextLabel setFont:v14];

    v15 = [UIStackView alloc];
    v57[0] = v5->_textLabel;
    v57[1] = v5->_detailTextLabel;
    v16 = [NSArray arrayWithObjects:v57 count:2];
    v17 = [v15 initWithArrangedSubviews:v16];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setAxis:1];
    v18 = v17;
    [contentView addSubview:v17];
    widthAnchor = [(UIImageView *)v5->_imageView widthAnchor];
    v53 = [widthAnchor constraintEqualToConstant:38.0];
    v56[0] = v53;
    heightAnchor = [(UIImageView *)v5->_imageView heightAnchor];
    v51 = [heightAnchor constraintEqualToConstant:38.0];
    v56[1] = v51;
    leadingAnchor = [(UIImageView *)v5->_imageView leadingAnchor];
    v19 = contentView;
    leadingAnchor2 = [contentView leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
    v56[2] = v48;
    centerYAnchor = [(UIImageView *)v5->_imageView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v56[3] = v45;
    topAnchor = [(UIImageView *)v5->_imageView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:5.0];
    v56[4] = v42;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v5->_imageView bottomAnchor];
    v39 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:5.0];
    v56[5] = v39;
    leadingAnchor3 = [v18 leadingAnchor];
    trailingAnchor = [(UIImageView *)v5->_imageView trailingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v56[6] = v35;
    topAnchor3 = [v18 topAnchor];
    topAnchor4 = [contentView topAnchor];
    v32 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:5.0];
    v56[7] = v32;
    centerYAnchor3 = [v18 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v20 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v56[8] = v20;
    trailingAnchor2 = [v19 trailingAnchor];
    v22 = v18;
    v37 = v18;
    trailingAnchor3 = [v18 trailingAnchor];
    v24 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:17.0];
    v56[9] = v24;
    bottomAnchor3 = [v19 bottomAnchor];
    bottomAnchor4 = [v22 bottomAnchor];
    v27 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:5.0];
    v56[10] = v27;
    v28 = [NSArray arrayWithObjects:v56 count:11];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v5;
}

@end