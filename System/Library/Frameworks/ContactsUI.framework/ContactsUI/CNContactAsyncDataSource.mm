@interface CNContactAsyncDataSource
- (CNContactAsyncDataSource)initWithStore:(id)store;
- (NSArray)contacts;
- (NSString)displayName;
- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForContact:(id)contact;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateResults;
- (void)invalidateSearch;
- (void)reload;
- (void)reloadWithRequest:(id)request;
- (void)setDelegate:(id)delegate;
@end

@implementation CNContactAsyncDataSource

- (void)invalidate
{
  [(CNContactAsyncDataSource *)self invalidateSearch];

  [(CNContactAsyncDataSource *)self invalidateResults];
}

- (void)invalidateSearch
{
  searchCancelationToken = [(CNContactAsyncDataSource *)self searchCancelationToken];
  [searchCancelationToken cancel];

  [(CNContactAsyncDataSource *)self setNetworkActivityIndicatorVisible:0];
}

- (void)invalidateResults
{
  array = [MEMORY[0x1E695DF70] array];
  [(CNContactAsyncDataSource *)self setResultingContacts:array];

  delegate = [(CNContactAsyncDataSource *)self delegate];
  [delegate contactDataSourceDidChange:self];
}

- (void)reloadWithRequest:(id)request
{
  requestCopy = request;
  [(CNContactAsyncDataSource *)self invalidateSearch];
  filter = [(CNContactAsyncDataSource *)self filter];
  if (![filter isServerFilter])
  {
    goto LABEL_4;
  }

  fullTextString = [filter fullTextString];
  v7 = [fullTextString length];

  if (v7)
  {
    [(CNContactAsyncDataSource *)self setNetworkActivityIndicatorVisible:1];
LABEL_4:
    objc_initWeak(&location, self);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke;
    aBlock[3] = &unk_1E74E65A0;
    objc_copyWeak(&v18, &location);
    aBlock[4] = v19;
    v8 = _Block_copy(aBlock);
    store = [(CNContactAsyncDataSource *)self store];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_2;
    v14[3] = &unk_1E74E65C8;
    objc_copyWeak(&v16, &location);
    v15 = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_4;
    v12[3] = &unk_1E74E65F0;
    v10 = v15;
    v12[4] = self;
    v13 = v10;
    v11 = [store executeFetchRequest:requestCopy progressiveResults:v14 completion:v12];
    [(CNContactAsyncDataSource *)self setSearchCancelationToken:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    _Block_object_dispose(v19, 8);
    objc_destroyWeak(&location);
  }
}

void __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained invalidateResults];
    WeakRetained = v3;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_3;
  block[3] = &unk_1E74E6650;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  block[4] = WeakRetained;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setNetworkActivityIndicatorVisible:0];
}

void __46__CNContactAsyncDataSource_reloadWithRequest___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) resultingContacts];
  [v2 addObjectsFromArray:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 contactDataSourceDidChange:*(a1 + 32)];
}

- (void)reload
{
  v10[1] = *MEMORY[0x1E69E9840];
  filter = [(CNContactAsyncDataSource *)self filter];
  if ([filter isServerFilter])
  {
    allKeysToFetchForTransientContacts = [(CNContactAsyncDataSource *)self allKeysToFetchForTransientContacts];
  }

  else
  {
    contactFormatter = [(CNContactAsyncDataSource *)self contactFormatter];
    descriptorForRequiredKeys = [contactFormatter descriptorForRequiredKeys];
    v10[0] = descriptorForRequiredKeys;
    allKeysToFetchForTransientContacts = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v7 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:allKeysToFetchForTransientContacts];
  predicate = [(CNContactStoreFilter *)self->_filter predicate];
  [v7 setPredicate:predicate];

  reloadStream = [(CNContactAsyncDataSource *)self reloadStream];
  [reloadStream observerDidReceiveResult:v7];
}

- (id)indexPathForContact:(id)contact
{
  contactCopy = contact;
  contacts = [(CNContactAsyncDataSource *)self contacts];
  if ([contacts count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [contacts objectAtIndexedSubscript:v6];
      identifier = [v7 identifier];
      identifier2 = [contactCopy identifier];
      v10 = [identifier isEqual:identifier2];

      if (v10)
      {
        break;
      }

      if (++v6 >= [contacts count])
      {
        goto LABEL_5;
      }
    }

    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch
{
  contactCopy = contact;
  fetchCopy = fetch;
  filter = [(CNContactAsyncDataSource *)self filter];
  if ([filter isServerFilter])
  {
    resultingContacts = [(CNContactAsyncDataSource *)self resultingContacts];
    v11 = [resultingContacts containsObject:contactCopy];

    if (v11)
    {
      v12 = contactCopy;
      goto LABEL_8;
    }
  }

  else
  {
  }

  store = [(CNContactAsyncDataSource *)self store];
  identifier = [contactCopy identifier];
  v21 = 0;
  v12 = [store unifiedContactWithIdentifier:identifier keysToFetch:fetchCopy error:&v21];
  v15 = v21;

  if (v15)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactAsyncDataSource.m", 165, 3, @"Error completing contact: %@", v16, v17, v18, v19, v15);
  }

LABEL_8:

  return v12;
}

- (NSString)displayName
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SEARCH_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (NSArray)contacts
{
  v2 = MEMORY[0x1E695DEC8];
  resultingContacts = [(CNContactAsyncDataSource *)self resultingContacts];
  v4 = [v2 arrayWithArray:resultingContacts];

  return v4;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(CNContactDataSourceSafeDelegate *)self->_delegate delegate];

  if (delegate != delegateCopy)
  {
    v5 = [[CNContactDataSourceSafeDelegate alloc] initWithDelegate:delegateCopy];
    delegate = self->_delegate;
    self->_delegate = v5;
  }
}

- (void)dealloc
{
  [(CNContactAsyncDataSource *)self invalidateSearch];
  reloadStreamCancelationToken = [(CNContactAsyncDataSource *)self reloadStreamCancelationToken];
  [reloadStreamCancelationToken cancel];

  [(CNContactAsyncDataSource *)self setReloadStreamCancelationToken:0];
  v4.receiver = self;
  v4.super_class = CNContactAsyncDataSource;
  [(CNContactAsyncDataSource *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  store = [(CNContactAsyncDataSource *)self store];
  v6 = [v4 initWithStore:store];

  resultingContacts = [(CNContactAsyncDataSource *)self resultingContacts];
  v8 = [resultingContacts copy];
  [v6 setResultingContacts:v8];

  contactFormatter = [(CNContactAsyncDataSource *)self contactFormatter];
  [v6 setContactFormatter:contactFormatter];

  allKeysToFetchForTransientContacts = [(CNContactAsyncDataSource *)self allKeysToFetchForTransientContacts];
  [v6 setAllKeysToFetchForTransientContacts:allKeysToFetchForTransientContacts];

  filter = [(CNContactAsyncDataSource *)self filter];
  [v6 setFilter:filter];

  return v6;
}

- (CNContactAsyncDataSource)initWithStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = CNContactAsyncDataSource;
  v5 = [(CNContactAsyncDataSource *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(CNContactAsyncDataSource *)v5 setStore:storeCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(CNContactAsyncDataSource *)v6 setResultingContacts:array];

    v8 = [MEMORY[0x1E6996820] providerWithBackgroundConcurrencyLimit:1];
    [(CNContactAsyncDataSource *)v6 setReloadSchedulerProvider:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69967E0]);
    [(CNContactAsyncDataSource *)v6 setReloadStream:v9];

    reloadStream = [(CNContactAsyncDataSource *)v6 reloadStream];
    reloadSchedulerProvider = [(CNContactAsyncDataSource *)v6 reloadSchedulerProvider];
    v12 = [reloadStream throttle:reloadSchedulerProvider schedulerProvider:0.75];
    v13 = [MEMORY[0x1E69967A0] observerWithWeakTarget:v6 resultSelector:sel_reloadWithRequest_];
    v14 = [v12 subscribe:v13];
    [(CNContactAsyncDataSource *)v6 setReloadStreamCancelationToken:v14];

    v15 = objc_opt_new();
    filter = v6->_filter;
    v6->_filter = v15;
  }

  return v6;
}

@end