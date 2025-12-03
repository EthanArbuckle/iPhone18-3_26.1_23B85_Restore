@interface EKEventAttendeePicker
+ (BOOL)_participantHasResponded:(id)responded;
+ (id)_addressForRecipient:(id)recipient;
- (BOOL)_zeroKeyworkSearchEnabled;
- (BOOL)showAvailability;
- (EKEventAttendeePicker)initWithFrame:(CGRect)frame event:(id)event calendar:(id)calendar overriddenEventStartDate:(id)date overriddenEventEndDate:(id)endDate;
- (EKEventAttendeePickerDelegate)addressValidationDelegate;
- (NSArray)recipients;
- (double)_maxScrollerHeight;
- (id)_lookUpRecipientForAddress:(id)address;
- (id)_searchManager;
- (id)_searchResultsView;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)peoplePickerPrompt;
- (id)predicateForContactWithBlockedAddress;
- (unint64_t)presentationOptionsForRecipient:(id)recipient;
- (void)_adjustLayoutOfSubviews;
- (void)_copyRecipientsFromComposeView;
- (void)_hideSearchResultsViewAndCancelOutstandingSearches:(BOOL)searches;
- (void)_refreshSearchResults;
- (void)_requestAvailabilityForRecipients:(id)recipients;
- (void)_setAtomPresentationOption:(unint64_t)option forRecipient:(id)recipient;
- (void)_setRecipientsOnComposeView;
- (void)_showSearchResultsView;
- (void)_updateFetchContextChosenAddresses;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)consumeCorecipientSearchResults:(id)results taskID:(id)d;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactViewControllerDidExecuteClearRecentsDataAction:(id)action;
- (void)dealloc;
- (void)finishedSearchingForAutocompleteResults;
- (void)finishedSearchingForCorecipients;
- (void)finishedTaskWithID:(id)d;
- (void)loadView;
- (void)scrollComposeViewToEnd;
- (void)searchForCorecipients;
- (void)searchWithText:(id)text;
- (void)setRecipients:(id)recipients;
- (void)updateMaxAttendeeInfoText;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKEventAttendeePicker

- (EKEventAttendeePicker)initWithFrame:(CGRect)frame event:(id)event calendar:(id)calendar overriddenEventStartDate:(id)date overriddenEventEndDate:(id)endDate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  eventCopy = event;
  calendarCopy = calendar;
  dateCopy = date;
  endDateCopy = endDate;
  v51.receiver = self;
  v51.super_class = EKEventAttendeePicker;
  v20 = [(EKEventAttendeePicker *)&v51 init];
  v21 = v20;
  if (v20)
  {
    v50 = endDateCopy;
    v20->_initialFrame.origin.x = x;
    v20->_initialFrame.origin.y = y;
    v20->_initialFrame.size.width = width;
    v20->_initialFrame.size.height = height;
    objc_storeStrong(&v20->_event, event);
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recipientAddressesToRecipients = v21->_recipientAddressesToRecipients;
    v21->_recipientAddressesToRecipients = v22;

    objc_storeStrong(&v21->_overriddenEventStartDate, date);
    objc_storeStrong(&v21->_overriddenEventEndDate, endDate);
    v21->_hasChanges = 0;
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    availabilityQueue = v21->_availabilityQueue;
    v21->_availabilityQueue = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    title = [eventCopy title];
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v27, title];
    [(NSOperationQueue *)v21->_availabilityQueue setName:v28];
    EKWeakLinkClass();
    v29 = objc_opt_new();
    fetchContext = v21->_fetchContext;
    v21->_fetchContext = v29;

    title2 = [eventCopy title];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setTitle:title2];

    if (dateCopy)
    {
      [(CNAutocompleteFetchContext *)v21->_fetchContext setDate:dateCopy];
    }

    else
    {
      startDate = [eventCopy startDate];
      [(CNAutocompleteFetchContext *)v21->_fetchContext setDate:startDate];
    }

    location = [eventCopy location];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setLocationUUID:location];

    v34 = calendarCopy;
    if (eventCopy)
    {
      calendar = [eventCopy calendar];
    }

    else
    {
      calendar = calendarCopy;
    }

    v36 = calendar;
    source = [calendar source];
    sourceIdentifier = [source sourceIdentifier];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setSendingAddressAccountIdentifier:sourceIdentifier];

    selfIdentityEmail = [v36 selfIdentityEmail];
    [(CNAutocompleteFetchContext *)v21->_fetchContext setSendingAddress:selfIdentityEmail];

    v40 = objc_opt_new();
    searchResults = v21->_searchResults;
    v21->_searchResults = v40;

    calendar2 = [(EKEvent *)v21->_event calendar];
    maxAttendees = [calendar2 maxAttendees];
    roomAttendees = [(EKEvent *)v21->_event roomAttendees];
    v21->_maxNumberOfAttendees = maxAttendees + ~[roomAttendees count];

    eventStore = [eventCopy eventStore];
    blockList = [eventStore blockList];
    blockList = v21->_blockList;
    v21->_blockList = blockList;

    calendarCopy = v34;
    endDateCopy = v50;
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKEventAttendeePickerBGView *)v3 setBackgroundColor:systemBackgroundColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setBackgroundColor:clearColor];

  v15 = self->_composeRecipientView;
  array = [MEMORY[0x1E695DEC8] array];
  [(CNComposeRecipientTextView *)v15 setAddresses:array];

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
  view = [(EKEventAttendeePicker *)self view];
  [view layoutMargins];
  [(CNComposeRecipientTextView *)self->_composeRecipientView setLayoutMargins:?];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v3 viewSafeAreaInsetsDidChange];
  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CNComposeRecipientTextView *)self->_composeRecipientView becomeFirstResponder];
  v5.receiver = self;
  v5.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(EKEventAttendeePicker *)self scrollComposeViewToEnd];
  v5.receiver = self;
  v5.super_class = EKEventAttendeePicker;
  [(EKEventAttendeePicker *)&v5 viewDidAppear:appearCopy];
}

- (NSArray)recipients
{
  if (self->_composeRecipientView)
  {
    recipients = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  }

  else
  {
    recipients = [(NSArray *)self->_recipients copy];
  }

  return recipients;
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients copy];
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
  uncommentedAddresses = [(CNComposeRecipientTextView *)self->_composeRecipientView uncommentedAddresses];
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
    v26 = uncommentedAddresses;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "[%@] Setting fetch context [%@] otherAddressesAlreadyChosen to [%@]", buf, 0x20u);
  }

  attendees = [(EKEvent *)self->_event attendees];
  v15 = [attendees CalMap:&__block_literal_global_58];

  v16 = [uncommentedAddresses arrayByAddingObjectsFromArray:v15];
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

- (id)_lookUpRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = [(NSMutableDictionary *)self->_recipientAddressesToRecipients objectForKey:addressCopy];
  if (!v5)
  {
    v6 = EKUtils_AdjustedAttendeeAddress();
    v5 = [(NSMutableDictionary *)self->_recipientAddressesToRecipients objectForKey:v6];
  }

  return v5;
}

- (void)_requestAvailabilityForRecipients:(id)recipients
{
  v49 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  if ([(EKEventAttendeePicker *)self showAvailability])
  {
    if (recipientsCopy && [recipientsCopy count])
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

        v13 = [recipientsCopy count];
        v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
        if (([(EKEvent *)self->_event isStartDateDirty]& 1) != 0)
        {
          isEndDateDirty = 1;
        }

        else
        {
          isEndDateDirty = [(EKEvent *)self->_event isEndDateDirty];
        }

        calendar = [(EKEvent *)self->_event calendar];
        source = [calendar source];
        constraints = [source constraints];
        supportsIgnoringEventsInAvailabilityRequests = [constraints supportsIgnoringEventsInAvailabilityRequests];

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke;
        v43[3] = &unk_1E84427A0;
        v43[4] = self;
        v45 = isEndDateDirty;
        v46 = supportsIgnoringEventsInAvailabilityRequests;
        v20 = v14;
        v44 = v20;
        [recipientsCopy enumerateObjectsUsingBlock:v43];
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
            startDate = overriddenEventStartDate;
          }

          else
          {
            startDate = [(EKEvent *)self->_event startDate];
          }

          v25 = startDate;
          overriddenEventEndDate = self->_overriddenEventEndDate;
          if (overriddenEventEndDate)
          {
            endDateUnadjustedForLegacyClients = overriddenEventEndDate;
          }

          else
          {
            endDateUnadjustedForLegacyClients = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
          }

          v28 = endDateUnadjustedForLegacyClients;
          v29 = objc_alloc(MEMORY[0x1E6966AE0]);
          calendar2 = [(EKEvent *)self->_event calendar];
          source2 = [calendar2 source];
          v32 = [v29 initWithSource:source2 startDate:v25 endDate:v28 ignoredEvent:self->_event addresses:v20 resultsBlock:v21];

          objc_initWeak(&location, v32);
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __59__EKEventAttendeePicker__requestAvailabilityForRecipients___block_invoke_66;
          v37 = &unk_1E8440DE0;
          objc_copyWeak(&v40, &location);
          v38 = v20;
          selfCopy = self;
          [(EKEventAttendeePicker *)v32 setCompletionBlock:&v34];
          v33 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy2 = v32;
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
      selfCopy2 = self;
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

+ (id)_addressForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v4 = objc_getAssociatedObject(recipientCopy, &kEKUI_CNComposeReciepentParticipantKey_0);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URL];
    absoluteString = [v6 absoluteString];

    goto LABEL_8;
  }

  absoluteString = [recipientCopy normalizedAddress];
  if (absoluteString)
  {
    if (![recipientCopy kind] || objc_msgSend(recipientCopy, "kind") == 1)
    {

LABEL_7:
      absoluteString = [recipientCopy normalizedAddress];
      goto LABEL_8;
    }

    kind = [recipientCopy kind];

    if (kind == 4)
    {
      goto LABEL_7;
    }

    absoluteString = 0;
  }

LABEL_8:

  return absoluteString;
}

+ (BOOL)_participantHasResponded:(id)responded
{
  v3 = objc_getAssociatedObject(responded, &kEKUI_CNComposeReciepentParticipantKey_0);
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

- (void)_setAtomPresentationOption:(unint64_t)option forRecipient:(id)recipient
{
  v18 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  if (!atomPresentationOptionsByRecipient)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_atomPresentationOptionsByRecipient;
    self->_atomPresentationOptionsByRecipient = v8;

    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:option];
  [(NSMutableDictionary *)atomPresentationOptionsByRecipient setObject:v10 forKey:recipientCopy];

  v11 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13 = [EKUIMailUtilities atomPresentationOptionsAsString:option];
    v14 = 138412546;
    v15 = recipientCopy;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Atom presentation of recipient [%@] set to [%@]", &v14, 0x16u);
  }
}

- (void)_copyRecipientsFromComposeView
{
  recipients = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  v3 = [recipients copy];
  recipients = self->_recipients;
  self->_recipients = v3;
}

- (id)_searchResultsView
{
  searchResultsView = self->_searchResultsView;
  if (!searchResultsView)
  {
    view = [(EKEventAttendeePicker *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;

    [getCNComposeRecipientTextViewClass() preferredHeight];
    v10 = v9;
    tableView = [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController tableView];
    v12 = self->_searchResultsView;
    self->_searchResultsView = tableView;

    [(UITableView *)self->_searchResultsView setFrame:0.0, v10, v6, v8 - v10];
    [(UITableView *)self->_searchResultsView setAutoresizingMask:18];
    [(UITableView *)self->_searchResultsView setKeyboardDismissMode:1];
    searchResultsView = self->_searchResultsView;
  }

  return searchResultsView;
}

- (void)_hideSearchResultsViewAndCancelOutstandingSearches:(BOOL)searches
{
  searchesCopy = searches;
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
  if (searchesCopy && self->_lastSearchId)
  {
    _searchManager = [(EKEventAttendeePicker *)self _searchManager];
    [_searchManager cancelTaskWithID:self->_lastSearchId];

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
  _searchResultsView = [(EKEventAttendeePicker *)self _searchResultsView];
  superview = [_searchResultsView superview];

  if (!superview)
  {
    view = [(EKEventAttendeePicker *)self view];
    [view addSubview:_searchResultsView];
  }

  [(CNComposeRecipientTextView *)self->_composeRecipientView setSeparatorHidden:1];
  [(EKEventAttendeePicker *)self _adjustLayoutOfSubviews];
}

- (double)_maxScrollerHeight
{
  view = [(EKEventAttendeePicker *)self view];
  [view bounds];
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
  recipients = [(EKEventAttendeePicker *)self recipients];
  if ([recipients count])
  {
    IsCompact = 1;
  }

  else
  {
    view = [(EKEventAttendeePicker *)self view];
    if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view))
    {
      IsCompact = 1;
    }

    else
    {
      view2 = [(EKEventAttendeePicker *)self view];
      IsCompact = EKUICurrentHeightSizeClassIsCompact(view2);
    }
  }

  return IsCompact;
}

- (void)updateMaxAttendeeInfoText
{
  maxNumberOfAttendees = self->_maxNumberOfAttendees;
  recipients = [(CNComposeRecipientTextView *)self->_composeRecipientView recipients];
  v5 = [recipients count];

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
    maxNumberOfAttendees = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v10, v5, maxNumberOfAttendees];
    [(CNComposeRecipientTextView *)v7 setComposeFieldInfoText:maxNumberOfAttendees];
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

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__EKEventAttendeePicker_consumeAutocompleteSearchResults_taskID___block_invoke;
  block[3] = &unk_1E843EC38;
  v11 = dCopy;
  selfCopy = self;
  v13 = resultsCopy;
  v8 = resultsCopy;
  v9 = dCopy;
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

- (void)consumeCorecipientSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__EKEventAttendeePicker_consumeCorecipientSearchResults_taskID___block_invoke;
  block[3] = &unk_1E843EC38;
  v11 = dCopy;
  selfCopy = self;
  v13 = resultsCopy;
  v8 = resultsCopy;
  v9 = dCopy;
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

- (void)finishedTaskWithID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EKEventAttendeePicker_finishedTaskWithID___block_invoke;
  v6[3] = &unk_1E843EFB8;
  v7 = dCopy;
  selfCopy = self;
  v5 = dCopy;
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

- (void)searchWithText:(id)text
{
  v21 = *MEMORY[0x1E69E9840];
  textCopy = text;
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
    v18 = textCopy;
    v19 = 2112;
    v20 = fetchContext;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "[%@] Beginning text search with text [%@] context [%@]", &v15, 0x20u);
  }

  if (self->_lastSearchId)
  {
    _searchManager = [(EKEventAttendeePicker *)self _searchManager];
    [_searchManager cancelTaskWithID:self->_lastSearchId];
  }

  v11 = self->_searchResults;
  objc_sync_enter(v11);
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  objc_sync_exit(v11);

  _searchManager2 = [(EKEventAttendeePicker *)self _searchManager];
  v13 = [_searchManager2 searchForText:textCopy withAutocompleteFetchContext:self->_fetchContext consumer:self];
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
    _searchManager = [(EKEventAttendeePicker *)self _searchManager];
    [_searchManager cancelTaskWithID:self->_lastSearchId];

    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }

  v10 = self->_searchResults;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_searchResults removeAllObjects];
  objc_sync_exit(v10);

  if ([(EKEventAttendeePicker *)self _zeroKeyworkSearchEnabled])
  {
    _searchManager2 = [(EKEventAttendeePicker *)self _searchManager];
    v12 = [_searchManager2 searchForCorecipientsWithAutocompleteFetchContext:self->_fetchContext consumer:self];
    v13 = self->_lastSearchId;
    self->_lastSearchId = v12;
  }

  else
  {
    [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:0];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  v9 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v5 = MEMORY[0x1E695DEC8];
  recipientCopy2 = recipient;
  v7 = [v5 arrayWithObjects:&recipientCopy count:1];

  [(EKEventAttendeePicker *)self _requestAvailabilityForRecipients:v7, recipientCopy, v9];
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

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  [view removeRecipient:recipient];
  [(EKEventAttendeePicker *)self _updateFetchContextChosenAddresses];
  [(EKEventAttendeePicker *)self updateMaxAttendeeInfoText];
  [(EKEventAttendeePicker *)self _copyRecipientsFromComposeView];

  [(EKEventAttendeePicker *)self _invalidateAtomPresentationOptionsForAllRecipients];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  addressCopy = address;
  viewCopy = view;
  [viewCopy clearText];
  [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:1];
  [viewCopy addAddress:addressCopy];
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

  view = [(EKEventAttendeePicker *)self view];
  [view safeAreaInsets];
  v11 = v8 + v10;

  [(UIScrollView *)self->_recipientScrollView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  _searchResultsView = [(EKEventAttendeePicker *)self _searchResultsView];
  [_searchResultsView setAlpha:0.0];
  superview = [_searchResultsView superview];

  if (superview)
  {
    [_searchResultsView frame];
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = v13;
    v36.origin.y = v15;
    v36.size.width = v17;
    v36.size.height = v11;
    if (MaxY <= CGRectGetMaxY(v36))
    {
      view2 = [(EKEventAttendeePicker *)self view];
      [view2 frame];
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
    [_searchResultsView setFrame:{MinX, v24, Width, MaxY - CGRectGetMaxY(v40)}];
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
  v29 = _searchResultsView;
  v27 = _searchResultsView;
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

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CNComposeRecipientTextView *)self->_composeRecipientView bounds];
  v7 = CGRectGetHeight(v16);
  v9 = 3221225472;
  v8 = MEMORY[0x1E69E9820];
  v10 = __57__EKEventAttendeePicker_composeHeaderView_didChangeSize___block_invoke;
  v11 = &unk_1E8442818;
  selfCopy = self;
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

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy length])
  {
    [(EKEventAttendeePicker *)self searchWithText:changeCopy];
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
  calendar = [(EKEvent *)self->_event calendar];
  source = [calendar source];
  constraints = [source constraints];
  supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

  return supportsAvailabilityRequests;
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  [(EKEventAttendeePicker *)self _CNContactPickerViewController];
  v14 = objc_opt_new();
  [v14 setDelegate:self];
  [v14 setModalPresentationStyle:18];
  calendar = [(EKEvent *)self->_event calendar];
  constraints = [calendar constraints];
  supportsPhoneNumbers = [constraints supportsPhoneNumbers];

  if (supportsPhoneNumbers)
  {
    v7 = @"emailAddresses.@count > 0 || phoneNumbers.@count > 0";
  }

  else
  {
    v7 = @"emailAddresses.@count > 0";
  }

  if (supportsPhoneNumbers)
  {
    v8 = @"(emailAddresses.@count == 1) || (emailAddresses.@count == 0 && phoneNumbers.@count == 1)";
  }

  else
  {
    v8 = @"emailAddresses.@count == 1";
  }

  if (supportsPhoneNumbers)
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

  navigationController = [(EKEventAttendeePicker *)self navigationController];
  [navigationController presentModalViewController:v14 withTransition:8];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  navigationController = [(EKEventAttendeePicker *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  composeRecipientView = self->_composeRecipientView;

  [(CNComposeRecipientTextView *)composeRecipientView becomeFirstResponder];
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = [objc_alloc(getCNComposeRecipientClass_1()) initWithContact:0 address:addressCopy kind:{objc_msgSend(addressCopy, "cal_isPhoneNumber")}];

  return v5;
}

- (unint64_t)presentationOptionsForRecipient:(id)recipient
{
  v22 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  unsignedIntegerValue = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:recipientCopy];

  if (unsignedIntegerValue)
  {
    v6 = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:recipientCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  maxNumberOfAttendees = self->_maxNumberOfAttendees;
  if ([(NSArray *)self->_recipients count]> maxNumberOfAttendees && [(NSArray *)self->_recipients indexOfObject:recipientCopy inRange:maxNumberOfAttendees, [(NSArray *)self->_recipients count]- maxNumberOfAttendees]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    unsignedIntegerValue = 1;
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_addressValidationDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_addressValidationDelegate);
    normalizedAddress = [recipientCopy normalizedAddress];
    v11 = [v9 eventAttendeePicker:self getValidationStatusForAddress:normalizedAddress];

    switch(v11)
    {
      case 3:
        goto LABEL_9;
      case 2:
        break;
      case 1:
LABEL_9:
        unsignedIntegerValue |= 8uLL;
        break;
      default:
        unsignedIntegerValue |= 8uLL;
        v12 = objc_loadWeakRetained(&self->_addressValidationDelegate);
        normalizedAddress2 = [recipientCopy normalizedAddress];
        [v12 eventAttendeePicker:self cacheValidationStatus:1 forAddress:normalizedAddress2];

        break;
    }
  }

  v14 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16 = [EKUIMailUtilities atomPresentationOptionsAsString:unsignedIntegerValue];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = recipientCopy;
    _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_DEBUG, "Returning presentation options [%@] for recipient: [%@]", &v18, 0x16u);
  }

LABEL_14:

  return unsignedIntegerValue;
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  v30[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  contact = [recipientCopy contact];
  if (!contact)
  {
    v7 = MEMORY[0x1E6993018];
    displayString = [recipientCopy displayString];
    v9 = [v7 personNameComponentsFromString:displayString];

    contact = objc_alloc_init(MEMORY[0x1E695CF18]);
    familyName = [v9 familyName];
    [contact setFamilyName:familyName];

    givenName = [v9 givenName];
    [contact setGivenName:givenName];

    v12 = MEMORY[0x1E695CEE0];
    v13 = *MEMORY[0x1E695CB68];
    address = [recipientCopy address];
    v15 = [v12 labeledValueWithLabel:v13 value:address];
    v30[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [contact setEmailAddresses:v16];
  }

  v17 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v17 setIncludeIncludeManagedAppleIDs:1];
  [v17 setIncludeSuggestedContacts:1];
  v18 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v17];
  v19 = [(objc_class *)[(EKEventAttendeePicker *)self _CNContactViewController] viewControllerForUnknownContact:contact];
  [v19 setContactStore:v18];
  [v19 setHidesBottomBarWhenPushed:1];
  [v19 setModalPresentationStyle:3];
  [v19 setDisplayMode:1];
  [v19 setAllowsEditing:0];
  [recipientCopy sourceType];
  autocompleteResult = [recipientCopy autocompleteResult];
  recentsIdentifier = [autocompleteResult recentsIdentifier];

  if (recentsIdentifier)
  {
    v22 = EKWeakLinkClass();
    v23 = EKWeakLinkStringConstant();
    v24 = [v22 alloc];
    autocompleteResult2 = [recipientCopy autocompleteResult];
    recentsIdentifier2 = [autocompleteResult2 recentsIdentifier];
    v27 = [v24 initWithRecentContactID:recentsIdentifier2 domain:v23];
    [v19 setRecentsData:v27];

    [v19 setDelegate:self];
  }

  displayedRecipient = self->_displayedRecipient;
  self->_displayedRecipient = recipientCopy;

  navigationController = [(EKEventAttendeePicker *)self navigationController];
  [navigationController pushViewController:v19 animated:1];
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  if (recipient)
  {
    composeRecipientView = self->_composeRecipientView;
    recipientCopy = recipient;
    [(CNComposeRecipientTextView *)composeRecipientView clearText];
    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:recipientCopy];
    _searchManager = [(EKEventAttendeePicker *)self _searchManager];
    [_searchManager didSelectRecipient:recipientCopy atIndex:index];

    [(EKEventAttendeePicker *)self _hideSearchResultsViewAndCancelOutstandingSearches:1];
    [(EKEventAttendeePicker *)self _updateFetchContextChosenAddresses];

    [(EKEventAttendeePicker *)self searchForCorecipients];
  }
}

- (void)_updateFetchContextChosenAddresses
{
  uncommentedAddresses = [(CNComposeRecipientTextView *)self->_composeRecipientView uncommentedAddresses];
  [(CNAutocompleteFetchContext *)self->_fetchContext setOtherAddressesAlreadyChosen:uncommentedAddresses];
}

- (void)contactViewControllerDidExecuteClearRecentsDataAction:(id)action
{
  [(CNAutocompleteResultsTableViewController *)self->_autocompleteTableViewController invalidateSearchResultRecipient:self->_displayedRecipient];
  displayedRecipient = self->_displayedRecipient;
  self->_displayedRecipient = 0;

  navigationController = [(EKEventAttendeePicker *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  v6 = [emailAddresses count];

  if (v6 == 1)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    firstObject = [emailAddresses2 firstObject];

    v9 = objc_alloc(getCNComposeRecipientClass_1());
    value = [firstObject value];
    phoneNumbers = [v9 initWithContact:contactCopy address:value kind:0];
LABEL_3:

    if (!phoneNumbers)
    {
      goto LABEL_9;
    }

    calDisplayName = [contactCopy CalDisplayName];
    [phoneNumbers setDisplayString:calDisplayName];

    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:phoneNumbers];
    goto LABEL_8;
  }

  phoneNumbers = [contactCopy phoneNumbers];
  if ([phoneNumbers count] == 1)
  {
    calendar = [(EKEvent *)self->_event calendar];
    constraints = [calendar constraints];
    supportsPhoneNumbers = [constraints supportsPhoneNumbers];

    if (!supportsPhoneNumbers)
    {
      goto LABEL_9;
    }

    phoneNumbers2 = [contactCopy phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];

    value = [firstObject value];
    v17 = objc_alloc(getCNComposeRecipientClass_1());
    stringValue = [value stringValue];
    phoneNumbers = [v17 initWithContact:contactCopy address:stringValue kind:1];

    goto LABEL_3;
  }

LABEL_8:

LABEL_9:
  [(EKEventAttendeePicker *)self composeRecipientViewDidFinishPickingRecipient:self->_composeRecipientView];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  v5 = [propertyCopy key];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C208]];

  if (v6)
  {
    v7 = objc_alloc(getCNComposeRecipientClass_1());
    contact = [propertyCopy contact];
    value = [propertyCopy value];
    v10 = [v7 initWithContact:contact address:value kind:0];
LABEL_3:

    if (!v10)
    {
      goto LABEL_9;
    }

    contact2 = [propertyCopy contact];
    calDisplayName = [contact2 CalDisplayName];
    [v10 setDisplayString:calDisplayName];

    [(CNComposeRecipientTextView *)self->_composeRecipientView addRecipient:v10];
    goto LABEL_8;
  }

  v10 = [propertyCopy key];
  if ([v10 isEqualToString:*MEMORY[0x1E695C330]])
  {
    calendar = [(EKEvent *)self->_event calendar];
    constraints = [calendar constraints];
    supportsPhoneNumbers = [constraints supportsPhoneNumbers];

    if (!supportsPhoneNumbers)
    {
      goto LABEL_9;
    }

    contact = [propertyCopy value];
    v16 = objc_alloc(getCNComposeRecipientClass_1());
    value = [propertyCopy contact];
    stringValue = [contact stringValue];
    v10 = [v16 initWithContact:value address:stringValue kind:1];

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