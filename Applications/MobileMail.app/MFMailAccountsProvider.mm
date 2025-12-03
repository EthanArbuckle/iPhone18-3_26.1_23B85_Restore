@interface MFMailAccountsProvider
- (BOOL)hasActiveAccounts;
- (BOOL)isDisplayingMultipleAccounts;
- (MFMailAccountsProvider)init;
- (NSArray)orderedAccounts;
- (NSArray)receivingAddresses;
- (NSSet)autofetchAccounts;
- (id)_activeNonLocalAccountsWithMailAccounts:(id)accounts;
- (id)_displayedAccountsIdentifiers;
- (id)_executeChange:(id)change;
- (id)_focusedAccountsIdentifiers;
- (id)legacyMailAccountForObjectID:(id)d;
- (id)reloadWithMailAccounts:(id)accounts currentFocus:(id)focus;
- (void)_registerNotifications;
@end

@implementation MFMailAccountsProvider

- (MFMailAccountsProvider)init
{
  v5.receiver = self;
  v5.super_class = MFMailAccountsProvider;
  v2 = [(MFMailAccountsProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFMailAccountsProvider *)v2 _registerNotifications];
  }

  return v3;
}

- (void)_registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_accountsOrderDidChange:" name:@"MailApplicationAccountsOrderDidChange" object:0];
}

- (id)_displayedAccountsIdentifiers
{
  displayedAccounts = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [displayedAccounts ef_compactMap:&stru_1006542F8];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSSet set];
  }

  v6 = v5;

  return v6;
}

- (id)_focusedAccountsIdentifiers
{
  focusedAccounts = [(MFMailAccountsProvider *)self focusedAccounts];
  v3 = [focusedAccounts ef_compactMap:&stru_100654318];

  return v3;
}

- (BOOL)isDisplayingMultipleAccounts
{
  displayedAccounts = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [displayedAccounts count] > 1;

  return v3;
}

- (BOOL)hasActiveAccounts
{
  displayedAccounts = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [displayedAccounts count] != 0;

  return v3;
}

- (NSArray)receivingAddresses
{
  mailAccounts = [(MFMailAccountsProvider *)self mailAccounts];
  v3 = [mailAccounts ef_map:&stru_100654298];
  ef_flatten = [v3 ef_flatten];
  v5 = [ef_flatten ef_filter:EFIsNotNull];

  return v5;
}

- (id)reloadWithMailAccounts:(id)accounts currentFocus:(id)focus
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D2620;
  v9[3] = &unk_10064C6B0;
  selfCopy = self;
  accountsCopy = accounts;
  focusCopy = focus;
  v5 = focusCopy;
  v6 = accountsCopy;
  v7 = [(MFMailAccountsProvider *)selfCopy _executeChange:v9];

  return v7;
}

- (id)legacyMailAccountForObjectID:(id)d
{
  dCopy = d;
  representedObjectID = [dCopy representedObjectID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mailAccounts = [(MFMailAccountsProvider *)self mailAccounts];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D29B8;
    v9[3] = &unk_100653130;
    v10 = representedObjectID;
    v7 = [mailAccounts ef_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_executeChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MFMailAccountsProvider.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  v6 = [[MFMailAccountsProviderState alloc] initFromProvider:self];
  changeCopy[2](changeCopy);
  v7 = [[MFMailAccountsProviderState alloc] initFromProvider:self];
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    numberOfActiveAccounts = [v7 numberOfActiveAccounts];
    numberOfActiveAccounts2 = [v7 numberOfActiveAccounts];
    numberOfInactiveAccounts = [v7 numberOfInactiveAccounts];
    numberOfActiveAccounts3 = [v6 numberOfActiveAccounts];
    numberOfActiveAccounts4 = [v6 numberOfActiveAccounts];
    *buf = 134218752;
    v18 = numberOfActiveAccounts;
    v19 = 2048;
    v20 = &numberOfActiveAccounts2[numberOfInactiveAccounts];
    v21 = 2048;
    v22 = numberOfActiveAccounts3;
    v23 = 2048;
    v24 = &numberOfActiveAccounts4[[v6 numberOfInactiveAccounts]];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "After reloading accounts: %lu/%lu active mail accounts (previously %lu/%lu)", buf, 0x2Au);
  }

  v14 = [EFPair pairWithFirst:v6 second:v7];

  return v14;
}

- (id)_activeNonLocalAccountsWithMailAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = accountsCopy;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = kAccountDataclassMail;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v11 isEnabledForDataclass:v9])
          {
            [v4 addObject:v11];
          }

          else
          {
            ++v6;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  -[MFMailAccountsProvider setNumberOfActiveAccounts:](self, "setNumberOfActiveAccounts:", [v4 count]);
  [(MFMailAccountsProvider *)self setNumberOfInactiveAccounts:v6];

  return v4;
}

- (NSArray)orderedAccounts
{
  if (pthread_main_np() != 1)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MFMailAccountsProvider.m" lineNumber:173 description:@"Current thread must be main"];
  }

  orderedAccounts = self->_orderedAccounts;
  if (!orderedAccounts)
  {
    v5 = [NSMutableArray alloc];
    displayedAccounts = [(MFMailAccountsProvider *)self displayedAccounts];
    allObjects = [displayedAccounts allObjects];
    v8 = [v5 initWithArray:allObjects];

    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 arrayForKey:@"MailAccountsOrder"];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001D3048;
    v16[3] = &unk_10064F078;
    v11 = v10;
    v17 = v11;
    [v8 sortUsingComparator:v16];
    v12 = [v8 copy];
    v13 = self->_orderedAccounts;
    self->_orderedAccounts = v12;

    orderedAccounts = self->_orderedAccounts;
  }

  return orderedAccounts;
}

- (NSSet)autofetchAccounts
{
  displayedAccounts = [(MFMailAccountsProvider *)self displayedAccounts];
  v3 = [displayedAccounts ef_filter:&stru_100654338];

  return v3;
}

@end