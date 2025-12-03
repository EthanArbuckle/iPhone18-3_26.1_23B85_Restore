@interface MFMailDebugUnreadIssueViewController
- (id)_accountInformationFromAccounts:(id)accounts;
- (id)_accountUnreadCountFromAccounts:(id)accounts;
- (id)_badgeCount;
- (id)_mailboxUnreadCountInformations;
- (void)_loadUnreadDebugInformation;
- (void)selectAll:(id)all;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MFMailDebugUnreadIssueViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MFMailDebugUnreadIssueViewController;
  [(MFMailDebugUnreadIssueViewController *)&v6 viewDidLoad];
  view = [(MFMailDebugUnreadIssueViewController *)self view];
  v4 = [UITextView alloc];
  [view frame];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [v5 setEditable:0];
  [view addSubview:v5];
  [(MFMailDebugUnreadIssueViewController *)self setTextView:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MFMailDebugUnreadIssueViewController;
  [(MFMailDebugUnreadIssueViewController *)&v4 viewDidAppear:appear];
  [(MFMailDebugUnreadIssueViewController *)self _loadUnreadDebugInformation];
}

- (void)selectAll:(id)all
{
  allCopy = all;
  textView = [(MFMailDebugUnreadIssueViewController *)self textView];
  [textView selectAll:allCopy];
}

- (void)_loadUnreadDebugInformation
{
  textView = [(MFMailDebugUnreadIssueViewController *)self textView];
  [textView setText:@"fetching unread debug informations... be patient."];

  v4 = dispatch_get_global_queue(0, 0);
  v5 = objc_alloc_init(NSMutableString);
  _badgeCount = [(MFMailDebugUnreadIssueViewController *)self _badgeCount];
  [v5 appendFormat:@"%@\n\n", _badgeCount];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3FB0;
  block[3] = &unk_10064CC78;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)_accountInformationFromAccounts:(id)accounts
{
  accountsCopy = accounts;
  v3 = objc_alloc_init(NSMutableString);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = accountsCopy;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        displayName = [v7 displayName];
        uniqueID = [v7 uniqueID];
        if ([v7 isActive])
        {
          v10 = @"active";
        }

        else
        {
          v10 = @"inactive";
        }

        [v3 appendFormat:@"\n%@ : %@ - %@", displayName, uniqueID, v10];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  if ([v3 length])
  {
    [v3 insertString:@"Accounts Information:" atIndex:0];
  }

  else
  {

    v3 = 0;
  }

  return v3;
}

- (id)_accountUnreadCountFromAccounts:(id)accounts
{
  accountsCopy = accounts;
  v3 = objc_alloc_init(NSMutableString);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = accountsCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v20 = *v27;
    do
    {
      v21 = v4;
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        if ([v6 isActive])
        {
          allMailboxUids = [v6 allMailboxUids];
          displayName = [v6 displayName];
          [v3 appendFormat:@"%@:", displayName];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v8 = allMailboxUids;
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v9)
          {
            v10 = *v23;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v23 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v22 + 1) + 8 * j);
                if ([v12 isSpecialMailboxUid])
                {
                  [v12 displayNameUsingSpecialNames];
                }

                else
                {
                  [v12 displayName];
                }
                v13 = ;
                unreadCount = [v12 unreadCount];
                uniqueId = [v12 uniqueId];
                [v3 appendFormat:@"\n - %@ (%lu) %@", v13, unreadCount, uniqueId, accountsCopy];
              }

              v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v9);
          }

          [v3 appendString:@"\n\n"];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  if ([v3 length])
  {
    [v3 insertString:@"Accounts (unread):\n" atIndex:0];
  }

  else
  {

    v3 = 0;
  }

  return v3;
}

- (id)_badgeCount
{
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFMailDebugUnreadIssueViewController.m" lineNumber:128 description:@"Current thread must be main"];
  }

  v4 = +[UIApplication sharedApplication];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Badge Count: %li", [v4 applicationIconBadgeNumber]);

  return v5;
}

- (id)_mailboxUnreadCountInformations
{
  if (pthread_main_np())
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFMailDebugUnreadIssueViewController.m" lineNumber:133 description:@"Current thread is main"];
  }

  v4 = objc_alloc_init(NSMutableString);
  v5 = +[MFMailMessageLibrary defaultInstance];
  stringFromAllMailboxUnreadCount = [v5 stringFromAllMailboxUnreadCount];
  [v4 appendFormat:@"%@\n", stringFromAllMailboxUnreadCount];

  if ([v4 length])
  {
    [v4 insertString:@"Mailbox Unread Count Informations from DB:\n" atIndex:0];
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

@end