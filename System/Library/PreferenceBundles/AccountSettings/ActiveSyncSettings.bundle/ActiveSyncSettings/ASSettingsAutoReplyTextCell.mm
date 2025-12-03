@interface ASSettingsAutoReplyTextCell
- (ASSettingsAutoReplyTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_updateTextColorForTextView:(id)view;
- (void)layoutSubviews;
@end

@implementation ASSettingsAutoReplyTextCell

- (ASSettingsAutoReplyTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = ASSettingsAutoReplyTextCell;
  v9 = [(ASSettingsAutoReplyTextCell *)&v17 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    textView = [(ASSettingsAutoReplyTextCell *)v9 textView];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [textView setFont:v12];

    v13 = +[UIColor clearColor];
    [textView setBackgroundColor:v13];

    [textView setTextLoupeVisibility:2];
    textView2 = [(ASSettingsAutoReplyTextCell *)v10 textView];
    [(ASSettingsAutoReplyTextCell *)v10 _updateTextColorForTextView:textView2];

    v15 = [specifierCopy propertyForKey:@"kPSOofTextViewdelegate"];
    NSClassFromString(@"ASSettingsOofUIController");
    if (objc_opt_isKindOfClass())
    {
      [textView setDelegate:v15];
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASSettingsAutoReplyTextCell;
  [(ASSettingsAutoReplyTextCell *)&v4 layoutSubviews];
  textView = [(ASSettingsAutoReplyTextCell *)self textView];
  [(ASSettingsAutoReplyTextCell *)self _updateTextColorForTextView:textView];
}

- (void)_updateTextColorForTextView:(id)view
{
  viewCopy = view;
  traitCollection = [(ASSettingsAutoReplyTextCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v7 = ;
  [viewCopy setTextColor:v7];
}

@end