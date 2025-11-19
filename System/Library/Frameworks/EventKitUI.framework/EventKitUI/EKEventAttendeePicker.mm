@interface EKEventAttendeePicker
+ (BOOL)_participantHasResponded:(id)a3;
+ (id)_addressForRecipient:(id)a3;
- (BOOL)_zeroKeyworkSearchEnabled;
- (BOOL)showAvailability;
- (EKEventAttendeePicker)initWithFrame:(CGRect)a3 event:(id)a4 calendar:(id)a5 overriddenEventStartDate:(id)a6 overriddenEventEndDate:(id)a7;
- (EKEventAttendeePickerDelegate)addressValidationDelegate;
- (NSArray)recipients;
- (double)_maxScrollerHeight;
- (id)_lookUpRecipientForAddress:(id)a3;
- (id)_searchManager;
- (id)_searchResultsView;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)peoplePickerPrompt;
- (id)predicateForContactWithBlockedAddress;
- (unint64_t)presentationOptionsForRecipient:(id)a3;
- (void)_adjustLayoutOfSubviews;
- (void)_copyRecipientsFromComposeView;
- (void)_hideSearchResultsViewAndCancelOutstandingSearches:(BOOL)a3;
- (void)_refreshSearchResults;
- (void)_requestAvailabilityForRecipients:(id)a3;
- (void)_setAtomPresentationOption:(unint64_t)a3 forRecipient:(id)a4;
- (void)_setRecipientsOnComposeView;
- (void)_showSearchResultsView;
- (void)_updateFetchContextChosenAddresses;
- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)consumeCorecipientSearchResults:(id)a3 taskID:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactViewControllerDidExecuteClearRecentsDataAction:(id)a3;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)finishedSearchingForCorecipients;
- (void)finishedTaskWithID:(id)a3;
- (void)loadView;
- (void)scrollComposeViewToEnd;
- (void)searchForCorecipients;
- (void)searchWithText:(id)a3;
- (void)setRecipients:(id)a3;
- (void)updateMaxAttendeeInfoText;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKEventAttendeePicker

- (EKEventAttendeePicker)initWithFrame:(CGRect)a3 event:(id)a4 calendar:(id)a5 overriddenEventStartDate:(id)a6 overriddenEventEndDate:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v51.receiver = self;
  v51.super_class = EKEventAttendeePicker;
  v20 = [(EKEventAttendeePicker *)&v51 init];
  v21 = v20;
  if (v20)
  {
    v50 = v19;
    v20->_initialFrame.origin.x = x;
    v20->_initialFrame.origin.y = y;
    v20->_initialFrame.size.width = width;
    v20->_initialFrame.size.height = height;
    objc_storeStrong(&v20->_event, a4);
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recipientAddressesToRecipients = v21->_recipientAddressesToRecipients;
    v21->_recipientAddressesToRecipients = v22;

    objc_storeStrong(&v21->_overriddenEventStartDate, a6);
    objc_storeStrong(&v21->_overriddenEventEndDate, a7);
    v21->_hasChanges = 0;
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    availabilityQueue = v21->_availabilityQueue;
    v21->_availabilityQueue = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v49 = [v16 title];
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v27, v49];
    [(NSOperationQueue *)v21->_availabilityQueue setName:v28];
    EKWeakLinkClass();
    v29 = objc_opt_new();
    fetchContext = v21->_fetchContext;
    v21->_fetchContext = v29;

    v31 = [v16 title];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setTitle:v31];

    if (v18)
    {
      [(CNAutocompleteFetchContext *)v21->_fetchContext setDate:v18];
    }

    else
    {
      v32 = [v16 startDate];
      [(CNAutocompleteFetchContext *)v21->_fetchContext setDate:v32];
    }

    v33 = [v16 location];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setLocationUUID:v33];

    v34 = v17;
    if (v16)
    {
      v35 = [v16 calendar];
    }

    else
    {
      v35 = v17;
    }

    v36 = v35;
    v37 = [v35 source];
    v38 = [v37 sourceIdentifier];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setSendingAddressAccountIdentifier:v38];

    v39 = [v36 selfIdentityEmail];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setSendingAddress:v39];

    v40 = objc_opt_new();
    searchResults = v21->_searchResults;
    v21->_searchResults = v40;

    v42 = [(EKEvent *)v21->_event calendar];
    v43 = [v42 maxAttendees];
    v44 = [(EKEvent *)v21->_event roomAttendees];
    v21->_maxNumberOfAttendees = v43 + ~[v44 count];

    v45 = [v16 eventStore];
    v46 = [v45 blockList];
    blockList = v21->_blockList;
    v21->_blockList = v46;

    v17 = v34;
    v19 = v50;
  }

  return v21;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_availabilityQueue cancelAllOperations];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setDelegate:0];
  if (self->_lastSearchId)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
  }

  v3.receiver = self;
  v3.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v3 dealloc];
}

- (void)loadView
{
  objc_initWeak(&location, self);
  v3 = [[EKEventAttendeePickerBGView alloc] initWithFrame:self->_initialFrame.origin.x, self->_initialFrame.origin.y, self->_initialFrame.size.width, self->_initialFrame.size.height];
  [(EKEventAttendeePickerBGView *)v3 setAutoresizingMask:18];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKEventAttendeePickerBGView *)v3 setBackgroundColor:v4];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __33__EKEventAttendeePicker_loadView__block_invoke;
  v22[3] = &unk_1E843F080;
  objc_copyWeak(&v23, &location);
  [(EKEventAttendeePickerBGView *)v3 setBoundsChangeCallback:v22];
  [(EKEventAttendeePicker *)self setView:v3];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v5 = getCNAutocompleteResultsTableViewControllerClass_softClass;
  v29 = getCNAutocompleteResultsTableViewControllerClass_softClass;
  if (!getCNAutocompleteResultsTableViewControllerClass_softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __getCNAutocompleteResultsTableViewControllerClass_block_invoke;
    v25[3] = &unk_1E843F520;
    v25[4] = &v26;
    __getCNAutocompleteResultsTableViewControllerClass_block_invoke(v25);
    v5 = v27[3];
  }

  v6 = v5;
  _Block_object_dispose(&v26, 8);
  v7 = [[v5 alloc] initWithStyle:1];
  autocompleteTableViewController = self->_autocompleteTableViewController;
  self->_autocompleteTableViewController = v7;

  [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController setDelegate:self];
  [getCNComposeRecipientTextViewClass() preferredHeight];
  v10 = v9;
  width = self->_initialFrame.size.width;
  v12 = [objc_alloc(getCNComposeRecipientTextViewClass()) initWithFrame:{0.0, 0.0, width, v9}];
  composeRecipientView = self->_composeRecipientView;
  self->_composeRecipientView = v12;

  [(CNComposeRecipientTextView *)self->_composeRecipientView setAutoresizingMask:2];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setBackgroundColor:v14];

  v15 = self->_composeRecipientView;
  v16 = [MEMORY[0x1E695DEC8] array];
  [(CNComposeRecipientTextView *)v15 setAddresses:v16];

  [(CNComposeRecipientTextView *)self->_composeRecipientView setDelegate:self];
  v17 = self->_composeRecipientView;
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"To:" value:&stru_1F4EF6790 table:0];
  [(CNComposeRecipientTextView *)v17 setLabel:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{0.0, 0.0, self->_initialFrame.size.width, v10}];
  recipientScrollView = self->_recipientScrollView;
  self->_recipientScrollView = v20;

  [(UIScrollView *)self->_recipientScrollView setContentSize:width, v10];
  [(UIScrollView *)self->_recipientScrollView setAutoresizingMask:2];
  [(UIScrollView *)self->_recipientScrollView addSubview:self->_composeRecipientView];
  [(EKEventAttendeePickerBGView *)v3 addSubview:self->_recipientScrollView];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setMaxRecipients:self->_maxNumberOfAttendees];
  [(EKEventAttendeePicker *)self _setRecipientsOnComposeView];
  if ([(EKEventAttendeePicker *)self _zeroKeyworkSearchEnabled])
  {
    [(EKEventAttendeePicker *)self searchForCorecipients];
  }

  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __33__EKEventAttendeePicker_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adjustLayoutOfSubviews];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v4 viewDidLoad];
  [(CNComposeRecipientTextView *)self->_composeRecipientView becomeFirstResponder];
  [(EKEventAttendeePicker *)self _invalidateAtomPresentationOptionsForAllRecipients];
  if ([(EKEventAttendeePicker *)self shouldSuggestFamilySharees])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __36__EKEventAttendeePicker_viewDidLoad__block_invoke;
    v3[3] = &unk_1E8440630;
    v3[4] = self;
    [MEMORY[0x1E6966A28] requestFamilyShareesWithCompletion:v3];
  }
}

void __36__EKEventAttendeePicker_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v30 = a3;
  v34 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v35)
  {
    v5 = 0;
    v32 = *v41;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = MEMORY[0x1E6996348];
        v9 = [v7 firstName];
        v10 = [v7 lastName];
        v11 = [v8 nameComponentsWithFirstName:v9 lastName:v10 nickname:0 nameSuffix:0];

        v12 = MEMORY[0x1E6996358];
        v13 = [v7 emailAddress];
        v14 = [v7 name];
        v15 = [v12 calDAVResultWithAddress:v13 displayName:v14 nameComponents:v11 resultType:0 groupMembersProvider:0 userInfo:0];

        v16 = [getCNComposeRecipientClass_1() composeRecipientWithAutocompleteResult:v15];
        [v34 addObject:v16];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = [*(a1 + 32) filterOutFamilySharees];
        v18 = [v17 countByEnumeratingWithState:&v36 objects:v53 count:16];
        if (v18)
        {
          v19 = *v37;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v17);
              }

              if ([*(*(&v36 + 1) + 8 * j) isEqualToSharee:v7])
              {

                ++v5;
                goto LABEL_16;
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v36 objects:v53 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v35);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != [obj count])
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v21 = getCNComposeRecipientGroupClass_softClass;
    v52 = getCNComposeRecipientGroupClass_softClass;
    if (!getCNComposeRecipientGroupClass_softClass)
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __getCNComposeRecipientGroupClass_block_invoke;
      v47 = &unk_1E843F520;
      v48 = &v49;
      __getCNComposeRecipientGroupClass_block_invoke(&v44);
      v21 = v50[3];
    }

    v22 = v21;
    _Block_object_dispose(&v49, 8);
    v23 = [v21 alloc];
    v24 = EventKitUIBundle();
    v25 = [v24 localizedStringForKey:@"My iCloud Family" value:&stru_1F4EF6790 table:0];
    v26 = [v23 initWithChildren:v34 displayString:v25];

    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v27 = getCNComposeRecipientOriginContextClass_softClass;
    v52 = getCNComposeRecipientOriginContextClass_softClass;
    if (!getCNComposeRecipientOriginContextClass_softClass)
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __getCNComposeRecipientOriginContextClass_block_invoke;
      v47 = &unk_1E843F520;
      v48 = &v49;
      __getCNComposeRecipientOriginContextClass_block_invoke(&v44);
      v27 = v50[3];
    }

    v28 = v27;
    _Block_object_dispose(&v49, 8);
    v29 = objc_alloc_init(v27);
    [v29 setSearchTerm:&stru_1F4EF6790];
    [v29 setResultType:16];
    [v26 setOriginContext:v29];
    [*(*(a1 + 32) + 1168) insertObject:v26 atIndex:0];
    [*(a1 + 32) _refreshSearchResults];
  }
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v4 viewLayoutMarginsDidChange];
  v3 = [(EKEventAttendeePicker *)self view];
  [v3 layoutMargins];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setLayoutMargins:?];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v3 viewSafeAreaInsetsDidChange];
  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CNComposeRecipientTextView *)self->_composeRecipientView becomeFirstResponder];
  v5.receiver = self;
  v5.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v5 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(EKEventAttendeePicker *)self scrollComposeViewToEnd];
  v5.receiver = self;
  v5.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v5 viewDidAppear:v3];
}

- (NSArray)recipients
{
  if (self->_composeRecipientView)
  {
    v2 = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  }

  else
  {
    v2 = [(NSArray *)self->_recipients copy];
  }

  return v2;
}

- (void)setRecipients:(id)a3
{
  v4 = [a3 copy];
  recipients = self->_recipients;
  self->_recipients = v4;

  self->_hasChanges = 0;
  if (self->_composeRecipientView)
  {

    [(EKEventAttendeePicker *)self _setRecipientsOnComposeView];
  }
}

- (void)_setRecipientsOnComposeView
{
  v28 = *MEMORY[0x1E69E9840];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setAddresses:0];
  self->_suppressAvailabilityRequests = 1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_recipients;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:*(*(&v17 + 1) + 8 * v7++), v17];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }

  self->_suppressAvailabilityRequests = 0;
  [(NSMutableDictionary *)self->_recipientAddressesToRecipients removeAllObjects];
  [(NSOperationQueue *)self->_availabilityQueue cancelAllOperations];
  [(EKEventAttendeePicker *)self _requestAvailabilityForRecipients:self->_recipients];
  v8 = [(CNComposeRecipientTextView *)self->_composeRecipientView uncommentedAddresses];
  v9 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    fetchContext = self->_fetchContext;
    *buf = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = fetchContext;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "[%@] Setting fetch context [%@] otherAddressesAlreadyChosen to [%@]", buf, 0x20u);
  }

  v14 = [(EKEvent *)self->_event attendees];
  v15 = [v14 CalMap:&__block_literal_global_58];

  v16 = [v8 arrayByAddingObjectsFromArray:v15];
  [(CNAutocompleteFetchContext *)self->_fetchContext setOtherAddressesAlreadyChosen:v16];

  [(EKEventAttendeePicker *)self updateMaxAttendeeInfoText];
  [(EKEventAttendeePicker *)self scrollComposeViewToEnd];
}

id __52__EKEventAttendeePicker__setRecipientsOnComposeView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 URL];
  v3 = [v2 resourceSpecifier];

  return v3;
}

- (id)_lookUpRecipientForAddress:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_recipientAddressesToRecipients objectForKey:v4];
  if (!v5)
  {
    v6 = EKUtils_AdjustedAttendeeAddress();
    v5 = [(NSMutableDictionary *)self->_recipientAddressesToRecipients objectForKey:v6];
  }

  return v5;
}

- (void)_requestAvailabilityForRecipients:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EKEventAttendeePicker *)self showAvailability])
  {
    if (v4 && [v4 count])
    {
      suppressAvailabilityRequests = self->_suppressAvailabilityRequests;
      v6 = kEKUILogHandle;
      v7 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG);
      if (suppressAvailabilityRequests)
      {
        if (v7)
        {
          *buf = 0;
          v8 = "Suppressing availability requests.  Will not look up availability for recipients.";
          v9 = v6;
LABEL_11:
          v11 = 2;
          goto LABEL_12;
        }
      }

      else
      {
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Preparing to request availability for recipients.", buf, 2u);
        }

        v13 = [v4 count];
        v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
        if (([(EKEvent *)self->_event isStartDateDirty]& 1) != 0)
        {
          v15 = 1;
        }

        else
        {
          v15 = [(EKEvent *)self->_event isEndDateDirty];
        }

        v16 = [(EKEvent *)self->_event calendar];
        v17 = [v16 source];
        v18 = [v17 constraints];
        v19 = [v18 supportsIgnoringEventsInAvailabilityRequests];

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke;
        v43[3] = &unk_1E84427A0;
        v43[4] = self;
        v45 = v15;
        v46 = v19;
        v20 = v14;
        v44 = v20;
        [v4 enumerateObjectsUsingBlock:v43];
        [(EKEventAttendeePicker *)self _invalidateAtomPresentationOptionsForAllRecipients];
        if ([v20 count])
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_61;
          aBlock[3] = &unk_1E843EFE0;
          aBlock[4] = self;
          v21 = _Block_copy(aBlock);
          overriddenEventStartDate = self->_overriddenEventStartDate;
          if (overriddenEventStartDate)
          {
            v23 = overriddenEventStartDate;
          }

          else
          {
            v23 = [(EKEvent *)self->_event startDate];
          }

          v25 = v23;
          overriddenEventEndDate = self->_overriddenEventEndDate;
          if (overriddenEventEndDate)
          {
            v27 = overriddenEventEndDate;
          }

          else
          {
            v27 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
          }

          v28 = v27;
          v29 = objc_alloc(MEMORY[0x1E6966AE0]);
          v30 = [(EKEvent *)self->_event calendar];
          v31 = [v30 source];
          v32 = [v29 initWithSource:v31 startDate:v25 endDate:v28 ignoredEvent:self->_event addresses:v20 resultsBlock:v21];

          objc_initWeak(&location, v32);
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_66;
          v37 = &unk_1E8440DE0;
          objc_copyWeak(&v40, &location);
          v38 = v20;
          v39 = self;
          [(EKEventAttendeePicker *)v32 setCompletionBlock:&v34];
          v33 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v48 = v32;
            _os_log_impl(&dword_1D3400000, v33, OS_LOG_TYPE_DEBUG, "Adding availability operation: [%@]", buf, 0xCu);
          }

          [(NSOperationQueue *)self->_availabilityQueue addOperation:v32, v34, v35, v36, v37];

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);
        }

        else
        {
          v24 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_DEBUG, "There are no recipients for which to issue an availability request.", buf, 2u);
          }
        }
      }
    }

    else
    {
      v12 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v8 = "No recipients were given.  Will not look up availability for recipients.";
        v9 = v12;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v48 = self;
      v8 = "[%@] says not to show availability.  Will not look up availability for recipients.";
      v9 = v10;
      v11 = 12;
LABEL_12:
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, v8, buf, v11);
    }
  }
}

void __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_opt_class() _addressForRecipient:v3];
  if (v4)
  {
    if (*(a1 + 48) & 1) != 0 || ![objc_opt_class() _participantHasResponded:v3] || (*(a1 + 49))
    {
      v5 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412546;
        v10 = v4;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Will use address [%@] to get availability for recipient [%@]", &v9, 0x16u);
      }

      [*(a1 + 40) addObject:v4];
      [*(*(a1 + 32) + 1112) setObject:v3 forKey:v4];
      v6 = 512;
    }

    else
    {
      v8 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_DEBUG, "This event's source does not support ignoring events in availability requests and the participant has already responded.  The attendee will likely be marked as busy because they've already responded, but that can be misleading if they've accepted.  Will not get availability for recipient: [%@]", &v9, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "No address found.  Will not get availability for recipient: [%@]", &v9, 0xCu);
    }

    v6 = 4096;
  }

  [*(a1 + 32) _setAtomPresentationOption:v6 forRecipient:v3];
}

void __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_3;
  v4[3] = &unk_1E843EF90;
  v4[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  return [*(a1 + 40) _invalidateAtomPresentationOptionsForAllRecipients];
}

void __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _lookUpRecipientForAddress:v5];
  if (v7)
  {
    if ([MEMORY[0x1E6966988] spansIncludeBusyPeriod:v6])
    {
      v8 = 2048;
    }

    else
    {
      v8 = 1024;
    }

    [*(a1 + 32) _setAtomPresentationOption:v8 forRecipient:v7];
  }

  else
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "No recipient found for original address: [%@].  Will not update atom presentation options for a recipient.", &v10, 0xCu);
    }
  }
}

void __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_66(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    *buf = 138412290;
    v18 = WeakRetained;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Availability operation completed: [%@]", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 error];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 isCancelled];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_67;
  v12[3] = &unk_1E8442328;
  v13 = v6;
  v16 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_67(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v3 = *(a1 + 32);
    *buf = 138412290;
    v30 = v3;
    v4 = "Error encountered during availability request: [%@]";
    v5 = v2;
    v6 = 12;
    goto LABEL_7;
  }

  if (*(a1 + 56) == 1)
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v4 = "An availability operation was cancelled.";
      v5 = v7;
      v6 = 2;
LABEL_7:
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, v4, buf, v6);
    }
  }

LABEL_8:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138412802;
    v23 = v10;
    v24 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [*(a1 + 48) _lookUpRecipientForAddress:{v14, v23}];
        if (v15)
        {
          v16 = [*(*(a1 + 48) + 1128) objectForKey:v15];
          v17 = v16;
          if (v16 && [v16 unsignedIntegerValue] == 512)
          {
            v18 = kEKUILogHandle;
            if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
            {
              v19 = v18;
              v20 = [EKUIMailUtilities atomPresentationOptionsAsString:4096];
              *buf = v23;
              v30 = v15;
              v31 = 2112;
              v32 = v14;
              v33 = 2112;
              v34 = v20;
              _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_DEBUG, "Setting the icon for recipient [%@] with address [%@] to [%@] because the availability request associated with this recipient has completed and the spinner is still being shown.", buf, 0x20u);

              v8 = v24;
            }

            [*(a1 + 48) _setAtomPresentationOption:4096 forRecipient:v15];
          }
        }

        else
        {
          v21 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v14;
            _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_DEBUG, "Could not find recipient for address [%@].  Will not possibly adjust availability icon.", buf, 0xCu);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v11);
  }

  return [*(a1 + 48) _invalidateAtomPresentationOptionsForAllRecipients];
}

+ (id)_addressForRecipient:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, &kEKUI_CNComposeReciepentParticipantKey_0);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URL];
    v7 = [v6 absoluteString];

    goto LABEL_8;
  }

  v7 = [v3 normalizedAddress];
  if (v7)
  {
    if (![v3 kind] || objc_msgSend(v3, "kind") == 1)
    {

LABEL_7:
      v7 = [v3 normalizedAddress];
      goto LABEL_8;
    }

    v9 = [v3 kind];

    if (v9 == 4)
    {
      goto LABEL_7;
    }

    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (BOOL)_participantHasResponded:(id)a3
{
  v3 = objc_getAssociatedObject(a3, &kEKUI_CNComposeReciepentParticipantKey_0);
  v4 = v3;
  if (v3)
  {
    HasResponded = EKUIAttendeeUtils_AttendeeHasResponded(v3);
  }

  else
  {
    HasResponded = 0;
  }

  return HasResponded;
}

- (void)_setAtomPresentationOption:(unint64_t)a3 forRecipient:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (!atomPresentationOptionsByRecipient)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_atomPresentationOptionsByRecipient;
    self->_atomPresentationOptionsByRecipient = v8;

    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)atomPresentationOptionsByRecipient setObject:v10 forKey:v6];

  v11 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [EKUIMailUtilities atomPresentationOptionsAsString:a3];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Atom presentation of recipient [%@] set to [%@]", &v14, 0x16u);
  }
}

- (void)_copyRecipientsFromComposeView
{
  v5 = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  v3 = [v5 copy];
  recipients = self->_recipients;
  self->_recipients = v3;
}

- (id)_searchResultsView
{
  searchResultsView = self->_searchResultsView;
  if (!searchResultsView)
  {
    v4 = [(EKEventAttendeePicker *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    [getCNComposeRecipientTextViewClass() preferredHeight];
    v10 = v9;
    v11 = [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController tableView];
    v12 = self->_searchResultsView;
    self->_searchResultsView = v11;

    [(UITableView *)self->_searchResultsView setFrame:0.0, v10, v6, v8 - v10];
    [(UITableView *)self->_searchResultsView setAutoresizingMask:18];
    [(UITableView *)self->_searchResultsView setKeyboardDismissMode:1];
    searchResultsView = self->_searchResultsView;
  }

  return searchResultsView;
}

- (void)_hideSearchResultsViewAndCancelOutstandingSearches:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "[%@] Hiding search results view and canceling outstanding searches", &v12, 0xCu);
  }

  self->_showingSearchField = 0;
  v9 = self->_searchResults;
  objc_sync_enter(v9);
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  objc_sync_exit(v9);

  [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController invalidatePreferredRecipients];
  if (v3 && self->_lastSearchId)
  {
    v10 = [(EKEventAttendeePicker *)self _searchManager];
    [v10 cancelTaskWithID:self->_lastSearchId];

    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }

  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews];
  [(UITableView *)self->_searchResultsView removeFromSuperview];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setSeparatorHidden:0];
}

- (void)_showSearchResultsView
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "[%@] Showing search results view", &v10, 0xCu);
  }

  self->_showingSearchField = 1;
  v7 = [(EKEventAttendeePicker *)self _searchResultsView];
  v8 = [v7 superview];

  if (!v8)
  {
    v9 = [(EKEventAttendeePicker *)self view];
    [v9 addSubview:v7];
  }

  [(CNComposeRecipientTextView *)self->_composeRecipientView setSeparatorHidden:1];
  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews];
}

- (double)_maxScrollerHeight
{
  v3 = [(EKEventAttendeePicker *)self view];
  [v3 bounds];
  Height = CGRectGetHeight(v8);

  if (![(UIViewController *)self isPresentedInsidePopover])
  {
    [MEMORY[0x1E69DCBB8] defaultSize];
    if (v5 < Height)
    {
      [MEMORY[0x1E69DCBB8] defaultSize];
      return Height - v6;
    }
  }

  return Height;
}

- (BOOL)_zeroKeyworkSearchEnabled
{
  v3 = [(EKEventAttendeePicker *)self recipients];
  if ([v3 count])
  {
    IsCompact = 1;
  }

  else
  {
    v5 = [(EKEventAttendeePicker *)self view];
    if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v5))
    {
      IsCompact = 1;
    }

    else
    {
      v6 = [(EKEventAttendeePicker *)self view];
      IsCompact = EKUICurrentHeightSizeClassIsCompact(v6);
    }
  }

  return IsCompact;
}

- (void)updateMaxAttendeeInfoText
{
  maxNumberOfAttendees = self->_maxNumberOfAttendees;
  v4 = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  v5 = [v4 count];

  if (maxNumberOfAttendees < 1 || maxNumberOfAttendees * 0.9 >= v5)
  {
    composeRecipientView = self->_composeRecipientView;

    [(CNComposeRecipientTextView *)composeRecipientView setComposeFieldInfoText:&stru_1F4EF6790];
  }

  else
  {
    v6 = EventKitUIBundle();
    v10 = [v6 localizedStringForKey:@"(%d / %d) invitees" value:&stru_1F4EF6790 table:0];

    v7 = self->_composeRecipientView;
    v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v10, v5, maxNumberOfAttendees];
    [(CNComposeRecipientTextView *)v7 setComposeFieldInfoText:v8];
  }
}

- (void)scrollComposeViewToEnd
{
  if (([(CNComposeRecipientTextView *)self->_composeRecipientView isFirstResponder]& 1) == 0)
  {
    [(CNComposeRecipientTextView *)self->_composeRecipientView becomeFirstResponder];
  }

  [(UIScrollView *)self->_recipientScrollView contentSize];
  v4 = v3;
  [(UIScrollView *)self->_recipientScrollView frame];
  recipientScrollView = self->_recipientScrollView;

  [(UIScrollView *)recipientScrollView setContentOffset:0 animated:0.0, v4 - v5];
}

- (id)_searchManager
{
  searchManager = self->_searchManager;
  if (searchManager)
  {
LABEL_2:
    v4 = searchManager;
    goto LABEL_3;
  }

  if (self->_ABAccessDenied)
  {
    if (self->_ABAccessDenied)
    {
LABEL_8:
      v4 = 0;
      goto LABEL_3;
    }

LABEL_12:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getCNAutocompleteSearchManagerClass_softClass;
    v16 = getCNAutocompleteSearchManagerClass_softClass;
    if (!getCNAutocompleteSearchManagerClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getCNAutocompleteSearchManagerClass_block_invoke;
      v12[3] = &unk_1E843F520;
      v12[4] = &v13;
      __getCNAutocompleteSearchManagerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [[v6 alloc] initWithAutocompleteSearchType:3];
    v9 = self->_searchManager;
    self->_searchManager = v8;

    [(CNAutocompleteSearchManager *)self->_searchManager setFetchDelegate:self];
    searchManager = self->_searchManager;
    if (self->_searchAccountID)
    {
      [(CNAutocompleteSearchManager *)searchManager setSearchTypes:27];
      v10 = self->_searchManager;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObject:self->_searchAccountID];
      [(CNAutocompleteSearchManager *)v10 setSearchAccountIDs:v11];

      searchManager = self->_searchManager;
    }

    goto LABEL_2;
  }

  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) >= 2)
  {
    if (self->_ABAccessDenied)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v4 = 0;
  self->_ABAccessDenied = 1;
LABEL_3:

  return v4;
}

- (id)predicateForContactWithBlockedAddress
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__EKEventAttendeePicker_predicateForContactWithBlockedAddress__block_invoke;
  v4[3] = &unk_1E84427C8;
  v4[4] = self;
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:v4];

  return v2;
}

uint64_t __62__EKEventAttendeePicker_predicateForContactWithBlockedAddress__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 kind])
  {
    if ([v3 kind] != 1)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v4 = *(*(a1 + 32) + 1200);
    v5 = [v3 normalizedAddress];
    v6 = [v4 isBlockedWithPhoneNumber:v5];
  }

  else
  {
    v7 = *(*(a1 + 32) + 1200);
    v5 = [v3 normalizedAddress];
    v6 = [v7 isBlockedWithEmail:v5];
  }

  v8 = v6 ^ 1u;

LABEL_7:
  return v8;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__EKEventAttendeePicker_consumeAutocompleteSearchResults_taskID___block_invoke;
  block[3] = &unk_1E843EC38;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__EKEventAttendeePicker_consumeAutocompleteSearchResults_taskID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a1[4] isEqual:*(a1[5] + 130)] && objc_msgSend(a1[6], "count"))
  {
    v2 = [*(a1[5] + 150) isEmpty];
    v3 = a1[6];
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v5 = [a1[5] predicateForContactWithBlockedAddress];
      v4 = [v3 filteredArrayUsingPredicate:v5];
    }

    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = a1[6];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "[%@] Consuming autocomplete results: %@ filtered to: %@", &v12, 0x20u);
    }

    if ([v4 count])
    {
      v11 = *(a1[5] + 146);
      objc_sync_enter(v11);
      [*(a1[5] + 146) addObjectsFromArray:v4];
      objc_sync_exit(v11);
    }

    [a1[5] _refreshSearchResults];
  }
}

- (void)consumeCorecipientSearchResults:(id)a3 taskID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKEventAttendeePicker_consumeCorecipientSearchResults_taskID___block_invoke;
  block[3] = &unk_1E843EC38;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__EKEventAttendeePicker_consumeCorecipientSearchResults_taskID___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a1[4] isEqual:*(a1[5] + 130)] && objc_msgSend(a1[6], "count"))
  {
    v2 = [*(a1[5] + 150) isEmpty];
    v3 = a1[6];
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v5 = [a1[5] predicateForContactWithBlockedAddress];
      v4 = [v3 filteredArrayUsingPredicate:v5];
    }

    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = a1[6];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "[%@] Consuming corecipient results: %@ filtered to: %@", &v12, 0x20u);
    }

    if ([v4 count])
    {
      v11 = *(a1[5] + 146);
      objc_sync_enter(v11);
      [*(a1[5] + 146) addObjectsFromArray:v4];
      objc_sync_exit(v11);
    }

    [a1[5] _refreshSearchResults];
  }
}

- (void)finishedSearchingForAutocompleteResults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKEventAttendeePicker_finishedSearchingForAutocompleteResults__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

_BYTE *__64__EKEventAttendeePicker_finishedSearchingForAutocompleteResults__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(*(a1 + 32) + 1168);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "[%@] Finished searching for autocomplete results with final results: %@", &v9, 0x16u);
  }

  v7 = [*(*(a1 + 32) + 1168) count];
  result = *(a1 + 32);
  if (!v7)
  {
    return [result _hideSearchResultsViewAndCancelOutstandingSearches:0];
  }

  if (result[1024] == 1)
  {
    return [result _refreshSearchResults];
  }

  return result;
}

- (void)finishedSearchingForCorecipients
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__EKEventAttendeePicker_finishedSearchingForCorecipients__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

_BYTE *__57__EKEventAttendeePicker_finishedSearchingForCorecipients__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(*(a1 + 32) + 1168);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "[%@] Finished searching for autocomplete results with final results: %@", &v9, 0x16u);
  }

  v7 = [*(*(a1 + 32) + 1168) count];
  result = *(a1 + 32);
  if (!v7)
  {
    return [result _hideSearchResultsViewAndCancelOutstandingSearches:0];
  }

  if (result[1024] == 1)
  {
    return [result _refreshSearchResults];
  }

  return result;
}

- (void)finishedTaskWithID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EKEventAttendeePicker_finishedTaskWithID___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __44__EKEventAttendeePicker_finishedTaskWithID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 1040)])
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 1040);
    *(v2 + 1040) = 0;
  }
}

- (void)_refreshSearchResults
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_searchResults count]&& !self->_showingSearchField)
  {
    [(EKEventAttendeePicker *)self _showSearchResultsView];
  }

  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    searchResults = self->_searchResults;
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = searchResults;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "[%@] Refreshing search results: %@", &v8, 0x16u);
  }

  [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController setRecipients:self->_searchResults];
}

- (void)searchWithText:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    fetchContext = self->_fetchContext;
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = fetchContext;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "[%@] Beginning text search with text [%@] context [%@]", &v15, 0x20u);
  }

  if (self->_lastSearchId)
  {
    v10 = [(EKEventAttendeePicker *)self _searchManager];
    [v10 cancelTaskWithID:self->_lastSearchId];
  }

  v11 = self->_searchResults;
  objc_sync_enter(v11);
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  objc_sync_exit(v11);

  v12 = [(EKEventAttendeePicker *)self _searchManager];
  v13 = [v12 searchForText:v4 withAutocompleteFetchContext:self->_fetchContext consumer:self];
  lastSearchId = self->_lastSearchId;
  self->_lastSearchId = v13;
}

- (void)searchForCorecipients
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    fetchContext = self->_fetchContext;
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = fetchContext;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "[%@] Beginning context search with context: %@", &v14, 0x16u);
  }

  if (self->_lastSearchId)
  {
    v8 = [(EKEventAttendeePicker *)self _searchManager];
    [v8 cancelTaskWithID:self->_lastSearchId];

    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }

  v10 = self->_searchResults;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  objc_sync_exit(v10);

  if ([(EKEventAttendeePicker *)self _zeroKeyworkSearchEnabled])
  {
    v11 = [(EKEventAttendeePicker *)self _searchManager];
    v12 = [v11 searchForCorecipientsWithAutocompleteFetchContext:self->_fetchContext consumer:self];
    v13 = self->_lastSearchId;
    self->_lastSearchId = v12;
  }

  else
  {
    [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:0];
  }
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v8 count:1];

  [(EKEventAttendeePicker *)self _requestAvailabilityForRecipients:v7, v8, v9];
  [(EKEventAttendeePicker *)self _updateFetchContextChosenAddresses];
  [(EKEventAttendeePicker *)self scrollComposeViewToEnd];
  [(EKEventAttendeePicker *)self updateMaxAttendeeInfoText];
  [(EKEventAttendeePicker *)self _copyRecipientsFromComposeView];
  if ([(EKEventAttendeePicker *)self _appearState]== 2)
  {
    [(EKEventAttendeePicker *)self _invalidateAtomPresentationOptionsForAllRecipients];
  }

  self->_hasChanges = 1;
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  [a3 removeRecipient:a4];
  [(EKEventAttendeePicker *)self _updateFetchContextChosenAddresses];
  [(EKEventAttendeePicker *)self updateMaxAttendeeInfoText];
  [(EKEventAttendeePicker *)self _copyRecipientsFromComposeView];

  [(EKEventAttendeePicker *)self _invalidateAtomPresentationOptionsForAllRecipients];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 clearText];
  [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:1];
  [v7 addAddress:v6];
}

- (void)_adjustLayoutOfSubviews
{
  [(CNComposeRecipientTextView *)self->_composeRecipientView frame];
  Height = CGRectGetHeight(v34);
  [getCNComposeRecipientTextViewClass() preferredHeight];
  v5 = v4;
  [(EKEventAttendeePicker *)self _maxScrollerHeight];
  v7 = v6 * 0.333;
  if (Height <= v7)
  {
    v7 = Height;
  }

  if (Height >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = [(EKEventAttendeePicker *)self view];
  [v9 safeAreaInsets];
  v11 = v8 + v10;

  [(UIScrollView *)self->_recipientScrollView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(EKEventAttendeePicker *)self _searchResultsView];
  [v18 setAlpha:0.0];
  v19 = [v18 superview];

  if (v19)
  {
    [v18 frame];
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = v13;
    v36.origin.y = v15;
    v36.size.width = v17;
    v36.size.height = v11;
    if (MaxY <= CGRectGetMaxY(v36))
    {
      v21 = [(EKEventAttendeePicker *)self view];
      [v21 frame];
      MaxY = v22;
    }

    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v11;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = v13;
    v38.origin.y = v15;
    v38.size.width = v17;
    v38.size.height = v11;
    v24 = CGRectGetMaxY(v38);
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v11;
    Width = CGRectGetWidth(v39);
    v40.origin.x = v13;
    v40.origin.y = v15;
    v40.size.width = v17;
    v40.size.height = v11;
    [v18 setFrame:{MinX, v24, Width, MaxY - CGRectGetMaxY(v40)}];
  }

  v26 = MEMORY[0x1E69DD250];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __48__EKEventAttendeePicker__adjustLayoutOfSubviews__block_invoke;
  v28[3] = &unk_1E84427F0;
  v30 = v13;
  v31 = v15;
  v32 = v17;
  v33 = v11;
  v28[4] = self;
  v29 = v18;
  v27 = v18;
  [v26 animateWithDuration:v28 animations:0.2];
}

uint64_t __48__EKEventAttendeePicker__adjustLayoutOfSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) contentOffset];
  v3 = v2;
  v5 = v4;
  [*(*(a1 + 32) + 1008) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(*(a1 + 32) + 1008) contentSize];
  v7 = v6;
  [*(*(a1 + 32) + 1008) frame];
  [*(*(a1 + 32) + 1008) setContentOffset:0 animated:{v3, fmin(v5, v7 - v8)}];
  v9 = *(a1 + 40);

  return [v9 setAlpha:1.0];
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(CNComposeRecipientTextView *)self->_composeRecipientView bounds];
  v7 = CGRectGetHeight(v16);
  v9 = 3221225472;
  v8 = MEMORY[0x1E69E9820];
  v10 = __57__EKEventAttendeePicker_composeHeaderView_didChangeSize___block_invoke;
  v11 = &unk_1E8442818;
  v12 = self;
  v13 = width;
  v14 = height;
  v15 = height > v7;
  [MEMORY[0x1E69DD250] animateWithDuration:&v8 animations:0.2];
  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews:v8];
}

uint64_t __57__EKEventAttendeePicker_composeHeaderView_didChangeSize___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) frame];
  [*(*(a1 + 32) + 1000) setFrame:?];
  result = [*(*(a1 + 32) + 1008) setContentSize:{*(a1 + 40), *(a1 + 48)}];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 scrollComposeViewToEnd];
  }

  return result;
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    [(EKEventAttendeePicker *)self searchWithText:v5];
  }

  else
  {
    [(EKEventAttendeePicker *)self searchForCorecipients];
  }
}

- (id)peoplePickerPrompt
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Add invitees to this Event." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (BOOL)showAvailability
{
  v2 = [(EKEvent *)self->_event calendar];
  v3 = [v2 source];
  v4 = [v3 constraints];
  v5 = [v4 supportsAvailabilityRequests];

  return v5;
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
{
  [(EKEventAttendeePicker *)self _CNContactPickerViewController];
  v14 = objc_opt_new();
  [v14 setDelegate:self];
  [v14 setModalPresentationStyle:18];
  v4 = [(EKEvent *)self->_event calendar];
  v5 = [v4 constraints];
  v6 = [v5 supportsPhoneNumbers];

  if (v6)
  {
    v7 = @"emailAddresses.@count > 0 || phoneNumbers.@count > 0";
  }

  else
  {
    v7 = @"emailAddresses.@count > 0";
  }

  if (v6)
  {
    v8 = @"(emailAddresses.@count == 1) || (emailAddresses.@count == 0 && phoneNumbers.@count == 1)";
  }

  else
  {
    v8 = @"emailAddresses.@count == 1";
  }

  if (v6)
  {
    v9 = @"(key == 'emailAddresses') || (key == 'phoneNumbers')";
  }

  else
  {
    v9 = @"(key == 'emailAddresses')";
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v7];
  [v14 setPredicateForEnablingContact:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:v8];
  [v14 setPredicateForSelectionOfContact:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v9];
  [v14 setPredicateForSelectionOfProperty:v12];

  v13 = [(EKEventAttendeePicker *)self navigationController];
  [v13 presentModalViewController:v14 withTransition:8];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  v4 = [(EKEventAttendeePicker *)self navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  composeRecipientView = self->_composeRecipientView;

  [(CNComposeRecipientTextView *)composeRecipientView becomeFirstResponder];
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = [objc_alloc(getCNComposeRecipientClass_1()) initWithContact:0 address:v4 kind:{objc_msgSend(v4, "cal_isPhoneNumber")}];

  return v5;
}

- (unint64_t)presentationOptionsForRecipient:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:v4];
    v5 = [v6 unsignedIntegerValue];
  }

  maxNumberOfAttendees = self->_maxNumberOfAttendees;
  if ([(NSArray *)self->_recipients count]> maxNumberOfAttendees && [(NSArray *)self->_recipients indexOfObject:v4 inRange:maxNumberOfAttendees, [(NSArray *)self->_recipients count]- maxNumberOfAttendees]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 1;
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_addressValidationDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_addressValidationDelegate);
    v10 = [v4 normalizedAddress];
    v11 = [v9 eventAttendeePicker:self getValidationStatusForAddress:v10];

    switch(v11)
    {
      case 3:
        goto LABEL_9;
      case 2:
        break;
      case 1:
LABEL_9:
        v5 |= 8uLL;
        break;
      default:
        v5 |= 8uLL;
        v12 = objc_loadWeakRetained(&self->_addressValidationDelegate);
        v13 = [v4 normalizedAddress];
        [v12 eventAttendeePicker:self cacheValidationStatus:1 forAddress:v13];

        break;
    }
  }

  v14 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16 = [EKUIMailUtilities atomPresentationOptionsAsString:v5];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_DEBUG, "Returning presentation options [%@] for recipient: [%@]", &v18, 0x16u);
  }

LABEL_14:

  return v5;
}

- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 contact];
  if (!v6)
  {
    v7 = MEMORY[0x1E6993018];
    v8 = [v5 displayString];
    v9 = [v7 personNameComponentsFromString:v8];

    v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v10 = [v9 familyName];
    [v6 setFamilyName:v10];

    v11 = [v9 givenName];
    [v6 setGivenName:v11];

    v12 = MEMORY[0x1E695CEE0];
    v13 = *MEMORY[0x1E695CB68];
    v14 = [v5 address];
    v15 = [v12 labeledValueWithLabel:v13 value:v14];
    v30[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v6 setEmailAddresses:v16];
  }

  v17 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v17 setIncludeIncludeManagedAppleIDs:1];
  [v17 setIncludeSuggestedContacts:1];
  v18 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v17];
  v19 = [(objc_class *)[(EKEventAttendeePicker *)self _CNContactViewController] viewControllerForUnknownContact:v6];
  [v19 setContactStore:v18];
  [v19 setHidesBottomBarWhenPushed:1];
  [v19 setModalPresentationStyle:3];
  [v19 setDisplayMode:1];
  [v19 setAllowsEditing:0];
  [v5 sourceType];
  v20 = [v5 autocompleteResult];
  v21 = [v20 recentsIdentifier];

  if (v21)
  {
    v22 = EKWeakLinkClass();
    v23 = EKWeakLinkStringConstant();
    v24 = [v22 alloc];
    v25 = [v5 autocompleteResult];
    v26 = [v25 recentsIdentifier];
    v27 = [v24 initWithRecentContactID:v26 domain:v23];
    [v19 setRecentsData:v27];

    [v19 setDelegate:self];
  }

  displayedRecipient = self->_displayedRecipient;
  self->_displayedRecipient = v5;

  v29 = [(EKEventAttendeePicker *)self navigationController];
  [v29 pushViewController:v19 animated:1];
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  if (a4)
  {
    composeRecipientView = self->_composeRecipientView;
    v8 = a4;
    [(CNComposeRecipientTextView *)composeRecipientView clearText];
    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:v8];
    v9 = [(EKEventAttendeePicker *)self _searchManager];
    [v9 didSelectRecipient:v8 atIndex:a5];

    [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:1];
    [(EKEventAttendeePicker *)self _updateFetchContextChosenAddresses];

    [(EKEventAttendeePicker *)self searchForCorecipients];
  }
}

- (void)_updateFetchContextChosenAddresses
{
  v3 = [(CNComposeRecipientTextView *)self->_composeRecipientView uncommentedAddresses];
  [(CNAutocompleteFetchContext *)self->_fetchContext setOtherAddressesAlreadyChosen:v3];
}

- (void)contactViewControllerDidExecuteClearRecentsDataAction:(id)a3
{
  [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController invalidateSearchResultRecipient:self->_displayedRecipient];
  displayedRecipient = self->_displayedRecipient;
  self->_displayedRecipient = 0;

  v6 = [(EKEventAttendeePicker *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v19 = a4;
  v5 = [v19 emailAddresses];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v19 emailAddresses];
    v8 = [v7 firstObject];

    v9 = objc_alloc(getCNComposeRecipientClass_1());
    v10 = [v8 value];
    v11 = [v9 initWithContact:v19 address:v10 kind:0];
LABEL_3:

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [v19 CalDisplayName];
    [v11 setDisplayString:v12];

    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:v11];
    goto LABEL_8;
  }

  v11 = [v19 phoneNumbers];
  if ([v11 count] == 1)
  {
    v13 = [(EKEvent *)self->_event calendar];
    v14 = [v13 constraints];
    v15 = [v14 supportsPhoneNumbers];

    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = [v19 phoneNumbers];
    v8 = [v16 firstObject];

    v10 = [v8 value];
    v17 = objc_alloc(getCNComposeRecipientClass_1());
    v18 = [v10 stringValue];
    v11 = [v17 initWithContact:v19 address:v18 kind:1];

    goto LABEL_3;
  }

LABEL_8:

LABEL_9:
  [(EKEventAttendeePicker *)self composeRecipientViewDidFinishPickingRecipient:self->_composeRecipientView];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v18 = a4;
  v5 = [v18 key];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C208]];

  if (v6)
  {
    v7 = objc_alloc(getCNComposeRecipientClass_1());
    v8 = [v18 contact];
    v9 = [v18 value];
    v10 = [v7 initWithContact:v8 address:v9 kind:0];
LABEL_3:

    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = [v18 contact];
    v12 = [v11 CalDisplayName];
    [v10 setDisplayString:v12];

    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:v10];
    goto LABEL_8;
  }

  v10 = [v18 key];
  if ([v10 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v13 = [(EKEvent *)self->_event calendar];
    v14 = [v13 constraints];
    v15 = [v14 supportsPhoneNumbers];

    if (!v15)
    {
      goto LABEL_9;
    }

    v8 = [v18 value];
    v16 = objc_alloc(getCNComposeRecipientClass_1());
    v9 = [v18 contact];
    v17 = [v8 stringValue];
    v10 = [v16 initWithContact:v9 address:v17 kind:1];

    goto LABEL_3;
  }

LABEL_8:

LABEL_9:
  [(EKEventAttendeePicker *)self composeRecipientViewDidFinishPickingRecipient:self->_composeRecipientView];
}

- (EKEventAttendeePickerDelegate)addressValidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addressValidationDelegate);

  return WeakRetained;
}

@end