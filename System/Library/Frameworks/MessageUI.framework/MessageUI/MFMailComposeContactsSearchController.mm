@interface MFMailComposeContactsSearchController
- (MFMailComposeContactsSearchController)init;
- (MFMailComposeContactsSearchControllerDelegate)delegate;
- (void)_cancelSearchAndNotify:(BOOL)a3;
- (void)_finishSearch;
- (void)_reset;
- (void)beganNetworkActivity;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)consumeCorecipientSearchResults:(id)a3 taskID:(id)a4;
- (void)endedNetworkActivity;
- (void)findCorecipientsWithRecipients:(id)a3;
- (void)finishedSearchingForAutocompleteResults;
- (void)finishedSearchingForCorecipients;
- (void)finishedTaskWithID:(id)a3;
- (void)searchWithString:(id)a3 enteredRecipients:(id)a4 title:(id)a5;
@end

@implementation MFMailComposeContactsSearchController

- (MFMailComposeContactsSearchController)init
{
  v8.receiver = self;
  v8.super_class = MFMailComposeContactsSearchController;
  v2 = [(MFMailComposeContactsSearchController *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69963D0]) initWithAutocompleteSearchType:0];
    manager = v2->_manager;
    v2->_manager = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    autocompleteSearchResults = v2->_autocompleteSearchResults;
    v2->_autocompleteSearchResults = v5;

    [(CNAutocompleteSearchManager *)v2->_manager setImplicitGroupCreationThreshold:2];
    [(CNAutocompleteSearchManager *)v2->_manager setIncludeUpcomingEventMembers:1];
  }

  return v2;
}

- (void)_reset
{
  [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
  corecipientSearchResults = self->_corecipientSearchResults;

  [(NSMutableArray *)corecipientSearchResults removeAllObjects];
}

- (void)searchWithString:(id)a3 enteredRecipients:(id)a4 title:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  [(MFMailComposeContactsSearchController *)self _cancelSearchAndNotify:0];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"MFMailComposeContactsSearchControllerWillBeginSearch" object:self userInfo:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained sendingAccountProxyForComposeContactsSearchController:self];
  manager = self->_manager;
  v14 = [v12 uniqueID];
  [(CNAutocompleteSearchManager *)manager setSendingAccountIdentifier:v14];

  v15 = [WeakRetained addressableGroupResultStyleForComposeContactsSearchController:self];
  v16 = objc_alloc_init(MEMORY[0x1E69963C8]);
  [v16 setAddressableGroupResultStyle:v15];
  [(CNAutocompleteSearchManager *)self->_manager setSearchControllerOptions:v16];
  v17 = objc_alloc_init(MEMORY[0x1E6996330]);
  v18 = [v8 arrayByApplyingSelector:sel_uncommentedAddress];
  [v17 setOtherAddressesAlreadyChosen:v18];

  [v17 setTitle:v9];
  v19 = [(CNAutocompleteSearchManager *)self->_manager searchForText:v20 withAutocompleteFetchContext:v17 consumer:self];
  [(MFMailComposeContactsSearchController *)self setTaskID:v19];
}

- (void)_cancelSearchAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = self->_waitingOnSearchResultsCount != 0;
  if (self->_taskID)
  {
    [(CNAutocompleteSearchManager *)self->_manager cancelTaskWithID:?];
    [(MFMailComposeContactsSearchController *)self setTaskID:0];
    v5 = 1;
  }

  [(MFMailComposeContactsSearchController *)self _reset];
  self->_foundAnySearchResults = 0;
  if (v3 && v5)
  {

    [(MFMailComposeContactsSearchController *)self _finishSearch];
  }
}

- (void)findCorecipientsWithRecipients:(id)a3
{
  v14 = a3;
  [(MFMailComposeContactsSearchController *)self _reset];
  if (self->_corecipientSearchTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_manager cancelTaskWithID:?];
    corecipientSearchTaskID = self->_corecipientSearchTaskID;
    self->_corecipientSearchTaskID = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v14 count])
  {
    v6 = [WeakRetained sendingAccountProxyForComposeContactsSearchController:self];
    manager = self->_manager;
    v8 = [v6 uniqueID];
    [(CNAutocompleteSearchManager *)manager setSendingAccountIdentifier:v8];

    v9 = [WeakRetained addressableGroupResultStyleForComposeContactsSearchController:self];
    v10 = objc_alloc_init(MEMORY[0x1E69963C8]);
    [v10 setAddressableGroupResultStyle:v9];
    [(CNAutocompleteSearchManager *)self->_manager setSearchControllerOptions:v10];
    v11 = objc_alloc_init(MEMORY[0x1E6996330]);
    [v11 setOtherAddressesAlreadyChosen:v14];
    v12 = [(CNAutocompleteSearchManager *)self->_manager searchForCorecipientsWithAutocompleteFetchContext:v11 consumer:self];
    v13 = self->_corecipientSearchTaskID;
    self->_corecipientSearchTaskID = v12;
  }

  else
  {
    [WeakRetained composeContactsSearchController:self didFindCorecipients:0];
  }
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  [(NSMutableArray *)self->_autocompleteSearchResults addObjectsFromArray:?];
  self->_foundAnySearchResults |= [(NSMutableArray *)self->_autocompleteSearchResults count]!= 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeContactsSearchController:self didSortResults:self->_autocompleteSearchResults];
}

- (void)finishedSearchingForAutocompleteResults
{
  self->_foundAnySearchResults |= [(NSMutableArray *)self->_autocompleteSearchResults count]!= 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeContactsSearchController:self didSortResults:self->_autocompleteSearchResults];

  [(MFMailComposeContactsSearchController *)self _finishSearch];
}

- (void)consumeCorecipientSearchResults:(id)a3 taskID:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  corecipientSearchResults = self->_corecipientSearchResults;
  if (!corecipientSearchResults)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = self->_corecipientSearchResults;
    self->_corecipientSearchResults = v10;

    corecipientSearchResults = self->_corecipientSearchResults;
    v7 = v13;
  }

  [(NSMutableArray *)corecipientSearchResults addObjectsFromArray:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeContactsSearchController:self didFindCorecipients:self->_corecipientSearchResults];
}

- (void)finishedSearchingForCorecipients
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeContactsSearchController:self didFindCorecipients:self->_corecipientSearchResults];

  [(MFMailComposeContactsSearchController *)self _finishSearch];
}

- (void)finishedTaskWithID:(id)a3
{
  v6 = a3;
  v4 = [(MFMailComposeContactsSearchController *)self taskID];

  if (v4 == v6)
  {
    [(MFMailComposeContactsSearchController *)self setTaskID:0];
    [(MFMailComposeContactsSearchController *)self _finishSearch];
  }

  else
  {
    corecipientSearchTaskID = self->_corecipientSearchTaskID;
    if (corecipientSearchTaskID == v6)
    {
      self->_corecipientSearchTaskID = 0;
    }
  }
}

- (void)_finishSearch
{
  if (!self->_waitingOnSearchResultsCount)
  {
    v3 = [(MFMailComposeContactsSearchController *)self taskID];

    if (!v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MFMailComposeContactsSearchController__finishSearch__block_invoke;
      block[3] = &unk_1E806C570;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"MFMailComposeContactsSearchControllerDidEndSearch" object:self userInfo:0];
    }
  }
}

void __54__MFMailComposeContactsSearchController__finishSearch__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained composeContactsSearchController:*(a1 + 32) finishedWithResults:*(*(a1 + 32) + 40)];
}

- (void)beganNetworkActivity
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 setNetworkActivityIndicatorVisible:1];
}

- (void)endedNetworkActivity
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 setNetworkActivityIndicatorVisible:0];
}

- (MFMailComposeContactsSearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end