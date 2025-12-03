@interface MacRAPHeaderView
- (MacRAPHeaderView)init;
- (MacRAPHeaderView)initWithSearchBar:(id)bar;
- (void)setTitle:(id)title;
@end

@implementation MacRAPHeaderView

- (MacRAPHeaderView)initWithSearchBar:(id)bar
{
  barCopy = bar;
  v5 = [(MacRAPHeaderView *)self init];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5->_contentView addSubview:barCopy];
    [barCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSLayoutConstraint *)v6->_bottomConstraint setActive:0];
    bottomAnchor = [barCopy bottomAnchor];
    bottomAnchor2 = [(UIView *)v6->_contentView bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    bottomConstraint = v6->_bottomConstraint;
    v6->_bottomConstraint = v9;

    leadingAnchor = [barCopy leadingAnchor];
    leadingAnchor2 = [(UIView *)v6->_contentView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v24[0] = v21;
    trailingAnchor = [barCopy trailingAnchor];
    trailingAnchor2 = [(UIView *)v6->_contentView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v24[1] = v12;
    topAnchor = [barCopy topAnchor];
    bottomAnchor3 = [(UILabel *)v6->_headerViewLabel bottomAnchor];
    v15 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:24.0];
    v24[2] = v15;
    heightAnchor = [barCopy heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:35.0];
    v24[3] = v17;
    v24[4] = v6->_bottomConstraint;
    v18 = [NSArray arrayWithObjects:v24 count:5];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v6;
}

- (MacRAPHeaderView)init
{
  v37.receiver = self;
  v37.super_class = MacRAPHeaderView;
  v2 = [(MacRAPHeaderView *)&v37 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIView);
    contentView = v2->_contentView;
    v2->_contentView = v3;
    v5 = v3;

    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MacRAPHeaderView *)v2 addSubview:v5];
    leadingAnchor = [(UIView *)v5 leadingAnchor];
    leadingAnchor2 = [(MacRAPHeaderView *)v2 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v31;
    trailingAnchor = [(UIView *)v5 trailingAnchor];
    trailingAnchor2 = [(MacRAPHeaderView *)v2 trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v6;
    topAnchor = [(UIView *)v5 topAnchor];
    topAnchor2 = [(MacRAPHeaderView *)v2 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v9;
    bottomAnchor = [(UIView *)v5 bottomAnchor];
    bottomAnchor2 = [(MacRAPHeaderView *)v2 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v12;
    v13 = [NSArray arrayWithObjects:v39 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = objc_alloc_init(UILabel);
    headerViewLabel = v2->_headerViewLabel;
    v2->_headerViewLabel = v14;

    [(UILabel *)v2->_headerViewLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIFont system22Bold];
    [(UILabel *)v2->_headerViewLabel setFont:v16];

    [(UIView *)v5 addSubview:v2->_headerViewLabel];
    bottomAnchor3 = [(UILabel *)v2->_headerViewLabel bottomAnchor];
    bottomAnchor4 = [(UIView *)v5 bottomAnchor];
    v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
    bottomConstraint = v2->_bottomConstraint;
    v2->_bottomConstraint = v19;

    leadingAnchor3 = [(UILabel *)v2->_headerViewLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v5 leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v38[0] = v32;
    trailingAnchor3 = [(UILabel *)v2->_headerViewLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v5 trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v38[1] = v23;
    topAnchor3 = [(UILabel *)v2->_headerViewLabel topAnchor];
    topAnchor4 = [(UIView *)v5 topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:24.0];
    v38[2] = v26;
    v38[3] = v2->_bottomConstraint;
    v27 = [NSArray arrayWithObjects:v38 count:4];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v2;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(UILabel *)self->_headerViewLabel setText:v6];
    titleCopy = v6;
  }
}

@end