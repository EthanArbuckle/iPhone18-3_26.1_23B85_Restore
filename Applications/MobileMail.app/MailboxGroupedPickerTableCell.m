@interface MailboxGroupedPickerTableCell
- (MailboxGroupedPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_mailboxTextFont;
- (id)nameForMailbox:(id)a3;
- (int)levelForMailbox:(id)a3;
- (void)_setText:(id)a3 image:(id)a4;
- (void)dealloc;
- (void)setCellEnabled:(BOOL)a3;
- (void)setCurrentMailbox:(BOOL)a3;
- (void)setMailbox:(id)a3;
- (void)setMailboxType:(int64_t)a3;
@end

@implementation MailboxGroupedPickerTableCell

- (MailboxGroupedPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = MailboxGroupedPickerTableCell;
  v7 = [(MailboxGroupedPickerTableCell *)&v13 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E65F4;
    v11[3] = &unk_10064FD38;
    v9 = v7;
    v12 = v9;
    [(MailboxGroupedPickerTableCell *)v9 mf_updateContentConfigurationWithBlock:v11];
    [(MailboxGroupedPickerTableCell *)v9 setIndentationWidth:30.0];
  }

  return v8;
}

- (id)_mailboxTextFont
{
  if (+[UIScreen mui_isLargeFormatPad])
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:v2];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)setMailboxType:(int64_t)a3
{
  v5 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (IsAccessibilityCategory)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MFMailboxUid iconForType:a3];
  }

  v9 = v7;
  v8 = [MFMailboxUid specialNameForType:a3];
  [(MailboxGroupedPickerTableCell *)self _setText:v8 image:v9];
}

- (void)_setText:(id)a3 image:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E693C;
  v8[3] = &unk_10064FD60;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(MailboxGroupedPickerTableCell *)self mf_updateContentConfigurationWithBlock:v8];
}

- (id)nameForMailbox:(id)a3
{
  v3 = a3;
  if ([v3 mailboxType] == 7)
  {
    [v3 displayNameUsingSpecialNames];
  }

  else
  {
    [v3 displayName];
  }
  v4 = ;

  return v4;
}

- (void)setMailbox:(id)a3
{
  v9 = a3;
  v4 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    v6 = 0;
  }

  else if ([v9 mailboxType] == 8)
  {
    v7 = [v9 account];
    v6 = [MailAccount accountImageForAccount:v7];
  }

  else
  {
    v6 = [v9 icon];
  }

  v8 = [(MailboxGroupedPickerTableCell *)self nameForMailbox:v9];
  [(MailboxGroupedPickerTableCell *)self _setText:v8 image:v6];

  [(MailboxGroupedPickerTableCell *)self setIndentationLevel:[(MailboxGroupedPickerTableCell *)self levelForMailbox:v9]];
}

- (int)levelForMailbox:(id)a3
{
  v3 = a3;
  if ([v3 mailboxType])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 level];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxGroupedPickerTableCell;
  [(MailboxGroupedPickerTableCell *)&v4 dealloc];
}

- (void)setCellEnabled:(BOOL)a3
{
  *(self + 8) = *(self + 8) & 0xFE | !a3;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E6D10;
  v3[3] = &unk_10064FD80;
  v4 = a3;
  [(MailboxGroupedPickerTableCell *)self mf_updateContentConfigurationWithBlock:v3];
}

- (void)setCurrentMailbox:(BOOL)a3
{
  if (!a3 || (+[UIColor tableCellEligibleColor], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(MailboxGroupedPickerTableCell *)self isCellEnabled])
    {
      +[UIColor tableCellEligibleColor];
    }

    else
    {
      +[UIColor tableCellIneligibleColor];
    }
    v4 = ;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E6ECC;
  v6[3] = &unk_10064FD38;
  v7 = v4;
  v5 = v4;
  [(MailboxGroupedPickerTableCell *)self mf_updateContentConfigurationWithBlock:v6];
}

@end