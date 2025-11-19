@interface TransitLineDisambiguationSectionHeaderView
- (TransitLineDisambiguationSectionHeaderView)initWithReuseIdentifier:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation TransitLineDisambiguationSectionHeaderView

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  [(UILabel *)self->_titleLabel setText:v4];
}

- (TransitLineDisambiguationSectionHeaderView)initWithReuseIdentifier:(id)a3
{
  v23.receiver = self;
  v23.super_class = TransitLineDisambiguationSectionHeaderView;
  v3 = [(TransitLineDisambiguationSectionHeaderView *)&v23 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = +[UIFont system17];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(TransitLineDisambiguationSectionHeaderView *)v3 contentView];
    [v7 addSubview:v3->_titleLabel];
    v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TransitLineDisambiguationSectionHeaderView *)v3 setBackgroundView:v8];

    v22 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v21 = [v7 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21 constant:16.0];
    v24[0] = v20;
    v19 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v18 = [v7 trailingAnchor];
    v9 = [v19 constraintEqualToAnchor:v18 constant:-16.0];
    v24[1] = v9;
    v10 = [(UILabel *)v3->_titleLabel topAnchor];
    v11 = [v7 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:8.0];
    v24[2] = v12;
    v13 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v14 = [v7 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-8.0];
    v24[3] = v15;
    v16 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

@end