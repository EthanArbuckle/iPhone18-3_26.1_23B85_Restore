@interface CheckmarkChoiceView
- (CheckmarkChoiceView)initWithTitle:(id)title;
- (void)setSelected:(BOOL)selected;
@end

@implementation CheckmarkChoiceView

- (CheckmarkChoiceView)initWithTitle:(id)title
{
  titleCopy = title;
  v24.receiver = self;
  v24.super_class = CheckmarkChoiceView;
  v5 = [(CheckmarkChoiceView *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    label = v5->_label;
    v5->_label = v6;

    [(UILabel *)v5->_label setText:titleCopy];
    [(UILabel *)v5->_label setNumberOfLines:0];
    v8 = BPSTextColor();
    [(UILabel *)v5->_label setTextColor:v8];

    v9 = objc_alloc_init(UIImageView);
    checkmark = v5->_checkmark;
    v5->_checkmark = v9;

    [(UIImageView *)v5->_checkmark setContentMode:2];
    layer = [(UIImageView *)v5->_checkmark layer];
    [layer setCornerRadius:14.0];

    layer2 = [(UIImageView *)v5->_checkmark layer];
    [layer2 setMasksToBounds:1];

    v13 = +[UIColor clearColor];
    [(UIImageView *)v5->_checkmark setBackgroundColor:v13];

    layer3 = [(UIImageView *)v5->_checkmark layer];
    [layer3 setBorderWidth:1.0];

    v15 = +[UIColor systemGrayColor];
    cGColor = [v15 CGColor];
    layer4 = [(UIImageView *)v5->_checkmark layer];
    [layer4 setBorderColor:cGColor];

    heightAnchor = [(UIImageView *)v5->_checkmark heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:28.0];
    [v19 setActive:1];

    widthAnchor = [(UIImageView *)v5->_checkmark widthAnchor];
    heightAnchor2 = [(UIImageView *)v5->_checkmark heightAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    [v22 setActive:1];

    [(CheckmarkChoiceView *)v5 setAxis:1];
    [(CheckmarkChoiceView *)v5 setAlignment:3];
    [(CheckmarkChoiceView *)v5 setSpacing:4.0];
    [(CheckmarkChoiceView *)v5 addArrangedSubview:v5->_label];
    [(CheckmarkChoiceView *)v5 addArrangedSubview:v5->_checkmark];
  }

  return v5;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  layer = [(UIImageView *)self->_checkmark layer];
  v6 = layer;
  if (selectedCopy)
  {
    [layer setBorderWidth:0.0];

    v7 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)self->_checkmark setImage:v7];
  }

  else
  {
    [layer setBorderWidth:1.0];

    [(UIImageView *)self->_checkmark setImage:0];
  }

  checkmark = self->_checkmark;

  [(UIImageView *)checkmark layoutIfNeeded];
}

@end