@interface MacRAPTableViewFooterView
- (MacRAPTableViewFooterView)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation MacRAPTableViewFooterView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MacRAPTableViewFooterView;
  [(MacRAPTableViewFooterView *)&v3 prepareForReuse];
  [(UILabel *)self->_footerLabel setText:0];
}

- (MacRAPTableViewFooterView)initWithReuseIdentifier:(id)identifier
{
  v29.receiver = self;
  v29.super_class = MacRAPTableViewFooterView;
  v3 = [(MacRAPTableViewFooterView *)&v29 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    footerLabel = v3->_footerLabel;
    v3->_footerLabel = v4;

    [(UILabel *)v3->_footerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIFont system16];
    [(UILabel *)v3->_footerLabel setFont:v6];

    [(UILabel *)v3->_footerLabel setNumberOfLines:0];
    v7 = +[UIColor systemGrayColor];
    [(UILabel *)v3->_footerLabel setTextColor:v7];

    contentView = [(MacRAPTableViewFooterView *)v3 contentView];
    [contentView addSubview:v3->_footerLabel];

    leadingAnchor = [(UILabel *)v3->_footerLabel leadingAnchor];
    contentView2 = [(MacRAPTableViewFooterView *)v3 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
    v30[0] = v25;
    trailingAnchor = [(UILabel *)v3->_footerLabel trailingAnchor];
    contentView3 = [(MacRAPTableViewFooterView *)v3 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
    v30[1] = v21;
    topAnchor = [(UILabel *)v3->_footerLabel topAnchor];
    contentView4 = [(MacRAPTableViewFooterView *)v3 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
    v30[2] = v12;
    bottomAnchor = [(UILabel *)v3->_footerLabel bottomAnchor];
    contentView5 = [(MacRAPTableViewFooterView *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-18.0];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = +[UIColor systemBackgroundColor];
    contentView6 = [(MacRAPTableViewFooterView *)v3 contentView];
    [contentView6 setBackgroundColor:v18];
  }

  return v3;
}

@end