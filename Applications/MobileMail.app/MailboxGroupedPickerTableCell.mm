@interface MailboxGroupedPickerTableCell
- (MailboxGroupedPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_mailboxTextFont;
- (id)nameForMailbox:(id)mailbox;
- (int)levelForMailbox:(id)mailbox;
- (void)_setText:(id)text image:(id)image;
- (void)dealloc;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setCurrentMailbox:(BOOL)mailbox;
- (void)setMailbox:(id)mailbox;
- (void)setMailboxType:(int64_t)type;
@end

@implementation MailboxGroupedPickerTableCell

- (MailboxGroupedPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = MailboxGroupedPickerTableCell;
  v7 = [(MailboxGroupedPickerTableCell *)&v13 initWithStyle:style reuseIdentifier:identifierCopy];
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

- (void)setMailboxType:(int64_t)type
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MFMailboxUid iconForType:type];
  }

  v9 = v7;
  v8 = [MFMailboxUid specialNameForType:type];
  [(MailboxGroupedPickerTableCell *)self _setText:v8 image:v9];
}

- (void)_setText:(id)text image:(id)image
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E693C;
  v8[3] = &unk_10064FD60;
  textCopy = text;
  imageCopy = image;
  v6 = imageCopy;
  v7 = textCopy;
  [(MailboxGroupedPickerTableCell *)self mf_updateContentConfigurationWithBlock:v8];
}

- (id)nameForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy mailboxType] == 7)
  {
    [mailboxCopy displayNameUsingSpecialNames];
  }

  else
  {
    [mailboxCopy displayName];
  }
  v4 = ;

  return v4;
}

- (void)setMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    icon = 0;
  }

  else if ([mailboxCopy mailboxType] == 8)
  {
    account = [mailboxCopy account];
    icon = [MailAccount accountImageForAccount:account];
  }

  else
  {
    icon = [mailboxCopy icon];
  }

  v8 = [(MailboxGroupedPickerTableCell *)self nameForMailbox:mailboxCopy];
  [(MailboxGroupedPickerTableCell *)self _setText:v8 image:icon];

  [(MailboxGroupedPickerTableCell *)self setIndentationLevel:[(MailboxGroupedPickerTableCell *)self levelForMailbox:mailboxCopy]];
}

- (int)levelForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy mailboxType])
  {
    level = 0;
  }

  else
  {
    level = [mailboxCopy level];
  }

  return level;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxGroupedPickerTableCell;
  [(MailboxGroupedPickerTableCell *)&v4 dealloc];
}

- (void)setCellEnabled:(BOOL)enabled
{
  *(self + 8) = *(self + 8) & 0xFE | !enabled;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E6D10;
  v3[3] = &unk_10064FD80;
  enabledCopy = enabled;
  [(MailboxGroupedPickerTableCell *)self mf_updateContentConfigurationWithBlock:v3];
}

- (void)setCurrentMailbox:(BOOL)mailbox
{
  if (!mailbox || (+[UIColor tableCellEligibleColor], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
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