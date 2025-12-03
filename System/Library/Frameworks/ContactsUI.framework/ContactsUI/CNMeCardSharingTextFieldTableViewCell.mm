@interface CNMeCardSharingTextFieldTableViewCell
- (void)layoutSubviews;
- (void)setTextField:(id)field;
@end

@implementation CNMeCardSharingTextFieldTableViewCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CNMeCardSharingTextFieldTableViewCell;
  [(CNMeCardSharingTextFieldTableViewCell *)&v12 layoutSubviews];
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v4 = v3;
  contentView = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v13);
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v8 = v7;
  [(CNMeCardSharingTextFieldTableViewCell *)self directionalLayoutMargins];
  v10 = Width - (v8 + v9);
  contentView2 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
  [contentView2 bounds];
  [(UITextField *)self->_textField setFrame:v4, 0.0, v10, CGRectGetHeight(v14)];
}

- (void)setTextField:(id)field
{
  fieldCopy = field;
  textField = self->_textField;
  if (textField != fieldCopy)
  {
    superview = [(UITextField *)textField superview];
    contentView = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];

    if (superview != contentView)
    {
      [(UITextField *)self->_textField removeFromSuperview];
    }

    objc_storeStrong(&self->_textField, field);
    contentView2 = [(CNMeCardSharingTextFieldTableViewCell *)self contentView];
    [contentView2 addSubview:self->_textField];
  }

  MEMORY[0x1EEE66BB8]();
}

@end