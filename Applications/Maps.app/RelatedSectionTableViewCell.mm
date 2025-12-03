@interface RelatedSectionTableViewCell
+ (id)accessibilityIdentifier;
+ (id)identifier;
- (RelatedSectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureSection;
- (void)prepareForReuse;
- (void)setSectionName:(id)name;
@end

@implementation RelatedSectionTableViewCell

- (void)setSectionName:(id)name
{
  objc_storeStrong(&self->_sectionName, name);
  nameCopy = name;
  [(MKVibrantLabel *)self->_sectionNameLabel setText:nameCopy];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = RelatedSectionTableViewCell;
  [(RelatedSectionTableViewCell *)&v4 prepareForReuse];
  sectionNameLabel = [(RelatedSectionTableViewCell *)self sectionNameLabel];
  [sectionNameLabel setText:0];

  [(RelatedSectionTableViewCell *)self setSectionName:0];
}

- (void)configureSection
{
  v3 = [[MKVibrantLabel alloc] initWithStyle:1];
  sectionNameLabel = self->_sectionNameLabel;
  self->_sectionNameLabel = v3;

  v5 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  [(MKVibrantLabel *)self->_sectionNameLabel setFont:v5];

  [(MKVibrantLabel *)self->_sectionNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RelatedSectionTableViewCell *)self setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(RelatedSectionTableViewCell *)self _setShouldHaveFullLengthBottomSeparator:1];
  contentView = [(RelatedSectionTableViewCell *)self contentView];
  [contentView addSubview:self->_sectionNameLabel];

  leadingAnchor = [(MKVibrantLabel *)self->_sectionNameLabel leadingAnchor];
  contentView2 = [(RelatedSectionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v24[0] = v20;
  trailingAnchor = [(MKVibrantLabel *)self->_sectionNameLabel trailingAnchor];
  contentView3 = [(RelatedSectionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v7;
  topAnchor = [(MKVibrantLabel *)self->_sectionNameLabel topAnchor];
  contentView4 = [(RelatedSectionTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v24[2] = v11;
  bottomAnchor = [(MKVibrantLabel *)self->_sectionNameLabel bottomAnchor];
  contentView5 = [(RelatedSectionTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (RelatedSectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = RelatedSectionTableViewCell;
  v4 = [(RelatedSectionTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RelatedSectionTableViewCell *)v4 configureSection];
  }

  return v5;
}

+ (id)accessibilityIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@%@", v3, @"Accessibility"];

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end