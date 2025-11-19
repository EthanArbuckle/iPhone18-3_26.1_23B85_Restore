@interface ASSettingsAutoReplyTextCell
- (ASSettingsAutoReplyTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_updateTextColorForTextView:(id)a3;
- (void)layoutSubviews;
@end

@implementation ASSettingsAutoReplyTextCell

- (ASSettingsAutoReplyTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = ASSettingsAutoReplyTextCell;
  v9 = [(ASSettingsAutoReplyTextCell *)&v17 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(ASSettingsAutoReplyTextCell *)v9 textView];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v11 setFont:v12];

    v13 = +[UIColor clearColor];
    [v11 setBackgroundColor:v13];

    [v11 setTextLoupeVisibility:2];
    v14 = [(ASSettingsAutoReplyTextCell *)v10 textView];
    [(ASSettingsAutoReplyTextCell *)v10 _updateTextColorForTextView:v14];

    v15 = [v8 propertyForKey:@"kPSOofTextViewdelegate"];
    NSClassFromString(@"ASSettingsOofUIController");
    if (objc_opt_isKindOfClass())
    {
      [v11 setDelegate:v15];
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASSettingsAutoReplyTextCell;
  [(ASSettingsAutoReplyTextCell *)&v4 layoutSubviews];
  v3 = [(ASSettingsAutoReplyTextCell *)self textView];
  [(ASSettingsAutoReplyTextCell *)self _updateTextColorForTextView:v3];
}

- (void)_updateTextColorForTextView:(id)a3
{
  v4 = a3;
  v5 = [(ASSettingsAutoReplyTextCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == &dword_0 + 2)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;
  [v4 setTextColor:v7];
}

@end