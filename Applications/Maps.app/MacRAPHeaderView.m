@interface MacRAPHeaderView
- (MacRAPHeaderView)init;
- (MacRAPHeaderView)initWithSearchBar:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MacRAPHeaderView

- (MacRAPHeaderView)initWithSearchBar:(id)a3
{
  v4 = a3;
  v5 = [(MacRAPHeaderView *)self init];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5->_contentView addSubview:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSLayoutConstraint *)v6->_bottomConstraint setActive:0];
    v7 = [v4 bottomAnchor];
    v8 = [(UIView *)v6->_contentView bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-10.0];
    bottomConstraint = v6->_bottomConstraint;
    v6->_bottomConstraint = v9;

    v23 = [v4 leadingAnchor];
    v22 = [(UIView *)v6->_contentView leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:16.0];
    v24[0] = v21;
    v20 = [v4 trailingAnchor];
    v11 = [(UIView *)v6->_contentView trailingAnchor];
    v12 = [v20 constraintEqualToAnchor:v11 constant:-16.0];
    v24[1] = v12;
    v13 = [v4 topAnchor];
    v14 = [(UILabel *)v6->_headerViewLabel bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:24.0];
    v24[2] = v15;
    v16 = [v4 heightAnchor];
    v17 = [v16 constraintEqualToConstant:35.0];
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
    v35 = [(UIView *)v5 leadingAnchor];
    v33 = [(MacRAPHeaderView *)v2 leadingAnchor];
    v31 = [v35 constraintEqualToAnchor:v33];
    v39[0] = v31;
    v30 = [(UIView *)v5 trailingAnchor];
    v29 = [(MacRAPHeaderView *)v2 trailingAnchor];
    v6 = [v30 constraintEqualToAnchor:v29];
    v39[1] = v6;
    v7 = [(UIView *)v5 topAnchor];
    v8 = [(MacRAPHeaderView *)v2 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v39[2] = v9;
    v10 = [(UIView *)v5 bottomAnchor];
    v11 = [(MacRAPHeaderView *)v2 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
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
    v17 = [(UILabel *)v2->_headerViewLabel bottomAnchor];
    v18 = [(UIView *)v5 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
    bottomConstraint = v2->_bottomConstraint;
    v2->_bottomConstraint = v19;

    v36 = [(UILabel *)v2->_headerViewLabel leadingAnchor];
    v34 = [(UIView *)v5 leadingAnchor];
    v32 = [v36 constraintEqualToAnchor:v34 constant:16.0];
    v38[0] = v32;
    v21 = [(UILabel *)v2->_headerViewLabel trailingAnchor];
    v22 = [(UIView *)v5 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-16.0];
    v38[1] = v23;
    v24 = [(UILabel *)v2->_headerViewLabel topAnchor];
    v25 = [(UIView *)v5 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:24.0];
    v38[2] = v26;
    v38[3] = v2->_bottomConstraint;
    v27 = [NSArray arrayWithObjects:v38 count:4];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->_title != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_title, a3);
    [(UILabel *)self->_headerViewLabel setText:v6];
    v5 = v6;
  }
}

@end