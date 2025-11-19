@interface MPKeypadViewController
- (BOOL)_anyContactsExist;
- (MPKeyPadViewControllerDelegate)delegate;
- (MPKeypadViewController)initWithContactStore:(id)a3 enableSmartDialer:(BOOL)a4 orientationProvider:(id)a5;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4;
- (id)_metadataForDialerText;
- (id)_metadataNameForDialerText;
- (id)_newContactWithPhoneNumber:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)createMenuForAddContactButton;
- (id)pseudoNameStringForDestinationID:(id)a3;
- (id)senderIdentityMenuForDialerView:(id)a3 selectedSenderIdentity:(id)a4;
- (int64_t)_IDSStatusForService:(id)a3 withDestination:(id)a4;
- (void)_addNewContact:(id)a3;
- (void)_clearIDSStatusCache;
- (void)_metadataCacheDidUpdate;
- (void)_updateIDSStatusIfNeededForService:(id)a3 withDestination:(id)a4;
- (void)_updateMetadataCacheIfPossible;
- (void)_updateNameFromMetadataCache;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)handleSelectedSenderIdentity:(id)a3;
- (void)presentAppleSupportGuidedHelp;
- (void)presentContactsSearchFor:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)refreshLocalizedSenderIdentity;
- (void)searchBusinessesFor:(id)a3 completionHandler:(id)a4;
- (void)searchButtonPressed:(id)a3;
- (void)updateIDSStatus;
- (void)updateLocalizedSenderIdentity:(id)a3;
- (void)updateTabBarAppearanceToTransparent:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MPKeypadViewController

- (MPKeypadViewController)initWithContactStore:(id)a3 enableSmartDialer:(BOOL)a4 orientationProvider:(id)a5
{
  v15.receiver = self;
  v15.super_class = MPKeypadViewController;
  v6 = [(DialerController *)&v15 initWithDialerView:0 dialerType:0 contactStore:a3 appType:1 orientationProvider:a5];
  v7 = v6;
  if (v6)
  {
    v6->_enableSmartDialer = a4;
    v6->_enableSmartDialerExpandedSearch = 0;
    v8 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v8;

    v10 = objc_alloc_init(NSCache);
    IDSstatusCache = v7->_IDSstatusCache;
    v7->_IDSstatusCache = v10;

    v12 = objc_alloc_init(MPAnalyticsLogger);
    simLineSelectionAnalyticsReporter = v7->_simLineSelectionAnalyticsReporter;
    v7->_simLineSelectionAnalyticsReporter = v12;
  }

  return v7;
}

- (void)updateTabBarAppearanceToTransparent:(BOOL)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  if (v3)
  {
    [v6 configureWithTransparentBackground];
  }

  v5 = [(MPKeypadViewController *)self tabBarItem];
  [v5 setStandardAppearance:v6];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = MPKeypadViewController;
  [(MPKeypadViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(BCSBusinessQueryService);
  bizService = self->_bizService;
  self->_bizService = v3;

  v5 = [[BSBrandManager alloc] initWithBrandType:3 cachingEnabled:1];
  brandManager = self->_brandManager;
  self->_brandManager = v5;

  v7 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(MPKeypadViewController *)self setCallContextMenuInteraction:v7];

  v8 = [(DialerController *)self dialerView];
  v9 = [v8 callButton];
  v10 = [(MPKeypadViewController *)self callContextMenuInteraction];
  [v9 addInteraction:v10];

  if (PHDeviceSupportsDualSim())
  {
    v11 = [(DialerController *)self callProviderManager];
    [v11 addDelegate:self queue:0];
  }

  v12 = [(DialerController *)self dialerView];
  v13 = [v12 lcdView];
  [v13 setResultDelegate:self];

  v14 = [(DialerController *)self dialerView];
  v15 = [v14 addContactButton];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(DialerController *)self dialerView];
    v18 = [v17 addContactButton];

    objc_initWeak(&location, self);
    [v18 setContextMenuIsPrimary:1];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = __37__MPKeypadViewController_viewDidLoad__block_invoke;
    v27 = &unk_4C998;
    objc_copyWeak(&v28, &location);
    [v18 _setMenuProvider:&v24];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v19 = [(DialerController *)self dialerView:v24];
  v20 = [v19 searchButton];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [(DialerController *)self dialerView];
    v23 = [v22 searchButton];
    [v23 addTarget:self action:"searchButtonPressed:" forControlEvents:64];
  }

  [(MPKeypadViewController *)self updateTabBarAppearanceToTransparent:1];
}

id __37__MPKeypadViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 createMenuForAddContactButton];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v2 = [(MPKeypadViewController *)self featureFlags];
  if ([v2 phoneLargeFormatUIEnabled])
  {
    v3 = +[UIDevice currentDevice];
    v4 = [v3 userInterfaceIdiom];

    left = 16.0;
    top = 16.0;
    bottom = 16.0;
    right = 16.0;
    if (v4 == &dword_0 + 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
LABEL_6:
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_anyContactsExist
{
  v3 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v4 = [(DialerController *)self contactStore];
  v7 = 0;
  v5 = [v4 contactCountForFetchRequest:v3 error:&v7];

  LOBYTE(v4) = [v5 integerValue] > 0;
  return v4;
}

- (id)createMenuForAddContactButton
{
  if (self->super._lookupTimer)
  {
    [(MPKeypadViewController *)self _updateName];
  }

  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  v5 = [(DialerController *)self contactResultForPhoneNumber:v4];
  v6 = [v5 contacts];
  if ([v6 count])
  {

    goto LABEL_5;
  }

  v16 = [v4 length];

  if (!v16)
  {
LABEL_5:
    v7 = [v5 contacts];
    v8 = [v7 firstObject];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 contacts];
      v11 = [v10 firstObject];
      v12 = [v11 isSuggested];

      if (!v12)
      {
LABEL_17:
        v28 = 0;
        goto LABEL_18;
      }

      v13 = [v5 contacts];
      v14 = [v13 firstObject];
      v7 = [CNContactViewController viewControllerForUnknownContact:v14];

      [v7 setDelegate:self];
      v15 = [[UINavigationController alloc] initWithRootViewController:v7];
      [(MPKeypadViewController *)self presentViewController:v15 animated:1 completion:0];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (![(MPKeypadViewController *)self _anyContactsExist])
  {
    v7 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:v4];
    [(MPKeypadViewController *)self _addNewContact:v7];
    goto LABEL_16;
  }

  v17 = [(MPKeypadViewController *)self enableSmartDialer];
  v18 = @"person.crop.circle";
  if (v17)
  {
    v18 = @"plus";
  }

  v19 = v18;
  v20 = [(MPKeypadViewController *)self enableSmartDialer];
  v21 = @"person.crop.circle.badge.plus";
  if (v20)
  {
    v21 = @"person.text.rectangle";
  }

  v31 = v21;
  v38 = [NSBundle bundleForClass:objc_opt_class()];
  v36 = [v38 localizedStringForKey:@"ADD_TO_NEW" value:&stru_50D80 table:@"Dialer"];
  v35 = [UIImage systemImageNamed:v19];

  v37 = [NSBundle bundleForClass:objc_opt_class()];
  v34 = [v37 localizedStringForKey:@"ADD_TO_NEW" value:&stru_50D80 table:@"Dialer"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke;
  v40[3] = &unk_4C9C0;
  v40[4] = self;
  v41 = v4;
  v33 = [UIAction actionWithTitle:v36 image:v35 identifier:v34 handler:v40];
  v42[0] = v33;
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v32 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_50D80 table:@"Dialer"];
  v23 = [UIImage systemImageNamed:v31];

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_50D80 table:@"Dialer"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2;
  v39[3] = &unk_4C9E8;
  v39[4] = self;
  v26 = [UIAction actionWithTitle:v22 image:v23 identifier:v25 handler:v39];
  v42[1] = v26;
  v27 = [NSArray arrayWithObjects:v42 count:2];
  v28 = [UIMenu menuWithTitle:&stru_50D80 children:v27];

LABEL_18:
  v29 = [(MPKeypadViewController *)self delegate];
  [v29 didPressAddContactButton:3];

  return v28;
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:1];

  v3 = *(a1 + 32);
  v4 = [v3 _newContactWithPhoneNumber:*(a1 + 40)];
  [v3 _addNewContact:v4];
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:2];

  v4 = objc_alloc_init(CNContactPickerViewController);
  [v4 setAllowsCancel:1];
  [v4 setAutocloses:0];
  [v4 setDelegate:*(a1 + 32)];
  [v4 setMode:2];
  v3 = [NSPredicate predicateWithValue:1];
  [v4 setPredicateForSelectionOfContact:v3];

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

- (id)_metadataNameForDialerText
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = [TUMetadataDestinationID alloc];
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:v4 isoCountryCode:v6];

    if (v7)
    {
      v8 = [(MPKeypadViewController *)self metadataCache];
      v9 = [v8 metadataForDestinationID:v7];

      v10 = TUCallDirectoryMetadataCacheDataProvider_ptr;
      v11 = [v9 metadataForProvider:objc_opt_class()];

      if (v11)
      {
        goto LABEL_6;
      }

      v10 = TUMapsMetadataCacheDataProvider_ptr;
      v12 = [v9 metadataForProvider:objc_opt_class()];

      if (v12 || (v10 = TUSuggestionsMetadataCacheDataProvider_ptr, [v9 metadataForProvider:objc_opt_class()], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
LABEL_6:
        v14 = *v10;
        v13 = [v9 metadataForProvider:objc_opt_class()];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_metadataForDialerText
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = [TUMetadataDestinationID alloc];
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:v4 isoCountryCode:v6];

    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v23 count:3];
    if (v7)
    {
      v9 = [(MPKeypadViewController *)self metadataCache];
      v10 = [v9 metadataForDestinationID:v7];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [v10 metadataDictForProvider:{*(*(&v18 + 1) + 8 * i), v18}];
            if (v15)
            {
              v12 = v15;

              v16 = v10;
              v10 = v11;
              v8 = v7;
              v7 = v12;
              goto LABEL_14;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v16 = v11;
LABEL_14:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_metadataCacheDidUpdate
{
  v6 = [(MPKeypadViewController *)self _metadataForDialerText];
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v6 identificationLabel];
  v5 = [v6 source];
  [v3 setName:v4 numberLabel:0 source:v5 suggestion:1];
}

- (void)_updateNameFromMetadataCache
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v8 = [v3 text];

  TUNetworkCountryCode();
  if (PNIsValidPhoneNumberForCountry())
  {
    v4 = [(MPKeypadViewController *)self _metadataForDialerText];
    v5 = [v4 identificationLabel];
    if (v5)
    {
      v6 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
      v7 = [v4 source];
      [v6 setName:v5 numberLabel:0 source:v7 suggestion:1];
    }

    else
    {
      [(MPKeypadViewController *)self _updateMetadataCacheIfPossible];
    }
  }
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v8 = [*(a1 + 32) contactResultForPhoneNumber:*(a1 + 40)];
    v9 = [v8 contacts];
    *(*(*(a1 + 64) + 8) + 24) = [v9 count] != 0;

    if (*(*(*(a1 + 64) + 8) + 24) == 1 && ![*(*(*(a1 + 56) + 8) + 40) count])
    {
      v10 = [MPContactSearchResult alloc];
      v11 = [v8 contacts];
      v12 = [v11 firstObject];
      v13 = [v10 initWithContact:v12 matchInfo:0 preferredPhoneNumber:0];

      v17 = v13;
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  if (v11)
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)searchBusinessesFor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled]& 1) != 0)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__2;
    v16[4] = __Block_byref_object_dispose__2;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke;
    block[3] = &unk_4CAB0;
    v12 = v16;
    block[4] = self;
    v10 = v6;
    v13 = v14;
    v11 = v7;
    dispatch_async(v8, block);

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0);
  }
}

uint64_t __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _businessItemForNumber:*(a1 + 40) messageable:*(*(a1 + 64) + 8) + 24];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 40) != 0;
  v6 = *(*(a1 + 48) + 16);
  v7 = *(*(*(a1 + 64) + 8) + 24);

  return v6();
}

- (void)refreshLocalizedSenderIdentity
{
  if (PHDeviceSupportsDualSim())
  {
    v3 = [(DialerController *)self callProviderManager];
    v4 = [(DialerController *)self callProviderManager];
    v5 = [v4 telephonyProvider];
    v6 = [v5 identifier];
    v15 = [v3 providerWithIdentifier:v6];

    v7 = [v15 prioritizedSenderIdentities];
    v8 = [v7 count];

    if (v8 < 2)
    {
      goto LABEL_6;
    }

    v9 = [v15 prioritizedSenderIdentities];
    v10 = [v9 firstObject];
    v11 = [v10 localizedName];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v15 prioritizedSenderIdentities];
      v14 = [v13 firstObject];
    }

    else
    {
LABEL_6:
      v14 = 0;
    }

    [(MPKeypadViewController *)self updateLocalizedSenderIdentity:v14];
  }
}

- (void)handleSelectedSenderIdentity:(id)a3
{
  v7 = a3;
  v4 = [(DialerController *)self selectedSenderIdentity];
  v5 = v4 != v7;

  v6 = [(MPKeypadViewController *)self simLineSelectionAnalyticsReporter];
  [v6 logSIMLineSelection:v5];

  [(MPKeypadViewController *)self updateLocalizedSenderIdentity:v7];
}

- (void)updateLocalizedSenderIdentity:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Updating to localizedSenderIdentity %@", &v8, 0xCu);
  }

  [(DialerController *)self setSelectedSenderIdentity:v4];
  v6 = [(DialerController *)self dialerView];
  v7 = [v6 lcdView];
  [v7 setSenderIdentity:v4];
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (void)_updateMetadataCacheIfPossible
{
  v3 = [(DialerController *)self dialerView];
  v4 = [v3 lcdView];
  v5 = [v4 text];

  if ([v5 length])
  {
    TUNetworkCountryCode();
    if (PNIsValidPhoneNumberForCountry())
    {
      v6 = [TUMetadataDestinationID alloc];
      v7 = TUNetworkCountryCode();
      v8 = [v6 initWithDestinationID:v5 isoCountryCode:v7];

      if (v8)
      {
        objc_initWeak(&location, self);
        v9 = [(MPKeypadViewController *)self metadataCache];
        v14 = v8;
        v10 = [NSArray arrayWithObjects:&v14 count:1];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke;
        v11[3] = &unk_4CAD8;
        objc_copyWeak(&v12, &location);
        [v9 updateCacheWithDestinationIDs:v10 completion:v11];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _metadataCacheDidUpdate];
}

- (id)senderIdentityMenuForDialerView:(id)a3 selectedSenderIdentity:(id)a4
{
  v29 = a4;
  v5 = [(MPKeypadViewController *)self delegate];
  [v5 willPresentSimLineSwitcher];

  v6 = self;
  v7 = [(DialerController *)self callProviderManager];
  v8 = [v7 telephonyProvider];

  v9 = [v8 prioritizedSenderIdentities];
  v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v8 prioritizedSenderIdentities];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_%@" value:&stru_50D80 table:@"MPKeypad"];
        v17 = [v14 localizedName];
        v18 = [NSString stringWithFormat:v16, v17];

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __81__MPKeypadViewController_senderIdentityMenuForDialerView_selectedSenderIdentity___block_invoke;
        v30[3] = &unk_4C9C0;
        v30[4] = v6;
        v30[5] = v14;
        v19 = objc_retainBlock(v30);
        v20 = [UIAction actionWithTitle:v18 image:0 identifier:0 handler:v19];
        v21 = [v14 UUID];
        v22 = [v29 UUID];
        [v20 setState:v21 == v22];

        [v28 addObject:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_TITLE" value:&stru_50D80 table:@"MPKeypad"];
  v25 = [UIMenu menuWithTitle:v24 children:v28];

  return v25;
}

- (void)_addNewContact:(id)a3
{
  v5 = [CNContactViewController viewControllerForNewContact:a3];
  [v5 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(MPKeypadViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_newContactWithPhoneNumber:(id)a3
{
  v4 = objc_alloc_init(CNMutableContact);
  v5 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v6 = [v5 text];
  v7 = [CNPhoneNumber phoneNumberWithStringValue:v6];
  v8 = [CNLabeledValue labeledValueWithLabel:CNLabelPhoneNumberMobile value:v7];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v4 setPhoneNumbers:v9];

  return v4;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v10 = a3;
  [(MPKeypadViewController *)self _updateNameAndRefreshResult:1];
  v6 = [(MPKeypadViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && !a4)
  {
    v8 = [v10 navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }

  else
  {
    [(MPKeypadViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  dialerView = self->super._dialerView;
  v7 = a4;
  v8 = a3;
  v9 = [(PHAbstractDialerView *)dialerView lcdView];
  v10 = [v9 text];
  v13 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:v10];

  v11 = [CNContactViewController viewControllerForUpdatingContact:v7 withPropertiesFromContact:v13];

  [v11 setDelegate:self];
  v12 = [v8 navigationController];

  [v12 pushViewController:v11 animated:1];
}

- (id)pseudoNameStringForDestinationID:(id)a3
{
  v4 = a3;
  v5 = [TUMetadataDestinationID alloc];
  v6 = TUNetworkCountryCode();
  v7 = [v5 initWithDestinationID:v4 isoCountryCode:v6];

  if (v7)
  {
    v8 = [(MPKeypadViewController *)self metadataCache];
    v9 = [v8 metadataForDestinationID:v7];

    v10 = TUCallDirectoryMetadataCacheDataProvider_ptr;
    v11 = [v9 metadataForProvider:objc_opt_class()];

    if (v11)
    {
      goto LABEL_5;
    }

    v10 = TUMapsMetadataCacheDataProvider_ptr;
    v12 = [v9 metadataForProvider:objc_opt_class()];

    if (v12 || (v10 = TUSuggestionsMetadataCacheDataProvider_ptr, [v9 metadataForProvider:objc_opt_class()], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
LABEL_5:
      v14 = *v10;
      v13 = [v9 metadataForProvider:objc_opt_class()];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateIDSStatus
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is updating IDS status for text: %@", &v8, 0x16u);
  }

  v6 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  v7 = TUCopyIDSCanonicalAddressForDestinationID();
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:IDSServiceNameFaceTime withDestination:v7];
}

- (void)_updateIDSStatusIfNeededForService:(id)a3 withDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:v6 withDestination:v7];
  v9 = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v11 = [(MPKeypadViewController *)self IDSstatusCache];
    v12 = [NSNumber numberWithInteger:0];
    [v11 setObject:v12 forKey:v8];

    v13 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke;
    block[3] = &unk_4CB00;
    v16 = v7;
    v17 = v6;
    v18 = v13;
    v19 = self;
    v20 = v8;
    v14 = v13;
    dispatch_async(v14, block);
  }
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke(void *a1)
{
  v2 = +[IDSIDQueryController sharedInstance];
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2;
  v7[3] = &unk_4C7C0;
  v5 = a1[6];
  v6 = a1[8];
  v7[4] = a1[7];
  v8 = v6;
  [v2 currentIDStatusForDestination:v3 service:v4 listenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" queue:v5 completionBlock:v7];
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) IDSstatusCache];
  v5 = [v4 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v7 = [NSNumber numberWithInteger:a2];
    v6 = [*(a1 + 32) IDSstatusCache];
    [v6 setObject:v7 forKey:*(a1 + 40)];
  }
}

- (int64_t)_IDSStatusForService:(id)a3 withDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:v7 withDestination:v6];
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:v7 withDestination:v6];

  v9 = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v10 = [NSNumber numberWithInteger:0];
  }

  v11 = [v10 integerValue];

  return v11;
}

- (void)_clearIDSStatusCache
{
  v2 = [(MPKeypadViewController *)self IDSstatusCache];
  [v2 removeAllObjects];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v64 = self;
  v6 = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (v6 == v5)
  {
    v9 = [(DialerController *)v64 dialerView];
    v10 = [v9 lcdView];
    v11 = [v10 text];

    if (v11)
    {
      v7 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
    }

    else
    {
      v7 = 0;
    }

    v63 = +[NSMutableArray array];
    if (v7 && [v7 length])
    {
      v55 = v7;
      v57 = TUCopyIDSCanonicalAddressForDestinationID();
      v12 = TelephonyUIBundle();
      v13 = [UIImage tpImageNamed:@"action_call-OrbHW" inBundle:v12];
      v62 = [v13 imageWithRenderingMode:2];

      v14 = TelephonyUIBundle();
      v15 = [UIImage tpImageNamed:@"action_facetime-OrbHW" inBundle:v14];
      v58 = [v15 imageWithRenderingMode:2];

      v16 = [(DialerController *)v64 callProviderManager];
      v17 = [v16 faceTimeProvider];

      v18 = [(DialerController *)v64 callProviderManager];
      v19 = [v18 telephonyProvider];

      v20 = +[NSMutableArray array];
      v21 = v20;
      if (v19)
      {
        [v20 addObject:v19];
      }

      v53 = v19;
      v56 = v5;
      if (v17 && [(MPKeypadViewController *)v64 _IDSStatusForService:IDSServiceNameFaceTime withDestination:v57]== &dword_0 + 1)
      {
        [v21 addObject:v17];
      }

      v54 = v17;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v21;
      v22 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v71;
        v25 = OBJC_CLASS___CPKeyView_ptr;
        v26 = OBJC_CLASS___CPKeyView_ptr;
        v59 = *v71;
        do
        {
          v27 = 0;
          v60 = v23;
          do
          {
            if (*v71 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v70 + 1) + 8 * v27);
            if ([v28 isTelephonyProvider])
            {
              v29 = v26[2];
              v30 = [*(v25 + 1144) bundleForClass:objc_opt_class()];
              v31 = [v30 localizedStringForKey:@"CALL" value:&stru_50D80 table:@"MPKeypad"];
              v69[0] = _NSConcreteStackBlock;
              v69[1] = 3221225472;
              v69[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
              v69[3] = &unk_4C9C0;
              v69[4] = v64;
              v69[5] = v28;
              v32 = [UIAction actionWithTitle:v31 image:v62 identifier:0 handler:v69];

              [v63 addObject:v32];
              goto LABEL_33;
            }

            if ([v28 isFaceTimeProvider])
            {
              v33 = +[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls];
              v34 = v25;
              LODWORD(v25) = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls];
              v35 = v26[2];
              v36 = [*(v34 + 1144) bundleForClass:objc_opt_class()];
              v37 = [v36 localizedStringForKey:@"KEYPAD_FACETIME_AUDIO" value:&stru_50D80 table:@"MPKeypad"];

              v38 = v26[2];
              v39 = [*(v34 + 1144) bundleForClass:objc_opt_class()];
              v40 = [v39 localizedStringForKey:@"KEYPAD_FACETIME_VIDEO" value:&stru_50D80 table:@"MPKeypad"];

              if (!v33)
              {
                if (!v25)
                {
                  goto LABEL_32;
                }

LABEL_31:
                v67[0] = _NSConcreteStackBlock;
                v67[1] = 3221225472;
                v67[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
                v67[3] = &unk_4C9C0;
                v67[4] = v64;
                v67[5] = v28;
                v51 = [UIAction actionWithTitle:v40 image:v58 identifier:0 handler:v67];
                [v63 addObject:v51];

                goto LABEL_32;
              }
            }

            else
            {
              v41 = v26[2];
              v42 = [*(v25 + 1144) bundleForClass:objc_opt_class()];
              [v42 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_AUDIO" value:&stru_50D80 table:@"MPKeypad"];
              v43 = v26;
              v45 = v44 = v25;
              v46 = [v28 localizedName];
              v37 = [NSString stringWithFormat:v45, v46, v53, v54];

              if ([v28 supportsAudioAndVideo])
              {
                v47 = v43[2];
                v48 = [*(v44 + 1144) bundleForClass:objc_opt_class()];
                v25 = [v48 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_VIDEO" value:&stru_50D80 table:@"MPKeypad"];
                v49 = [v28 localizedName];
                v40 = [NSString stringWithFormat:v25, v49];

                LOBYTE(v25) = 1;
              }

              else
              {
                v40 = 0;
                LOBYTE(v25) = 0;
              }

              v26 = v43;
            }

            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
            v68[3] = &unk_4C9C0;
            v68[4] = v64;
            v68[5] = v28;
            v50 = [UIAction actionWithTitle:v37 image:v62 identifier:0 handler:v68];
            [v63 addObject:v50];

            if (v25)
            {
              goto LABEL_31;
            }

LABEL_32:

            v24 = v59;
            v23 = v60;
            v25 = 311296;
LABEL_33:
            v27 = v27 + 1;
          }

          while (v23 != v27);
          v23 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
        }

        while (v23);
      }

      v7 = v55;
      v5 = v56;
    }

    if ([v63 count])
    {
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
      v65[3] = &unk_4CB28;
      v65[4] = v64;
      v66 = v63;
      v8 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v65];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_40;
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MPKeypadViewController contextMenuInteraction:configurationForMenuAtLocation:];
  }

  v8 = 0;
LABEL_40:

  return v8;
}

id __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) dialerView];
  v3 = [v2 lcdView];
  v4 = [v3 text];
  v5 = [UIMenu menuWithTitle:v4 children:*(a1 + 40)];

  return v5;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (v6 == v5)
  {
    v9 = objc_alloc_init(UIPreviewParameters);
    v10 = [(DialerController *)self dialerView];
    v11 = [v10 callButton];
    [v11 bounds];
    v13 = v12;
    v14 = [(DialerController *)self dialerView];
    v15 = [v14 callButton];
    [v15 bounds];
    v16 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v13];
    [v9 setVisiblePath:v16];

    v17 = [UITargetedPreview alloc];
    v18 = [(DialerController *)self dialerView];
    v19 = [v18 callButton];
    v8 = [v17 initWithView:v19 parameters:v9];
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MPKeypadViewController contextMenuInteraction:previewForHighlightingMenuWithConfiguration:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@", &v6, 0x16u);
  }

  [(DialerController *)self updateDialerViewDualSimMenu];
  [(MPKeypadViewController *)self refreshLocalizedSenderIdentity];
}

- (void)searchButtonPressed:(id)a3
{
  v4 = a3;
  v8 = [(MPKeypadViewController *)self delegate];
  v5 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v6 = [v5 text];
  v7 = [v6 unformattedNumber];
  [v8 didPressSearchButton:v4 unformattedNumber:v7];
}

- (void)presentContactsSearchFor:(id)a3
{
  v4 = a3;
  v5 = [(MPKeypadViewController *)self delegate];
  [v5 presentContactsSearchFor:v4];
}

- (void)presentAppleSupportGuidedHelp
{
  v2 = [(MPKeypadViewController *)self delegate];
  [v2 presentAppleSupportGuidedHelp];
}

- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4
{
  v6 = a3;
  if ([v6 length] && (-[MPKeypadViewController bizService](self, "bizService"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = dispatch_group_create();
    v25 = 0;
    v26[0] = &v25;
    v26[1] = 0x3032000000;
    v26[2] = __Block_byref_object_copy__2;
    v26[3] = __Block_byref_object_dispose__2;
    v27 = 0;
    v22 = 0;
    v23[0] = &v22;
    v23[1] = 0x2020000000;
    v24 = 0;
    v9 = [(MPKeypadViewController *)self brandManager];

    if (v9)
    {
      dispatch_group_enter(v8);
      v10 = [(MPKeypadViewController *)self brandManager];
      v11 = BSBrandServiceTypeOnDeviceSupport;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke;
      v17[3] = &unk_4CB78;
      v17[4] = self;
      v18 = v6;
      v20 = &v25;
      v21 = &v22;
      v19 = v8;
      [v10 isBrandRegisteredWithIdentifier:v18 forService:v11 completion:v17];
    }

    v12 = dispatch_time(0, 1000000000);
    if (dispatch_group_wait(v8, v12))
    {
      v13 = PHDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MPKeypadViewController _businessItemForNumber:v13 messageable:?];
      }

      v14 = 0;
    }

    else
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(MPKeypadViewController *)v26 _businessItemForNumber:v23 messageable:v15];
      }

      if (a4)
      {
        *a4 = *(v23[0] + 24);
      }

      v14 = *(v26[0] + 40);
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v9 = *(a1 + 48);

    dispatch_group_leave(v9);
  }

  else
  {
    v4 = [*(a1 + 32) bizService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2;
    v12[3] = &unk_4CB50;
    v10 = *(a1 + 56);
    v5 = *(a1 + 40);
    *&v6 = v10;
    *(&v6 + 1) = *(a1 + 64);
    v11 = v6;
    v7 = *(a1 + 48);
    *&v8 = v5;
    *(&v8 + 1) = v7;
    v13 = v8;
    v14 = v11;
    [v4 fetchBusinessItemForPhoneNumber:v5 completion:v12];
  }
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2_cold_1();
    }

    LOBYTE(v15) = 0;
    v11 = [[BCSBusinessItem alloc] initWithBizID:0 phoneNumber:*(a1 + 32) name:@"Apple Support" phoneHash:0 squareLogoURL:0 wideLogoURL:0 tintColor:0 backgroundColor:0 callToActions:0 messagingOpenHours:0 callingOpenHours:0 isVerified:v15 intentID:0 groupID:0 visibilityItems:0];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (v8)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (MPKeyPadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_businessItemForNumber:(os_log_t)log messageable:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 40) != 0;
  v4 = *(*a2 + 24);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Phone number properties business:%d messageable:%d", v5, 0xEu);
}

@end