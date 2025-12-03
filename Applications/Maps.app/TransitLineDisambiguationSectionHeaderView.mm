@interface TransitLineDisambiguationSectionHeaderView
- (TransitLineDisambiguationSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)setTitle:(id)title;
@end

@implementation TransitLineDisambiguationSectionHeaderView

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(UILabel *)self->_titleLabel setText:v4];
}

- (TransitLineDisambiguationSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = TransitLineDisambiguationSectionHeaderView;
  v3 = [(TransitLineDisambiguationSectionHeaderView *)&v23 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = +[UIFont system17];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(TransitLineDisambiguationSectionHeaderView *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];
    v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TransitLineDisambiguationSectionHeaderView *)v3 setBackgroundView:v8];

    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v24[0] = v20;
    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v24[1] = v9;
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v24[2] = v12;
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    v24[3] = v15;
    v16 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

@end