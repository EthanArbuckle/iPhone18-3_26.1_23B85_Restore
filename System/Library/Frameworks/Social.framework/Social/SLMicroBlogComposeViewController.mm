@interface SLMicroBlogComposeViewController
- (BOOL)_countMediaAttachmentsTowardCharacterCount;
- (BOOL)isContentValid;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (SLMicroBlogComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SLMicroBlogSheetDelegate)microBlogSheetDelegate;
- (id)_accountConfigurationItem;
- (id)_locationConfigurationItem;
- (id)_mentionsSearchString;
- (id)_placeViewController;
- (id)completeText:(id)a3 withAttachments:(id)a4;
- (id)configurationItems;
- (int)_charactersRemainingWithText:(id)a3;
- (int)characterCountForEnteredText:(id)a3 attachments:(id)a4;
- (int64_t)_characterCountForText:(id)a3;
- (void)_beginLoadingAccountProfileImages;
- (void)_dismissMentionsViewController;
- (void)_hostApplicationDidEnterBackground;
- (void)_hostApplicationWillEnterForeground;
- (void)_performLocationAction;
- (void)_presentAccountPickerController;
- (void)_presentMentionsViewControllerIfApplicableForSearchString:(id)a3;
- (void)_presentMentionsViewControllerWithSearchString:(id)a3;
- (void)_presentNoAccountsAlertIfNecessaryAndReady;
- (void)_presentPlaceViewController;
- (void)accountsViewController:(id)a3 didSelectAccountUserRecord:(id)a4;
- (void)applyMention:(id)a3;
- (void)didSelectPost;
- (void)loadView;
- (void)mentionsViewController:(id)a3 finishedWithResult:(id)a4;
- (void)noteLocationInfoChanged:(id)a3;
- (void)placeViewController:(id)a3 willDisappear:(BOOL)a4;
- (void)presentationAnimationDidFinish;
- (void)setGeotagStatus:(int)a3;
- (void)setMicroBlogSheetDelegate:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)updateGeotagStatus;
- (void)updateShortenedURLCost;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SLMicroBlogComposeViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v4 loadView];
  v3 = [(SLComposeServiceViewController *)self textView];
  [v3 setKeyboardType:9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v13 viewDidAppear:a3];
  [(SLMicroBlogComposeViewController *)self updateShortenedURLCost];
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 beginPotentialLocationUse];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__SLMicroBlogComposeViewController_viewDidAppear___block_invoke;
  v10 = &unk_1E8175FB0;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x1C6917BF0](&v7);
  v6 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate:v7];
  [v6 setLocationInformationChangedBlock:v5];

  [(SLMicroBlogComposeViewController *)self updateGeotagStatus];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SLMicroBlogComposeViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained noteLocationInfoChanged:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v5 viewWillDisappear:a3];
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 endPotentialLocationUse];
}

- (void)_beginLoadingAccountProfileImages
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = self->_serviceAccountTypeIdentifier;
  _SLLog(v2, 7, @"MicroBlog for %@ – _beginLoadingAccountProfileImages");
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  objc_initWeak(&location, self->_accountViewController);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_accountUserRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16, v4];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 profileImageCache];
        v11 = v10 == 0;

        if (v11)
        {
          v13 = [v9 screen_name];
          _SLLog(v2, 7, @"MicroBlog for %@ – fetching profile image for %@");

          v12 = [v9 screen_name];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke;
          v15[3] = &unk_1E8176000;
          v16 = v4;
          v17 = v9;
          objc_copyWeak(&v18, &location);
          [WeakRetained fetchProfileImageDataForScreenName:v12 completion:v15];

          objc_destroyWeak(&v18);
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

void __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) screen_name];
  v10 = v9;
  if (!v6 || v7)
  {
    _SLLog(v3, 7, @"MicroBlog for %@ – failed to get profile image data for %@ with error %{public}@");
  }

  else
  {
    v13 = v9;
    _SLLog(v3, 7, @"MicroBlog for %@ – got profile image data for %@");

    v11 = [MEMORY[0x1E69DCAB8] imageWithData:{v6, v8, v13}];
    [*(a1 + 40) setProfileImageCache:v11];

    v12 = [*(a1 + 40) profileImageCache];
    v14 = [*(a1 + 40) screen_name];
    _SLLog(v3, 7, @"MicroBlog for %@ – built profile image %@ for %@");

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke_2;
    block[3] = &unk_1E8175FD8;
    objc_copyWeak(&v16, (a1 + 48));
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v16);
  }
}

void __69__SLMicroBlogComposeViewController__beginLoadingAccountProfileImages__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didUpdateAccountUserRecord:*(a1 + 32)];
}

- (void)_presentAccountPickerController
{
  serviceAccountTypeIdentifier = self->_serviceAccountTypeIdentifier;
  _SLLog(v2, 7, @"MicroBlog for %@ – _presentAccountPickerController");
  v4 = objc_alloc_init(SLMicroBlogAccountsTableViewController);
  accountViewController = self->_accountViewController;
  self->_accountViewController = v4;

  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setSelectionDelegate:self, serviceAccountTypeIdentifier];
  [(SLMicroBlogComposeViewController *)self _beginLoadingAccountProfileImages];
  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setAccountUserRecords:self->_accountUserRecords];
  [(SLMicroBlogAccountsTableViewController *)self->_accountViewController setCurrentAccountUserRecord:self->_selectedAccountUserRecord];
  v6 = self->_accountViewController;

  [(SLComposeServiceViewController *)self pushConfigurationViewController:v6];
}

- (void)accountsViewController:(id)a3 didSelectAccountUserRecord:(id)a4
{
  v6 = a4;
  serviceAccountTypeIdentifier = self->_serviceAccountTypeIdentifier;
  _SLLog(v4, 7, @"MicroBlog for %@ – didSelectAccountUserRecord %@");
  selectedAccountUserRecord = self->_selectedAccountUserRecord;
  self->_selectedAccountUserRecord = v6;
  v8 = v6;

  v9 = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name:serviceAccountTypeIdentifier];
  [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:v9];

  v12 = [(NSArray *)self->_accountIdentifiers objectAtIndex:[(NSArray *)self->_accountUserRecords indexOfObject:v8]];

  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  [WeakRetained setActiveAccountIdentifier:v12];
  [(SLComposeServiceViewController *)self popConfigurationViewController];
}

- (id)_accountConfigurationItem
{
  accountUserRecords = self->_accountUserRecords;
  if (accountUserRecords)
  {
    v5 = [(NSArray *)accountUserRecords count];
    _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from _accountUserRecords");
  }

  else
  {
    v5 = [MEMORY[0x1E6959A48] countOfAccountsWithAccountTypeIdentifier:self->_serviceAccountTypeIdentifier];
    serviceAccountTypeIdentifier = self->_serviceAccountTypeIdentifier;
    _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from account store cache");
    if (v5 == -1)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6959A48]);
      [v6 updateExistenceCacheOfAccountWithTypeIdentifier:{self->_serviceAccountTypeIdentifier, serviceAccountTypeIdentifier, -1}];
      v7 = [v6 accountTypeWithAccountTypeIdentifier:self->_serviceAccountTypeIdentifier];
      v8 = [v6 accountsWithAccountType:v7];
      v5 = [v8 count];

      _SLLog(v2, 7, @"MicroBlog for %@ – got countOfAccounts %d from account store");
    }
  }

  accountConfigurationItem = self->_accountConfigurationItem;
  if (v5 < 2)
  {
    self->_accountConfigurationItem = 0;
  }

  else if (!accountConfigurationItem)
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc_init(SLComposeSheetConfigurationItem);
    v11 = self->_accountConfigurationItem;
    self->_accountConfigurationItem = v10;

    v12 = SLSocialFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"ACCOUNT_LABEL_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setTitle:v13];

    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:&stru_1F41EC300];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__SLMicroBlogComposeViewController__accountConfigurationItem__block_invoke;
    v18[3] = &unk_1E8175C10;
    objc_copyWeak(&v19, &location);
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setTapHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  if (self->_accountConfigurationItem)
  {
    v14 = [(SLMicroBlogUserRecord *)self->_selectedAccountUserRecord screen_name];
    [(SLComposeSheetConfigurationItem *)self->_accountConfigurationItem setValue:v14];

    v15 = self->_accountConfigurationItem;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __61__SLMicroBlogComposeViewController__accountConfigurationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAccountPickerController];
}

- (void)_performLocationAction
{
  if (self->_currentPlace)
  {

    [(SLMicroBlogComposeViewController *)self _presentPlaceViewController];
  }

  else
  {
    v3 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
    [v3 setGeotagStatus:1];

    [(SLMicroBlogComposeViewController *)self setGeotagStatus:1];
  }
}

- (id)_locationConfigurationItem
{
  locationConfigurationItem = self->_locationConfigurationItem;
  if (!locationConfigurationItem)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(SLComposeSheetConfigurationItem);
    v5 = self->_locationConfigurationItem;
    self->_locationConfigurationItem = v4;

    v6 = SLSocialFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SHEET_LOCATION_ACTION_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setTitle:v7];

    v8 = SLSocialFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"SHEET_LOCATION_NO_VALUE" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setValue:v9];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__SLMicroBlogComposeViewController__locationConfigurationItem__block_invoke;
    v11[3] = &unk_1E8175C10;
    objc_copyWeak(&v12, &location);
    [(SLComposeSheetConfigurationItem *)self->_locationConfigurationItem setTapHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    locationConfigurationItem = self->_locationConfigurationItem;
  }

  return locationConfigurationItem;
}

void __62__SLMicroBlogComposeViewController__locationConfigurationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performLocationAction];
}

- (id)configurationItems
{
  v3 = objc_opt_new();
  v4 = [(SLMicroBlogComposeViewController *)self _accountConfigurationItem];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
  if (self->_locationConfigurationItem)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (SLMicroBlogSheetDelegate)microBlogSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);

  return WeakRetained;
}

- (void)setMicroBlogSheetDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_microBlogSheetDelegate, v4);
    v6 = [v4 serviceAccountTypeIdentifier];
    serviceAccountTypeIdentifier = self->_serviceAccountTypeIdentifier;
    self->_serviceAccountTypeIdentifier = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke;
    v8[3] = &unk_1E8176050;
    v9 = v4;
    v10 = self;
    [v9 fetchSessionInfo:v8];
  }
}

void __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke_2;
  v10[3] = &unk_1E8176028;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __62__SLMicroBlogComposeViewController_setMicroBlogSheetDelegate___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) serviceAccountTypeIdentifier];
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  _SLLog(v1, 7, @"MicroBlog for %@ – fetched session info %@\nand got error %{public}@");

  v4 = [*(a1 + 40) objectForKey:{@"accountEntries", v3, v26, v27}];
  v5 = *(a1 + 56);
  v6 = *(v5 + 1224);
  v7 = MEMORY[0x1E695E0F0];
  *(v5 + 1224) = MEMORY[0x1E695E0F0];

  v8 = *(a1 + 56);
  v9 = *(v8 + 1232);
  *(v8 + 1232) = v7;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = *(*(a1 + 56) + 1232);
        v16 = [v14 objectForKeyedSubscript:@"identifier"];
        v17 = [v15 arrayByAddingObject:v16];
        v18 = *(a1 + 56);
        v19 = *(v18 + 1232);
        *(v18 + 1232) = v17;

        v20 = objc_alloc_init(SLMicroBlogUserRecord);
        v21 = [v14 objectForKeyedSubscript:@"accountDescription"];
        [(SLMicroBlogUserRecord *)v20 setScreen_name:v21];

        v22 = [*(*(a1 + 56) + 1224) arrayByAddingObject:v20];
        v23 = *(a1 + 56);
        v24 = *(v23 + 1224);
        *(v23 + 1224) = v22;

        v25 = [v14 objectForKeyedSubscript:@"active"];
        LODWORD(v21) = [v25 BOOLValue];

        if (v21)
        {
          objc_storeStrong((*(a1 + 56) + 1240), v20);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  [*(a1 + 56) reloadConfigurationItems];
  [*(a1 + 56) _presentNoAccountsAlertIfNecessaryAndReady];
}

- (void)presentationAnimationDidFinish
{
  WeakRetained = objc_loadWeakRetained(&self->_microBlogSheetDelegate);
  [WeakRetained stopDeferringExpensiveOperations];
  [(SLMicroBlogComposeViewController *)self _presentNoAccountsAlertIfNecessaryAndReady];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained ensureUserRecordStore];
  }
}

- (void)_presentNoAccountsAlertIfNecessaryAndReady
{
  if ([(SLComposeServiceViewController *)self wasPresented])
  {
    accountUserRecords = self->_accountUserRecords;
    if (accountUserRecords)
    {
      if (![(NSArray *)accountUserRecords count])
      {
        _SLLog(v2, 7, @"MicroBlog for %@ – presenting no accounts alert");

        [(SLMicroBlogComposeViewController *)self presentNoAccountsAlert];
      }
    }
  }
}

- (SLMicroBlogComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogComposeViewController;
  v4 = [(SLComposeServiceViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_shortenedURLCost = 22;
    v4->_maxURLLength = -1;
    [(SLComposeServiceViewController *)v4 setMaxImageAttachmentSize:307200];
  }

  return v5;
}

- (void)_hostApplicationWillEnterForeground
{
  _SLLog(v2, 7, @"SLMicroBlogComposeViewController _hostApplicationWillEnterForeground");
  v5.receiver = self;
  v5.super_class = SLMicroBlogComposeViewController;
  [(SLMicroBlogComposeViewController *)&v5 _hostApplicationWillEnterForeground];
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 beginPotentialLocationUse];
}

- (void)_hostApplicationDidEnterBackground
{
  _SLLog(v2, 7, @"SLMicroBlogComposeViewController _hostApplicationDidEnterBackground");
  v5.receiver = self;
  v5.super_class = SLMicroBlogComposeViewController;
  [(SLMicroBlogComposeViewController *)&v5 _hostApplicationDidEnterBackground];
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 endPotentialLocationUse];
}

- (int)_charactersRemainingWithText:(id)a3
{
  v4 = a3;
  v5 = [(SLComposeServiceViewController *)self attachments];
  LODWORD(self) = [(SLMicroBlogComposeViewController *)self characterCountForEnteredText:v4 attachments:v5];

  return 140 - self;
}

- (BOOL)isContentValid
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_maxURLLength == -1)
  {
    v8 = 1;
  }

  else
  {
    maxURLLength = self->_maxURLLength;
    _SLLog(v2, 7, @"_maxURLLength is %i");
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [(SLComposeServiceViewController *)self attachments];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          if ([v10 type] == 4 || objc_msgSend(v10, "type") == 5 || objc_msgSend(v10, "type") == 6 || objc_msgSend(v10, "type") == 7)
          {
            v11 = [v10 payload];
            v12 = [v11 absoluteString];
            v13 = [v12 length] <= self->_maxURLLength;

            v8 &= v13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1;
    }
  }

  v14 = [(SLComposeServiceViewController *)self textView];
  v15 = [v14 text];
  if ([v15 length])
  {
  }

  else
  {
    v16 = [(SLComposeServiceViewController *)self attachments];
    v17 = [v16 count] != 0;

    v8 &= v17;
  }

  v18 = [(SLComposeServiceViewController *)self textView];
  v19 = [v18 text];
  v20 = [(SLMicroBlogComposeViewController *)self _charactersRemainingWithText:v19];

  v21 = [MEMORY[0x1E696AD98] numberWithInt:v20];
  [(SLComposeServiceViewController *)self setCharactersRemaining:v21];

  return (v20 >= 0) & v8;
}

- (id)completeText:(id)a3 withAttachments:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 mutableCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 4 || objc_msgSend(v12, "type") == 5 || objc_msgSend(v12, "type") == 6 || objc_msgSend(v12, "type") == 7)
        {
          if ([v6 length])
          {
            [v6 appendString:@" "];
          }

          v13 = [v12 payload];
          v14 = [v13 absoluteString];
          [v6 appendString:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (int64_t)_characterCountForText:(id)a3
{
  v4 = a3;
  v5 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
    v8 = [v7 characterCountForText:v4 shortenedURLCost:self->_shortenedURLCost];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_countMediaAttachmentsTowardCharacterCount
{
  v3 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v6 = [v5 countMediaAttachmentsTowardCharacterCount];

  return v6;
}

- (int)characterCountForEnteredText:(id)a3 attachments:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(SLMicroBlogComposeViewController *)self completeText:a3 withAttachments:v6];
  v8 = [(SLMicroBlogComposeViewController *)self _characterCountForText:v7];
  if ([(SLMicroBlogComposeViewController *)self _countMediaAttachmentsTowardCharacterCount])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (([*(*(&v15 + 1) + 8 * i) type] & 0xFFFFFFFFFFFFFFFCLL) != 4)
          {
            v8 += LODWORD(self->_shortenedURLCost) + 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (void)updateShortenedURLCost
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke;
  v5[3] = &unk_1E81760A0;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 fetchCurrentUrlLimits:v3];
}

void __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke_2;
  v10[3] = &unk_1E8176078;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __58__SLMicroBlogComposeViewController_updateShortenedURLCost__block_invoke_2(void *a1)
{
  _SLLog(v1, 7, @"updateShortenedURLCost got tcoLength %d maxURLLength %d error %{public}@");
  if (!a1[4])
  {
    *(a1[5] + 1288) = a1[6];
    *(a1[5] + 1296) = a1[7];
  }

  v3 = a1[5];

  return [v3 validateContent];
}

- (void)_presentPlaceViewController
{
  if (!self->_isPresentingPlaces)
  {
    v3 = [(SLMicroBlogComposeViewController *)self _placeViewController];
    [(SLComposeServiceViewController *)self pushConfigurationViewController:v3];

    self->_isPresentingPlaces = 1;
  }
}

- (void)updateGeotagStatus
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke;
  v5[3] = &unk_1E81760F0;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  v4 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v4 fetchGeotagStatus:v3];
}

void __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke(uint64_t a1, int a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke_2;
  v2[3] = &unk_1E81760C8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __54__SLMicroBlogComposeViewController_updateGeotagStatus__block_invoke_2(uint64_t a1)
{
  _SLLog(v1, 6, @"Geotag status updated to %i");
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setGeotagStatus:v4];
}

- (id)_placeViewController
{
  placeViewController = self->_placeViewController;
  if (!placeViewController)
  {
    v4 = [SLSheetPlaceViewController alloc];
    v5 = [objc_opt_class() serviceBundle];
    v6 = [(SLSheetPlaceViewController *)v4 initWithPlaceDataSource:0 effectiveBundle:v5];
    v7 = self->_placeViewController;
    self->_placeViewController = v6;

    [(SLSheetPlaceViewController *)self->_placeViewController setSelectionDelegate:self];
    [(SLSheetPlaceViewController *)self->_placeViewController setSearchEnabled:0];
    placeViewController = self->_placeViewController;
  }

  return placeViewController;
}

- (void)placeViewController:(id)a3 willDisappear:(BOOL)a4
{
  if (self->_currentPlace)
  {
    v5 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem:a3];
    [v5 setValuePending:0];

    v6 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v7 = [(SLPlace *)self->_currentPlace name];
    [v6 setValue:v7];
  }

  else
  {
    v8 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate:a3];
    [v8 setGeotagStatus:0];

    [(SLMicroBlogComposeViewController *)self updateGeotagStatus];
  }

  self->_isPresentingPlaces = 0;
}

- (void)setGeotagStatus:(int)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v5 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
      v6 = SLSocialFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"LOCATING" value:&stru_1F41EC300 table:@"Localizable"];
      [v5 setValue:v7];

      v8 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
      v17 = v8;
      v9 = 1;
      goto LABEL_10;
    }

    v10 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v11 = SLSocialFrameworkBundle();
    v12 = v11;
    v13 = @"SHEET_LOCATION_NO_VALUE";
LABEL_9:
    v14 = [v11 localizedStringForKey:v13 value:&stru_1F41EC300 table:@"Localizable"];
    [v10 setValue:v14];

    v8 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v17 = v8;
    v9 = 0;
LABEL_10:
    [v8 setValuePending:v9];

    return;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return;
    }

    v10 = [(SLMicroBlogComposeViewController *)self _locationConfigurationItem];
    v11 = SLSocialFrameworkBundle();
    v12 = v11;
    v13 = @"SHEET_LOCATION_ACTION_DISALLOWED_VALUE";
    goto LABEL_9;
  }

  if (self->_currentPlace)
  {
    v15 = [(SLMicroBlogComposeViewController *)self _placeViewController];
    v18[0] = self->_currentPlace;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v15 setPlaces:v16];

    [v15 setSelectedPlace:self->_currentPlace];
    [(SLMicroBlogComposeViewController *)self _presentPlaceViewController];
  }

  else
  {

    _SLLog(v3, 3, @"We have SLGeotagStatusYes but no place to display. That's wrong.");
  }
}

- (void)noteLocationInfoChanged:(id)a3
{
  v15 = a3;
  _SLLog(v3, 6, @"noteLocationInfoChanged:%@");
  v5 = [v15 objectForKeyedSubscript:{@"locationGeoString", v15}];

  if (v5)
  {
    v6 = objc_alloc_init(SLPlace);
    currentPlace = self->_currentPlace;
    self->_currentPlace = v6;

    v8 = [v15 objectForKeyedSubscript:@"locationGeoString"];
    [(SLPlace *)self->_currentPlace setName:v8];

    [(SLPlace *)self->_currentPlace setIdentifier:@"currentPlaceIdentifier"];
    v9 = [v15 objectForKeyedSubscript:@"latitude"];
    if (v9 && (v10 = v9, [v15 objectForKeyedSubscript:@"longitude"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = [v15 objectForKeyedSubscript:@"latitude"];
      [v12 doubleValue];
      [(SLPlace *)self->_currentPlace setLatitude:?];

      v13 = [v15 objectForKeyedSubscript:@"longitude"];
      [v13 doubleValue];
      [(SLPlace *)self->_currentPlace setLongitude:?];
    }

    else
    {
      [(SLPlace *)self->_currentPlace setLatitude:-180.0];
      [(SLPlace *)self->_currentPlace setLongitude:-180.0];
    }
  }

  v14 = [v15 objectForKey:@"geotagStatus"];
  -[SLMicroBlogComposeViewController setGeotagStatus:](self, "setGeotagStatus:", [v14 intValue]);
}

- (void)_presentMentionsViewControllerWithSearchString:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"_presentMentionsViewController");
  v6 = [SLMicroBlogMentionsViewController alloc];
  v7 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v8 = [(SLMicroBlogMentionsViewController *)v6 initWithSheetDelegate:v7];
  mentionsViewController = self->_mentionsViewController;
  self->_mentionsViewController = v8;

  [(SLMicroBlogMentionsViewController *)self->_mentionsViewController setDelegate:self];
  [(SLMicroBlogMentionsViewController *)self->_mentionsViewController setSearchString:v5];

  v10 = self->_mentionsViewController;

  [(SLComposeServiceViewController *)self setAutoCompletionViewController:v10];
}

- (void)_presentMentionsViewControllerIfApplicableForSearchString:(id)a3
{
  v4 = a3;
  v5 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke;
  v7[3] = &unk_1E8176140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 recordsMatchingPrefixString:v6 completion:v7];
}

uint64_t __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke_2;
    v5[3] = &unk_1E8176118;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  return 0;
}

void __94__SLMicroBlogComposeViewController__presentMentionsViewControllerIfApplicableForSearchString___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _mentionsSearchString];
  v6 = *(*(a1 + 32) + 1200);
  v7 = v3;
  v4 = *(a1 + 40);
  v5 = v3;
  _SLLog(v1, 7, @"Mentions got initial recordsMatchingPrefixString: '%@' response. latestMentionsString '%@' _mentionsViewController %@");
  if (!*(*(a1 + 32) + 1200))
  {
    if ([v7 length])
    {
      [*(a1 + 32) _presentMentionsViewControllerWithSearchString:*(a1 + 40)];
      if (([v7 isEqualToString:*(a1 + 40)] & 1) == 0)
      {
        [*(*(a1 + 32) + 1200) setSearchString:v7];
      }
    }
  }
}

- (void)_dismissMentionsViewController
{
  mentionsViewController = self->_mentionsViewController;
  self->_mentionsViewController = 0;

  [(SLComposeServiceViewController *)self setAutoCompletionViewController:0];
}

- (void)mentionsViewController:(id)a3 finishedWithResult:(id)a4
{
  if (a4)
  {
    [(SLMicroBlogComposeViewController *)self applyMention:a4];
  }

  [(SLMicroBlogComposeViewController *)self _dismissMentionsViewController];
}

- (void)applyMention:(id)a3
{
  v4 = a3;
  v5 = [(SLComposeServiceViewController *)self textView];
  v6 = [v5 selectedRange];
  v8 = v7;

  v9 = [(SLComposeServiceViewController *)self textView];
  v10 = [v9 text];

  mentionStartLocation = self->_mentionStartLocation;
  v15 = [v10 stringByReplacingCharactersInRange:mentionStartLocation withString:{v6 + v8 - mentionStartLocation, v4}];

  v12 = [v4 length];
  v13 = [(SLComposeServiceViewController *)self textView];
  [v13 setText:v15];

  v14 = [(SLComposeServiceViewController *)self textView];
  [v14 setSelectedRange:{v12 + mentionStartLocation, 0}];

  [(SLComposeServiceViewController *)self validateContent];
}

- (id)_mentionsSearchString
{
  v3 = [(SLComposeServiceViewController *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  mentionStartLocation = self->_mentionStartLocation;
  if (v4 >= mentionStartLocation)
  {
    v9 = v6 + v4 - mentionStartLocation;
    v10 = [(SLComposeServiceViewController *)self textView];
    v11 = [v10 text];
    v8 = [v11 substringWithRange:{mentionStartLocation, v9}];
  }

  else
  {
    v8 = &stru_1F41EC300;
  }

  return v8;
}

- (void)didSelectPost
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v24 didSelectPost];
  v4 = objc_alloc_init(SLMicroBlogStatus);
  v5 = [(SLComposeServiceViewController *)self textView];
  v6 = [v5 text];
  v7 = [(SLComposeServiceViewController *)self attachments];
  v8 = [(SLMicroBlogComposeViewController *)self completeText:v6 withAttachments:v7];
  [(SLMicroBlogStatus *)v4 setStatusText:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(SLComposeServiceViewController *)self attachments];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 type])
        {
          if ([v16 type] != 2)
          {
            continue;
          }

          v17 = [v16 payload];
          if (v17)
          {
            v18 = v10;
LABEL_12:
            [v18 addObject:v17];
          }
        }

        else
        {
          v17 = [v16 payload];
          if (v17)
          {
            v18 = v9;
            goto LABEL_12;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  [(SLMicroBlogStatus *)v4 setImageData:v9];
  [(SLMicroBlogStatus *)v4 setImageAssetURLs:v10];
  v19 = [(SLMicroBlogComposeViewController *)self microBlogSheetDelegate];
  [v19 sendStatus:v4 completion:&__block_literal_global_3];

  if (![(SLMicroBlogComposeViewController *)self _hostProcessIdentifier])
  {
    _SLLog(v2, 6, @"hostPid is 0 - obtaining pid of current process instead");
    getpid();
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v19 = [v10 markedTextRange];
  v18 = length;
  _SLLog(v5, 7, @"SLMicroBlogComposeViewController textView:shouldChangeInRange: %d %d replacementText: %@ (markedTextRange %@)");

  if (!self->_mentionsViewController)
  {
    v13 = 0;
    if (location)
    {
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v10 markedTextRange];
        v13 = v12 == 0;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
      }
    }

    if (v13)
    {
      v14 = [v10 text];
      if (location - 1 < [v14 length])
      {
        v15 = [v14 substringWithRange:{location - 1, 1}];
        if ([v15 isEqualToString:@"@"] && objc_msgSend(v11, "length"))
        {
          v16 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          if ([v16 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", 0)}])
          {
            self->_mentionStartLocation = location;
            self->_mentionPendingStart = 1;
            _SLLog(v5, 7, @"SLMicroBlogComposeViewController setting _mentionPendingStart to YES");
          }
        }
      }
    }
  }

  return 1;
}

- (void)textViewDidChange:(id)a3
{
  mentionsViewController = self->_mentionsViewController;
  mentionPendingStart = self->_mentionPendingStart;
  v7 = a3;
  v10 = [v7 markedTextRange];
  _SLLog(v3, 7, @"SLMicroBlogComposeViewController textViewDidChange: _mentionsViewController %lx _mentionPendingStart %d (markedTextRange %@)");

  v11.receiver = self;
  v11.super_class = SLMicroBlogComposeViewController;
  [(SLComposeServiceViewController *)&v11 textViewDidChange:v7, mentionsViewController, mentionPendingStart, v10];
  v8 = [v7 markedTextRange];

  if (!v8)
  {
    if (!self->_mentionsViewController && self->_mentionPendingStart)
    {
      v9 = [(SLMicroBlogComposeViewController *)self _mentionsSearchString];
      [(SLMicroBlogComposeViewController *)self _presentMentionsViewControllerIfApplicableForSearchString:v9];
    }

    self->_mentionPendingStart = 0;
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v5 = a3;
  v6 = [v5 selectedRange];
  [v5 selectedRange];
  v8 = v7;
  v10 = [v5 markedTextRange];
  _SLLog(v3, 7, @"SLMicroBlogComposeViewController textViewDidChangeSelection to %d %d (markedTextRange %@)");

  if (self->_mentionsViewController)
  {
    v9 = [v5 markedTextRange];

    if (!v9)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__SLMicroBlogComposeViewController_textViewDidChangeSelection___block_invoke;
      block[3] = &unk_1E81757C8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __63__SLMicroBlogComposeViewController_textViewDidChangeSelection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[150])
  {
    return;
  }

  v5 = [v2 _mentionsSearchString];
  if (![v5 length])
  {
    v4 = *(a1 + 32);
    goto LABEL_7;
  }

  v3 = [v5 rangeOfString:@" "];
  v4 = *(a1 + 32);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    [v4 _dismissMentionsViewController];
    goto LABEL_8;
  }

  [v4[150] setSearchString:v5];
LABEL_8:
}

@end