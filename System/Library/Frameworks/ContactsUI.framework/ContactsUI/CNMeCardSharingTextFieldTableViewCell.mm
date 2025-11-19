@interface CNMeCardSharingTextFieldTableViewCell
- (void)layoutSubviews;
- (void)setTextField:(id)a3;
@end

@implementation CNMeCardSharingTextFieldTableViewCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CNMeCardSharingTextFieldTableViewCell;
  [(CNMeCardSharingTextFieldTableViewCell *)&v12 layoutSubviews];
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v4 = v3;
  v5 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
  [v5 bounds];
  Width = CGRectGetWidth(v13);
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v8 = v7;
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v10 = Width - (v8 + v9);
  v11 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
  [v11 bounds];
  [(UITextField *)self->_textField setFrame:v4, 0.0, v10, CGRectGetHeight(v14)];
}

- (void)setTextField:(id)a3
{
  v5 = a3;
  textField = self->_textField;
  if (textField != v5)
  {
    v7 = [(UITextField *)textField superview];
    v8 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];

    if (v7 != v8)
    {
      [(UITextField *)self->_textField removeFromSuperview];
    }

    objc_storeStrong(&self->_textField, a3);
    v9 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
    [v9 addSubview:self->_textField];
  }

  MEMORY[0x1EEE66BB8]();
}

@end