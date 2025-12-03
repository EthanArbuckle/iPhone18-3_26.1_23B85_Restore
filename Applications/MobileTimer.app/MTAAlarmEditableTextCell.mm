@interface MTAAlarmEditableTextCell
- (BOOL)textFieldShouldReturn:(id)return;
- (MTAAlarmEditableTextCell)initWithText:(id)text autoCapsType:(int64_t)type;
- (void)layoutSubviews;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation MTAAlarmEditableTextCell

- (MTAAlarmEditableTextCell)initWithText:(id)text autoCapsType:(int64_t)type
{
  textCopy = text;
  v22.receiver = self;
  v22.super_class = MTAAlarmEditableTextCell;
  v7 = [(MTAAlarmEditableTextCell *)&v22 init];
  v8 = v7;
  if (v7)
  {
    [(MTAAlarmEditableTextCell *)v7 setSelectionStyle:0];
    v9 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    textField = v8->_textField;
    v8->_textField = v9;

    [(UITextField *)v8->_textField _setForcesClearButtonHighContrastAppearance:1];
    [(UITextField *)v8->_textField setText:textCopy];
    v11 = +[UIColor mtui_primaryTextColor];
    [(UITextField *)v8->_textField setTextColor:v11];

    v12 = +[UIColor mtui_tintColor];
    [(UITextField *)v8->_textField setTintColor:v12];

    [(UITextField *)v8->_textField setAutocapitalizationType:type];
    [(UITextField *)v8->_textField setBorderStyle:0];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UITextField *)v8->_textField setFont:v13];

    [(UITextField *)v8->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v8->_textField setAdjustsFontSizeToFitWidth:1];
    [(UITextField *)v8->_textField setReturnKeyType:9];
    [(UITextField *)v8->_textField setClearButtonMode:3];
    [(UITextField *)v8->_textField setDelegate:v8];
    [(UITextField *)v8->_textField setEnablesReturnKeyAutomatically:1];
    [(UITextField *)v8->_textField setKeyboardAppearance:1];
    _clearButton = [(UITextField *)v8->_textField _clearButton];
    v15 = [_clearButton imageForState:0];

    v16 = +[UIColor secondaryLabelColor];
    v17 = [v15 mtui_imageWithTintColor:v16];

    _clearButton2 = [(UITextField *)v8->_textField _clearButton];
    [_clearButton2 setImage:v17 forState:0];

    contentView = [(MTAAlarmEditableTextCell *)v8 contentView];
    [contentView addSubview:v8->_textField];

    [(MTAAlarmEditableTextCell *)v8 setNeedsLayout];
    v20 = v8;
  }

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTAAlarmEditableTextCell;
  [(MTAAlarmEditableTextCell *)&v4 layoutSubviews];
  [(UITextField *)self->_textField isUserInteractionEnabled];
  contentView = [(MTAAlarmEditableTextCell *)self contentView];
  [contentView bounds];

  UIRectCenteredYInRect();
  [(UITextField *)self->_textField setFrame:?];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  v4 = [text length];

  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"kMTAEditAlarmTitleFinishedNotification" object:0];
  }

  return v4 != 0;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(MTAAlarmEditableTextCell *)self isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = MTAAlarmEditableTextCell;
    [(MTAAlarmEditableTextCell *)&v5 setUserInteractionEnabled:enabledCopy];
    [(UITextField *)self->_textField setUserInteractionEnabled:enabledCopy];
    [(MTAAlarmEditableTextCell *)self setNeedsLayout];
  }
}

@end