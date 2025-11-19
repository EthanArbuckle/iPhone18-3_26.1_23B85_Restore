@interface SimpleContaineeFooterView
- (SimpleContaineeFooterView)initWithReuseIdentifier:(id)a3;
- (void)setText:(id)a3;
@end

@implementation SimpleContaineeFooterView

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  [(UILabel *)self->_label setText:v4];
}

- (SimpleContaineeFooterView)initWithReuseIdentifier:(id)a3
{
  v21.receiver = self;
  v21.super_class = SimpleContaineeFooterView;
  v3 = [(SimpleContaineeFooterView *)&v21 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_label setFont:v6];

    v7 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:v7];

    v8 = +[UIColor clearColor];
    [(UILabel *)v3->_label setBackgroundColor:v8];

    LODWORD(v9) = 1148846080;
    [(UILabel *)v3->_label setContentCompressionResistancePriority:1 forAxis:v9];
    v10 = [(SimpleContaineeFooterView *)v3 contentView];
    [v10 addSubview:v3->_label];

    v11 = +[UIBackgroundConfiguration clearConfiguration];
    [(SimpleContaineeFooterView *)v3 setBackgroundConfiguration:v11];

    v12 = sub_10000FA08(v3);
    if (v12 == 5)
    {
      v13 = 4.0;
    }

    else
    {
      v13 = 16.0;
    }

    if (v12 == 5)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 16.0;
    }

    v15 = v3->_label;
    v16 = [(SimpleContaineeFooterView *)v3 contentView];
    LODWORD(v17) = 1148846080;
    v18 = [(UILabel *)v15 _maps_constraintsEqualToEdgesOfView:v16 insets:v13 priority:v14, 0.0, v14, v17];
    v19 = [v18 allConstraints];
    [NSLayoutConstraint activateConstraints:v19];
  }

  return v3;
}

@end