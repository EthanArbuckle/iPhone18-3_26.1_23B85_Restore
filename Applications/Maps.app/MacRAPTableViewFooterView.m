@interface MacRAPTableViewFooterView
- (MacRAPTableViewFooterView)initWithReuseIdentifier:(id)a3;
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

- (MacRAPTableViewFooterView)initWithReuseIdentifier:(id)a3
{
  v29.receiver = self;
  v29.super_class = MacRAPTableViewFooterView;
  v3 = [(MacRAPTableViewFooterView *)&v29 initWithReuseIdentifier:a3];
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

    v8 = [(MacRAPTableViewFooterView *)v3 contentView];
    [v8 addSubview:v3->_footerLabel];

    v27 = [(UILabel *)v3->_footerLabel leadingAnchor];
    v28 = [(MacRAPTableViewFooterView *)v3 contentView];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:30.0];
    v30[0] = v25;
    v23 = [(UILabel *)v3->_footerLabel trailingAnchor];
    v24 = [(MacRAPTableViewFooterView *)v3 contentView];
    v22 = [v24 trailingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:-30.0];
    v30[1] = v21;
    v9 = [(UILabel *)v3->_footerLabel topAnchor];
    v10 = [(MacRAPTableViewFooterView *)v3 contentView];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintEqualToAnchor:v11 constant:18.0];
    v30[2] = v12;
    v13 = [(UILabel *)v3->_footerLabel bottomAnchor];
    v14 = [(MacRAPTableViewFooterView *)v3 contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:-18.0];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v18 = +[UIColor systemBackgroundColor];
    v19 = [(MacRAPTableViewFooterView *)v3 contentView];
    [v19 setBackgroundColor:v18];
  }

  return v3;
}

@end