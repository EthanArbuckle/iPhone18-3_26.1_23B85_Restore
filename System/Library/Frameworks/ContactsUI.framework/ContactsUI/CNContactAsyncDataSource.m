@interface CNContactAsyncDataSource
- (CNContactAsyncDataSource)initWithStore:(id)a3;
- (NSArray)contacts;
- (NSString)displayName;
- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForContact:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateResults;
- (void)invalidateSearch;
- (void)reload;
- (void)reloadWithRequest:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation CNContactAsyncDataSource

- (void)invalidate
{
  [(CNContactAsyncDataSource *)self invalidateSearch];

  [(CNContactAsyncDataSource *)self invalidateResults];
}

- (void)invalidateSearch
{
  v3 = [(CNContactAsyncDataSource *)self searchCancelationToken];
  [v3 cancel];

  [(CNContactAsyncDataSource *)self setNetworkActivityIndicatorVisible:0];
}

- (void)invalidateResults
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(CNContactAsyncDataSource *)self setResultingContacts:v3];

  v4 = [(CNContactAsyncDataSource *)self delegate];
  [v4 contactDataSourceDidChange:self];
}

- (void)reloadWithRequest:(id)a3
{
  v4 = a3;
  [(CNContactAsyncDataSource *)self invalidateSearch];
  v5 = [(CNContactAsyncDataSource *)self filter];
  if (![v5 isServerFilter])
  {
    goto LABEL_4;
  }

  v6 = [v5 fullTextString];
  v7 = [v6 length];

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
    v9 = [(CNContactAsyncDataSource *)self store];
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
    v11 = [v9 executeFetchRequest:v4 progressiveResults:v14 completion:v12];
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
  v3 = [(CNContactAsyncDataSource *)self filter];
  if ([v3 isServerFilter])
  {
    v4 = [(CNContactAsyncDataSource *)self allKeysToFetchForTransientContacts];
  }

  else
  {
    v5 = [(CNContactAsyncDataSource *)self contactFormatter];
    v6 = [v5 descriptorForRequiredKeys];
    v10[0] = v6;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v7 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v4];
  v8 = [(CNContactStoreFilter *)self->_filter predicate];
  [v7 setPredicate:v8];

  v9 = [(CNContactAsyncDataSource *)self reloadStream];
  [v9 observerDidReceiveResult:v7];
}

- (id)indexPathForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactAsyncDataSource *)self contacts];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [v7 identifier];
      v9 = [v4 identifier];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        break;
      }

      if (++v6 >= [v5 count])
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

- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(CNContactAsyncDataSource *)self filter];
  if ([v9 isServerFilter])
  {
    v10 = [(CNContactAsyncDataSource *)self resultingContacts];
    v11 = [v10 containsObject:v7];

    if (v11)
    {
      v12 = v7;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = [(CNContactAsyncDataSource *)self store];
  v14 = [v7 identifier];
  v21 = 0;
  v12 = [v13 unifiedContactWithIdentifier:v14 keysToFetch:v8 error:&v21];
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
  v3 = [(CNContactAsyncDataSource *)self resultingContacts];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (void)setDelegate:(id)a3
{
  v7 = a3;
  v4 = [(CNContactDataSourceSafeDelegate *)self->_delegate delegate];

  if (v4 != v7)
  {
    v5 = [[CNContactDataSourceSafeDelegate alloc] initWithDelegate:v7];
    delegate = self->_delegate;
    self->_delegate = v5;
  }
}

- (void)dealloc
{
  [(CNContactAsyncDataSource *)self invalidateSearch];
  v3 = [(CNContactAsyncDataSource *)self reloadStreamCancelationToken];
  [v3 cancel];

  [(CNContactAsyncDataSource *)self setReloadStreamCancelationToken:0];
  v4.receiver = self;
  v4.super_class = CNContactAsyncDataSource;
  [(CNContactAsyncDataSource *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CNContactAsyncDataSource *)self store];
  v6 = [v4 initWithStore:v5];

  v7 = [(CNContactAsyncDataSource *)self resultingContacts];
  v8 = [v7 copy];
  [v6 setResultingContacts:v8];

  v9 = [(CNContactAsyncDataSource *)self contactFormatter];
  [v6 setContactFormatter:v9];

  v10 = [(CNContactAsyncDataSource *)self allKeysToFetchForTransientContacts];
  [v6 setAllKeysToFetchForTransientContacts:v10];

  v11 = [(CNContactAsyncDataSource *)self filter];
  [v6 setFilter:v11];

  return v6;
}

- (CNContactAsyncDataSource)initWithStore:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNContactAsyncDataSource;
  v5 = [(CNContactAsyncDataSource *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(CNContactAsyncDataSource *)v5 setStore:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(CNContactAsyncDataSource *)v6 setResultingContacts:v7];

    v8 = [MEMORY[0x1E6996820] providerWithBackgroundConcurrencyLimit:1];
    [(CNContactAsyncDataSource *)v6 setReloadSchedulerProvider:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69967E0]);
    [(CNContactAsyncDataSource *)v6 setReloadStream:v9];

    v10 = [(CNContactAsyncDataSource *)v6 reloadStream];
    v11 = [(CNContactAsyncDataSource *)v6 reloadSchedulerProvider];
    v12 = [v10 throttle:v11 schedulerProvider:0.75];
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