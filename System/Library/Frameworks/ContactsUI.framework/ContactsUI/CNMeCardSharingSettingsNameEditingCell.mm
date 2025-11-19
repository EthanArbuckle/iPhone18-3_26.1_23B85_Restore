@interface CNMeCardSharingSettingsNameEditingCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTextField:(id)a3;
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

- (void)setTextField:(id)a3
{
  v5 = a3;
  textField = self->_textField;
  v10 = v5;
  if (textField != v5)
  {
    v7 = [(UITextField *)textField superview];
    v8 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];

    if (v7 == v8)
    {
      [(UITextField *)self->_textField removeFromSuperview];
    }

    objc_storeStrong(&self->_textField, a3);
    v9 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
    [v9 addSubview:self->_textField];
  }

  [(CNMeCardSharingSettingsNameEditingCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CNMeCardSharingSettingsNameEditingCell;
  [(CNMeCardSharingSettingsNameEditingCell *)&v15 layoutSubviews];
  v3 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [v3 layoutMargins];
  v5 = v4;
  v6 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [v6 bounds];
  Width = CGRectGetWidth(v16);
  v8 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [v8 layoutMargins];
  v10 = v9;
  v11 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [v11 layoutMargins];
  v13 = Width - (v10 + v12);
  v14 = [(CNMeCardSharingSettingsNameEditingCell *)self contentView];
  [v14 bounds];
  [(UITextField *)self->_textField setFrame:v5, 0.0, v13, CGRectGetHeight(v17)];
}

@end