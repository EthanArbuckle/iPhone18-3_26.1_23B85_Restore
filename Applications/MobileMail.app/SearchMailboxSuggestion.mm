@interface SearchMailboxSuggestion
+ (id)suggestionForMailboxes:(id)mailboxes;
- (SearchMailboxSuggestion)initWithCoder:(id)coder;
- (SearchMailboxSuggestion)initWithMailboxes:(id)mailboxes;
- (id)subtitle;
- (id)title;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SearchMailboxSuggestion

+ (id)suggestionForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v5 = [[self alloc] initWithMailboxes:mailboxesCopy];

  return v5;
}

- (SearchMailboxSuggestion)initWithMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v9.receiver = self;
  v9.super_class = SearchMailboxSuggestion;
  v5 = [(SearchMailboxSuggestion *)&v9 init];
  if (v5)
  {
    v6 = [mailboxesCopy copy];
    mailboxes = v5->_mailboxes;
    v5->_mailboxes = v6;
  }

  return v5;
}

- (SearchMailboxSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"EFPropertyKey_mailboxes"];

  v8 = [(SearchMailboxSuggestion *)self initWithMailboxes:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = objc_opt_self();
  mailboxes = [v3 mailboxes];
  [coderCopy encodeObject:mailboxes forKey:@"EFPropertyKey_self.mailboxes"];
}

- (id)title
{
  mailboxes = [(SearchMailboxSuggestion *)self mailboxes];
  v4 = [mailboxes count];

  if (v4 >= 2)
  {
    v5 = sub_100245940();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10048D1DC(v5);
    }
  }

  mailboxes2 = [(SearchMailboxSuggestion *)self mailboxes];
  firstObject = [mailboxes2 firstObject];
  name = [firstObject name];

  return name;
}

- (id)subtitle
{
  subtitle = self->_subtitle;
  if (!subtitle)
  {
    mailboxes = [(SearchMailboxSuggestion *)self mailboxes];
    v5 = [mailboxes count];

    if (v5 >= 2)
    {
      v6 = sub_100245940();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10048D234(v6);
      }
    }

    v7 = +[NSMutableArray array];
    mailboxes2 = [(SearchMailboxSuggestion *)self mailboxes];
    firstObject = [mailboxes2 firstObject];

    parent = [firstObject parent];
    if (parent)
    {
      do
      {
        if ([parent isTopLevelMailbox])
        {
          break;
        }

        name = [parent name];
        [v7 insertObject:name atIndex:0];

        v10Parent = [parent parent];

        parent = v10Parent;
      }

      while (v10Parent);
    }

    account2 = +[EMMailbox receivingAccounts];
    if ([account2 count] >= 2)
    {
      account = [firstObject account];

      if (!account)
      {
LABEL_13:
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"SEARCH_MAILBOX_SEPARATOR" value:&stru_100662A88 table:@"Main"];
        v18 = [v7 componentsJoinedByString:v17];
        v19 = [v18 copy];
        v20 = self->_subtitle;
        self->_subtitle = v19;

        subtitle = self->_subtitle;
        goto LABEL_14;
      }

      account2 = [firstObject account];
      name2 = [account2 name];
      [v7 insertObject:name2 atIndex:0];
    }

    goto LABEL_13;
  }

LABEL_14:

  return subtitle;
}

@end