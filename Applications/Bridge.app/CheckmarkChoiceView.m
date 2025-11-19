@interface CheckmarkChoiceView
- (CheckmarkChoiceView)initWithTitle:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CheckmarkChoiceView

- (CheckmarkChoiceView)initWithTitle:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CheckmarkChoiceView;
  v5 = [(CheckmarkChoiceView *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    label = v5->_label;
    v5->_label = v6;

    [(UILabel *)v5->_label setText:v4];
    [(UILabel *)v5->_label setNumberOfLines:0];
    v8 = BPSTextColor();
    [(UILabel *)v5->_label setTextColor:v8];

    v9 = objc_alloc_init(UIImageView);
    checkmark = v5->_checkmark;
    v5->_checkmark = v9;

    [(UIImageView *)v5->_checkmark setContentMode:2];
    v11 = [(UIImageView *)v5->_checkmark layer];
    [v11 setCornerRadius:14.0];

    v12 = [(UIImageView *)v5->_checkmark layer];
    [v12 setMasksToBounds:1];

    v13 = +[UIColor clearColor];
    [(UIImageView *)v5->_checkmark setBackgroundColor:v13];

    v14 = [(UIImageView *)v5->_checkmark layer];
    [v14 setBorderWidth:1.0];

    v15 = +[UIColor systemGrayColor];
    v16 = [v15 CGColor];
    v17 = [(UIImageView *)v5->_checkmark layer];
    [v17 setBorderColor:v16];

    v18 = [(UIImageView *)v5->_checkmark heightAnchor];
    v19 = [v18 constraintEqualToConstant:28.0];
    [v19 setActive:1];

    v20 = [(UIImageView *)v5->_checkmark widthAnchor];
    v21 = [(UIImageView *)v5->_checkmark heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    [(CheckmarkChoiceView *)v5 setAxis:1];
    [(CheckmarkChoiceView *)v5 setAlignment:3];
    [(CheckmarkChoiceView *)v5 setSpacing:4.0];
    [(CheckmarkChoiceView *)v5 addArrangedSubview:v5->_label];
    [(CheckmarkChoiceView *)v5 addArrangedSubview:v5->_checkmark];
  }

  return v5;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIImageView *)self->_checkmark layer];
  v6 = v5;
  if (v3)
  {
    [v5 setBorderWidth:0.0];

    v7 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)self->_checkmark setImage:v7];
  }

  else
  {
    [v5 setBorderWidth:1.0];

    [(UIImageView *)self->_checkmark setImage:0];
  }

  checkmark = self->_checkmark;

  [(UIImageView *)checkmark layoutIfNeeded];
}

@end