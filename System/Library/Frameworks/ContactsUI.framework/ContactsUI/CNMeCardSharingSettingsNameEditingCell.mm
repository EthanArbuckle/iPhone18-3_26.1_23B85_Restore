@interface CNMeCardSharingSettingsNameEditingCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTextField:(id)field;
@end

@implementation CNMeCardSharingSettingsNameEditingCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharingSettingsNameEditingCell;
  [(CNMeCardSharingSettingsNameEditingCell *)&v4 prepareForReuse];
  [(UITextField *)self->_textField removeFromSuperview];
  textField = self->_textField;
  self->_textField = 0;
}

- (void)setTextField:(id)field
{
  fieldCopy = field;
  textField = self->_textField;
  v10 = fieldCopy;
  if (textField != fieldCopy)
  {
    superview = [(UITextField *)textField superview];
    contentView = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];

    if (superview == contentView)
    {
      [(UITextField *)self->_textField removeFromSuperview];
    }

    objc_storeStrong(&self->_textField, field);
    contentView2 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
    [contentView2 addSubview:self->_textField];
  }

  [(CNMeCardSharingSettingsNameEditingCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CNMeCardSharingSettingsNameEditingCell;
  [(CNMeCardSharingSettingsNameEditingCell *)&v15 layoutSubviews];
  contentView = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;
  contentView2 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [contentView2 bounds];
  Width = CGRectGetWidth(v16);
  contentView3 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [contentView3 layoutMargins];
  v10 = v9;
  contentView4 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [contentView4 layoutMargins];
  v13 = Width - (v10 + v12);
  contentView5 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [contentView5 bounds];
  [(UITextField *)self->_textField setFrame:v5, 0.0, v13, CGRectGetHeight(v17)];
}

@end