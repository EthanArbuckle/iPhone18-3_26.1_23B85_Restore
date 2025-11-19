@interface EKSubscribedCalendarEditor
+ (id)createNewCalendarForEntityType:(unint64_t)a3 inEventStore:(id)a4;
- (BOOL)_needToShowPrivacyNotice;
- (BOOL)_shouldShowDeleteButton;
- (BOOL)updateURL:(id)a3;
- (CGSize)calculatePreferredContentSize;
- (EKSubscribedCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6;
- (id)_editItemsForState:(unint64_t)a3;
- (id)rightButton;
- (void)URLEditItemDidChangeURLString:(id)a3;
- (void)_allowButtonTapped;
- (void)_cancelInFlightPreviewDataFetch;
- (void)_denyButtonTapped;
- (void)_kickoffPreviewDataFetch:(id)a3;
- (void)_promptToContinueUsingInsecureConnection;
- (void)_setTableHeaderViewForState;
- (void)_showPrivacyNotice;
- (void)_startSpamCheckingURLString:(id)a3;
- (void)_unsubscribeFromCalendar;
- (void)_unsubscribeFromCalendarAndReportJunk;
- (void)_unsubscribeTapped:(id)a3;
- (void)_updateCancelButtonVisibilityForSpamStatus:(BOOL)a3;
- (void)_updateTableHeaderLayoutForWidth:(double)a3;
- (void)_validateURL;
- (void)_validateURL:(id)a3;
- (void)_validateUserEnteredURL;
- (void)calendarItemStartedEditing:(id)a3;
- (void)calendarSubscriptionSpamCheckEditItem:(id)a3 didDetermineThatURL:(id)a4 isSpam:(BOOL)a5;
- (void)cancel:(id)a3;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)didSaveCalendar:(id)a3;
- (void)loadView;
- (void)setState:(unint64_t)a3;
- (void)subscribedCalendarDidFinishLoading:(id)a3;
- (void)subscribedCalendarFailedWithError:(id)a3;
- (void)subscribedCalendarRequiresPassword:(id)a3 withContinuation:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willSaveCalendar:(id)a3;
@end

@implementation EKSubscribedCalendarEditor

- (EKSubscribedCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = EKSubscribedCalendarEditor;
  v13 = [(EKAbstractCalendarEditor *)&v23 initWithCalendar:v10 eventStore:v11 entityType:a5 limitedToSource:v12];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E6993490]);
    subCalManager = v13->_subCalManager;
    v13->_subCalManager = v14;

    objc_storeStrong(&v13->_limitedToSource, a6);
    if ([(EKAbstractCalendarEditor *)v13 isNewCalendar])
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    [(EKSubscribedCalendarEditor *)v13 setState:v16];
    objc_initWeak(&location, v13);
    v24[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__EKSubscribedCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource___block_invoke;
    v20[3] = &unk_1E843EBE8;
    objc_copyWeak(&v21, &location);
    v18 = [(EKSubscribedCalendarEditor *)v13 registerForTraitChanges:v17 withHandler:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __85__EKSubscribedCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[144] reset];
    v2 = [v3 tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

+ (id)createNewCalendarForEntityType:(unint64_t)a3 inEventStore:(id)a4
{
  v4 = [MEMORY[0x1E6966990] calendarForEntityType:0 eventStore:a4];
  [v4 setSubscribed:1];
  [v4 setReadOnly:1];
  [v4 setStripAlarms:1];
  [v4 setStripAttachments:1];

  return v4;
}

- (BOOL)updateURL:(id)a3
{
  v4 = a3;
  v5 = [(EKSubscribedCalendarEditor *)self state];
  if (!v5)
  {
    [(EKSubscribedCalendarEditor *)self setPrefillURL:v4];
    v6 = [(EKSubscribedCalendarEditor *)self prefillURL];
    v7 = [v6 absoluteString];
    [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setUrlString:v7];

    v8 = [(EKSubscribedCalendarEditor *)self prefillURL];
    v9 = [v8 absoluteString];
    [(EKSubscribedCalendarEditor *)self _startSpamCheckingURLString:v9];
  }

  return v5 == 0;
}

- (void)loadView
{
  if (!self->_holidayCalendarMode)
  {
    v3 = [(EKAbstractCalendarEditor *)self isNewCalendar];
    v4 = EventKitUIBundle();
    v5 = v4;
    if (v3)
    {
      v6 = @"Add Subscription Calendar Title";
      v7 = @"Add Subscription Calendar";
    }

    else
    {
      v6 = @"Edit Subscribed Calendar";
      v7 = &stru_1F4EF6790;
    }

    v8 = [v4 localizedStringForKey:v6 value:v7 table:0];
    [(EKSubscribedCalendarEditor *)self setTitle:v8];
  }

  v9.receiver = self;
  v9.super_class = EKSubscribedCalendarEditor;
  [(EKAbstractCalendarEditor *)&v9 loadView];
  [(EKSubscribedCalendarEditor *)self _setTableHeaderViewForState];
  self->_allowTableHeaderLayouts = 1;
}

- (id)rightButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  [v2 setAccessibilityIdentifier:@"done-button"];

  return v2;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = EKSubscribedCalendarEditor;
  v3 = [(EKAbstractCalendarEditor *)&v7 viewDidLoad];
  if (MEMORY[0x1D38B98D0](v3))
  {
    if (![(EKSubscribedCalendarEditor *)self state])
    {
      v4 = [(EKAbstractCalendarEditor *)self enableDoneInitially];
      v5 = [(EKSubscribedCalendarEditor *)self navigationItem];
      v6 = [v5 rightBarButtonItem];
      [v6 setHidden:!v4];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if ([(EKAbstractCalendarEditor *)self isNewCalendar]&& !self->_holidayCalendarMode)
  {
    if ([(EKSubscribedCalendarEditor *)self _needToShowPrivacyNotice])
    {
      [(EKSubscribedCalendarEditor *)self _showPrivacyNotice];
    }

    v5 = [(EKAbstractCalendarEditor *)self editItems];
    v6 = [v5 objectAtIndex:0];
    [v6 becomeFirstResponder];
  }

  self->_allowTableHeaderLayouts = 1;
  v7.receiver = self;
  v7.super_class = EKSubscribedCalendarEditor;
  [(EKSubscribedCalendarEditor *)&v7 viewDidAppear:v3];
  if (self->_holidayCalendarMode && [(EKSubscribedCalendarEditor *)self state]!= 1)
  {
    [(EKSubscribedCalendarEditor *)self _validateURL];
  }
}

- (BOOL)_needToShowPrivacyNotice
{
  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x1E6993470] sharedPreferences];
    v3 = [v2 displayedSubscribedCalendarSpamDetectionPrivacyNotice] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKSubscribedCalendarEditor;
  [(EKAbstractCalendarEditor *)&v4 viewWillAppear:a3];
  [(EKSubscribedCalendarEditor *)self _setTableHeaderViewForState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  self->_allowTableHeaderLayouts = 0;
  v3.receiver = self;
  v3.super_class = EKSubscribedCalendarEditor;
  [(EKAbstractCalendarEditor *)&v3 viewWillDisappear:a3];
}

- (void)_setTableHeaderViewForState
{
  v3 = [(EKSubscribedCalendarEditor *)self tableView];
  v4 = [v3 tableHeaderView];

  if (self->_state == 3)
  {
    v5 = 0;
    v6 = 0;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = [[EKSubscribedCalendarDescriptionHeader alloc] initWithParentWidth:self->_holidayCalendarMode showHolidayCalendarDescription:EKUIContainedControllerIdealWidth()];
  v5 = v6;
  if ((v4 == 0) == (v6 != 0))
  {
LABEL_3:
    objc_storeStrong(&self->_tableViewHeader, v5);
    tableViewHeader = self->_tableViewHeader;
    v8 = [(EKSubscribedCalendarEditor *)self tableView];
    [v8 setTableHeaderView:tableViewHeader];

    v6 = v5;
  }

LABEL_4:
  v9 = v6;
  [(EKSubscribedCalendarEditor *)self _updateTableHeaderLayoutForWidth:EKUIContainedControllerIdealWidth()];
  [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
}

- (void)_updateTableHeaderLayoutForWidth:(double)a3
{
  if ([(EKSubscribedCalendarDescriptionHeader *)self->_tableViewHeader updateLayoutForWidth:a3])
  {
    v4 = [(EKSubscribedCalendarEditor *)self tableView];
    [v4 setTableHeaderView:0];

    tableViewHeader = self->_tableViewHeader;
    v6 = [(EKSubscribedCalendarEditor *)self tableView];
    [v6 setTableHeaderView:tableViewHeader];

    [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
  }
}

- (BOOL)_shouldShowDeleteButton
{
  if ([(EKAbstractCalendarEditor *)self isNewCalendar])
  {
    return 0;
  }

  v3 = [(EKAbstractCalendarEditor *)self calendar];
  v4 = [v3 isImmutable];

  if (v4)
  {
    return 0;
  }

  v5 = [(EKAbstractCalendarEditor *)self calendar];
  v6 = [v5 isSubscribedHolidayCalendar];

  if (v6)
  {
    return 0;
  }

  v8 = [(EKAbstractCalendarEditor *)self calendar];
  v9 = [v8 isMarkedUndeletable];

  return v9 ^ 1;
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  [(EKCalendarColorEditItem *)self->_colorEditItem reset];
  v4 = [(EKSubscribedCalendarEditor *)self tableView];
  [v4 reloadData];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(EKSubscribedCalendarEditor *)self _setTableHeaderViewForState];
    [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems];
    if (self->_state == 1)
    {
      if ([(EKAbstractCalendarEditor *)self enableDoneInitially])
      {
        if (![(EKAbstractCalendarEditor *)self shouldShowCancelButton])
        {
          return;
        }

        v15 = [(EKSubscribedCalendarEditor *)self navigationItem];
        v4 = [v15 leftBarButtonItem];
      }

      else
      {
        if (MEMORY[0x1D38B98D0]())
        {
          v5 = [(EKSubscribedCalendarEditor *)self navigationItem];
          v6 = [v5 rightBarButtonItem];
          v7 = [v6 isEnabled];

          if ((v7 & 1) == 0)
          {
            v8 = [MEMORY[0x1E6979538] animation];
            [v8 setDuration:0.25];
            [v8 setType:*MEMORY[0x1E697A030]];
            v9 = [(EKSubscribedCalendarEditor *)self navigationController];
            v10 = [v9 navigationBar];
            v11 = [v10 layer];
            [v11 addAnimation:v8 forKey:@"fadeButton"];

            v12 = [(EKSubscribedCalendarEditor *)self navigationItem];
            v13 = [v12 rightBarButtonItem];
            [v13 setHidden:0];
          }
        }

        v15 = [(EKSubscribedCalendarEditor *)self navigationItem];
        v4 = [v15 rightBarButtonItem];
      }

      v14 = v4;
      [v4 setEnabled:1];
    }
  }
}

- (id)_editItemsForState:(unint64_t)a3
{
  v62[4] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_33;
      }

      v8 = objc_alloc_init(EKCalendarTitleEditItem);
      [(EKCalendarTitleEditItem *)v8 setShowHeader:0];
      v20 = objc_alloc_init(EKCalendarColorEditItem);
      colorEditItem = self->_colorEditItem;
      self->_colorEditItem = v20;

      [(EKCalendarColorEditItem *)self->_colorEditItem setLayoutInline:0];
      v9 = objc_alloc_init(EKCalendarIgnoreAlertsEditItem);
      v10 = objc_alloc_init(EKCalendarSubscriptionDetailsEditItem);
      v22 = self->_colorEditItem;
      v56[0] = v8;
      v56[1] = v22;
      v56[2] = v9;
      v56[3] = v10;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
      [v5 addObjectsFromArray:v23];

      if (![(EKSubscribedCalendarEditor *)self _shouldShowDeleteButton])
      {
        goto LABEL_27;
      }

      v13 = objc_alloc_init(EKCalendarButtonEditItem);
      [(EKCalendarButtonEditItem *)v13 setButtonTarget:self action:sel__unsubscribeTapped_];
      v24 = EventKitUIBundle();
      v25 = [v24 localizedStringForKey:@"Unsubscribe" value:&stru_1F4EF6790 table:0];
      [(EKCalendarButtonEditItem *)v13 setButtonTitle:v25];

      [(EKCalendarButtonEditItem *)v13 setAccessibilityIdentifier:@"unsubscribe-calendar"];
      [v5 addObject:v13];
LABEL_26:

LABEL_27:
LABEL_32:

      goto LABEL_33;
    }

    [(EKCalendarValidateEditItem *)self->_validateItem setShowError:1];
    if (self->_holidayCalendarMode)
    {
      validateItem = self->_validateItem;
      v45 = MEMORY[0x1E695DEC8];
      p_validateItem = &validateItem;
      v47 = 1;
      goto LABEL_31;
    }

    v50 = self->_validateItem;
    v57[0] = self->_urlItem;
    v57[1] = v50;
    v45 = MEMORY[0x1E695DEC8];
    p_validateItem = v57;
LABEL_30:
    v47 = 2;
    goto LABEL_31;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_33;
    }

    v6 = objc_alloc_init(EKCalendarSubscriptionURLEditItem);
    urlItem = self->_urlItem;
    self->_urlItem = v6;

    [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setEditable:0];
    v8 = [[EKCalendarPreviewEventsEditItem alloc] initWithPreviewSummary:self->_previewSummary];
    v9 = objc_alloc_init(EKCalendarTitleEditItem);
    [(EKCalendarIgnoreAlertsEditItem *)v9 setShowHeader:1];
    if (self->_holidayCalendarMode && [(NSString *)self->_preloadTitle length])
    {
      [(EKCalendarIgnoreAlertsEditItem *)v9 setPrefillTitle:self->_preloadTitle];
    }

    v10 = [[EKCalendarAccountEditItem alloc] initLimitedToSource:self->_limitedToSource];
    [(EKCalendarSubscriptionDetailsEditItem *)v10 setEditable:1];
    v11 = objc_alloc_init(EKCalendarColorEditItem);
    v12 = self->_colorEditItem;
    self->_colorEditItem = v11;

    v13 = objc_alloc_init(EKCalendarIgnoreAlertsEditItem);
    v14 = objc_alloc_init(EKCalendarSubscriptionDetailsEditItem);
    v15 = v14;
    if (self->_holidayCalendarMode)
    {
      v60[0] = v9;
      v60[1] = v8;
      v16 = self->_colorEditItem;
      v60[2] = v10;
      v60[3] = v16;
      v60[4] = v13;
      v60[5] = v14;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v60;
      v19 = 6;
    }

    else
    {
      v59[0] = self->_urlItem;
      v59[1] = v9;
      v48 = self->_colorEditItem;
      v59[2] = v8;
      v59[3] = v10;
      v59[4] = v48;
      v59[5] = v13;
      v59[6] = v14;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v59;
      v19 = 7;
    }

    v49 = [v17 arrayWithObjects:v18 count:v19];
    [v5 addObjectsFromArray:v49];

    goto LABEL_26;
  }

  v26 = objc_alloc_init(EKCalendarSubscriptionURLEditItem);
  v27 = self->_urlItem;
  self->_urlItem = v26;

  [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setEditable:1];
  [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setUrlEditItemDelegate:self];
  v28 = [(EKSubscribedCalendarEditor *)self prefillURL];

  if (v28)
  {
    v29 = [(EKSubscribedCalendarEditor *)self prefillURL];
    v30 = [v29 absoluteString];
    [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setUrlString:v30];
  }

  v31 = objc_alloc_init(EKCalendarValidateEditItem);
  v32 = self->_validateItem;
  self->_validateItem = v31;

  [(EKCalendarButtonEditItem *)self->_validateItem setButtonTarget:self action:sel__validateURL_];
  if (_os_feature_enabled_impl())
  {
    v33 = objc_alloc_init(EKCalendarSubscriptionSpamCheckEditItem);
    spamCheckItem = self->_spamCheckItem;
    self->_spamCheckItem = v33;

    [(EKCalendarSubscriptionSpamCheckEditItem *)self->_spamCheckItem setSubscriptionSpamDelegate:self];
    v35 = objc_alloc_init(EKCalendarCancelValidationEditItem);
    cancelValidationItem = self->_cancelValidationItem;
    self->_cancelValidationItem = v35;

    [(EKCalendarCancelValidationEditItem *)self->_cancelValidationItem setHidden:1];
    [(EKCalendarButtonEditItem *)self->_cancelValidationItem setButtonTarget:self action:sel_cancel_];
    v37 = self->_cancelValidationItem;
    v38 = EventKitUIBundle();
    v39 = [v38 localizedStringForKey:@"Cancel - Adding Subscription" value:@"Cancel" table:0];
    [(EKCalendarButtonEditItem *)v37 setButtonTitle:v39];
  }

  v40 = [(EKSubscribedCalendarEditor *)self prefillURL];

  if (v40)
  {
    v41 = [(EKSubscribedCalendarEditor *)self prefillURL];
    v42 = [v41 absoluteString];
    [(EKSubscribedCalendarEditor *)self _startSpamCheckingURLString:v42];
  }

  if (!self->_holidayCalendarMode)
  {
    if (_os_feature_enabled_impl())
    {
      v43 = self->_validateItem;
      v62[0] = self->_urlItem;
      v62[1] = v43;
      v44 = self->_spamCheckItem;
      v62[2] = self->_cancelValidationItem;
      v62[3] = v44;
      v45 = MEMORY[0x1E695DEC8];
      p_validateItem = v62;
      v47 = 4;
LABEL_31:
      v8 = [v45 arrayWithObjects:p_validateItem count:v47];
      [v5 addObjectsFromArray:v8];
      goto LABEL_32;
    }

    v51 = self->_validateItem;
    v61[0] = self->_urlItem;
    v61[1] = v51;
    v45 = MEMORY[0x1E695DEC8];
    p_validateItem = v61;
    goto LABEL_30;
  }

LABEL_33:
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __49__EKSubscribedCalendarEditor__editItemsForState___block_invoke;
  v55[3] = &unk_1E8442AD0;
  v55[4] = self;
  v52 = [MEMORY[0x1E696AE18] predicateWithBlock:v55];
  v53 = [v5 filteredArrayUsingPredicate:v52];

  return v53;
}

uint64_t __49__EKSubscribedCalendarEditor__editItemsForState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 calendar];
  v6 = [*(a1 + 32) eventStore];
  v7 = [v4 configureWithCalendar:v5 store:v6];

  return v7;
}

- (void)cancel:(id)a3
{
  v4 = a3;
  [(EKSubscribedCalendarEditor *)self _cancelInFlightPreviewDataFetch];
  v5.receiver = self;
  v5.super_class = EKSubscribedCalendarEditor;
  [(EKAbstractCalendarEditor *)&v5 cancel:v4];
}

- (void)willSaveCalendar:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 source];

  if (!v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(EKAbstractCalendarEditor *)self eventStore];
    v7 = [v6 sources];

    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 sourceType] == 4)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v12 = [(EKAbstractCalendarEditor *)self calendar];
    [v12 setSource:v8];
  }

  if (([v4 isSubscribedHolidayCalendar] & 1) == 0)
  {
    [(CUIKSubscribedCalendarManager *)self->_subCalManager shutdownDAForCalendarUpdates];
    [(CUIKSubscribedCalendarManager *)self->_subCalManager updateOrCreateAccountWithCalendar:v4 previousAccountID:0 newUsername:self->_username newPassword:self->_password newAllowsInsecureConnections:self->_insecureConnectionApproved];
  }
}

- (void)didSaveCalendar:(id)a3
{
  if (([a3 isSubscribedHolidayCalendar] & 1) == 0)
  {
    subCalManager = self->_subCalManager;

    [(CUIKSubscribedCalendarManager *)subCalManager restartDAAfterCalendarUpdates];
  }
}

- (void)_unsubscribeFromCalendar
{
  v3 = MEMORY[0x1E6993498];
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  [v3 unsubscribeFromCalendar:v4];

  v5 = [(EKAbstractCalendarEditor *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(EKAbstractCalendarEditor *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(EKAbstractCalendarEditor *)self delegate];
      [v9 calendarEditor:self didCompleteWithAction:2];
    }
  }
}

- (void)_unsubscribeFromCalendarAndReportJunk
{
  v3 = MEMORY[0x1E6993498];
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  [v3 unsubscribeFromCalendar:v4 reportAsJunk:1];

  v5 = [(EKAbstractCalendarEditor *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(EKAbstractCalendarEditor *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(EKAbstractCalendarEditor *)self delegate];
      [v9 calendarEditor:self didCompleteWithAction:2];
    }
  }
}

- (void)_unsubscribeTapped:(id)a3
{
  v5 = a3;
  v6 = [(EKAbstractCalendarEditor *)self calendar];

  if (!v6)
  {
    [(EKSubscribedCalendarEditor *)a2 _unsubscribeTapped:?];
  }

  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"Are you sure you want to unsubscribe from this calendar? All events associated with the calendar will also be deleted." value:&stru_1F4EF6790 table:0];

  v9 = MEMORY[0x1E69DC648];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Unsubscribe" value:&stru_1F4EF6790 table:0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__EKSubscribedCalendarEditor__unsubscribeTapped___block_invoke;
  v35[3] = &unk_1E843EB98;
  v35[4] = self;
  v12 = [v9 actionWithTitle:v11 style:2 handler:v35];

  [v12 setAccessibilityIdentifier:@"unsubscribe-alert-button"];
  v13 = MEMORY[0x1E69DC648];
  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Unsubscribe and Report Junk" value:&stru_1F4EF6790 table:0];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__EKSubscribedCalendarEditor__unsubscribeTapped___block_invoke_2;
  v34[3] = &unk_1E843EB98;
  v34[4] = self;
  v16 = [v13 actionWithTitle:v15 style:2 handler:v34];

  [v16 setAccessibilityIdentifier:@"unsubscribe-report-junk-alert-button"];
  v17 = MEMORY[0x1E69DC648];
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Cancel - unsubscribe clicked" value:@"Cancel" table:0];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v20 setAccessibilityIdentifier:@"cancel-alert-button"];
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:0 preferredStyle:0];
  [v21 addAction:v12];
  [v21 addAction:v16];
  [v21 addAction:v20];
  v22 = [v5 buttonView];
  v23 = [v21 popoverPresentationController];
  [v23 setSourceView:v22];

  v24 = [v5 buttonView];

  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v21 popoverPresentationController];
  [v33 setSourceRect:{v26, v28, v30, v32}];

  [(EKSubscribedCalendarEditor *)self presentViewController:v21 animated:1 completion:0];
}

- (void)_validateURL:(id)a3
{
  if ([(EKCalendarValidateEditItem *)self->_validateItem URLIsSpam])
  {
    v4 = MEMORY[0x1E69DC648];
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Subscribe Anyway" value:&stru_1F4EF6790 table:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__EKSubscribedCalendarEditor__validateURL___block_invoke;
    v15[3] = &unk_1E843EB98;
    v15[4] = self;
    v7 = [v4 actionWithTitle:v6 style:2 handler:v15];

    v8 = MEMORY[0x1E69DC648];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"Cancel - subscribing to a spam calendar" value:@"Cancel" table:0];
    v11 = [v8 actionWithTitle:v10 style:1 handler:0];

    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"This subscribed calendar is spam. Are you sure you want to continue?" value:&stru_1F4EF6790 table:0];

    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:0 preferredStyle:1];
    [v14 addAction:v7];
    [v14 addAction:v11];
    [(EKSubscribedCalendarEditor *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    [(EKSubscribedCalendarEditor *)self _validateUserEnteredURL];
  }
}

- (void)_validateUserEnteredURL
{
  self->_insecureConnectionOffered = 0;
  self->_insecureConnectionApproved = 0;
  [(EKSubscribedCalendarEditor *)self _validateURL];
}

- (void)_validateURL
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_insecureConnectionOffered && !self->_insecureConnectionApproved)
  {
    [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:0];

    [(EKSubscribedCalendarEditor *)self setState:2];
  }

  else
  {
    [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:1];
    v3 = MEMORY[0x1E6993498];
    v4 = [(EKCalendarSubscriptionURLEditItem *)self->_urlItem urlString];
    v5 = [v3 checkSubscriptionURL:v4 missingSchemeBlock:0 unsupportedSchemeBlock:0];

    if (v5)
    {
      v6 = [MEMORY[0x1E6993498] subscriptionURL:v5 usingHTTPS:!self->_insecureConnectionApproved];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 absoluteString];
        [(EKCalendarSubscriptionURLEditItem *)self->_urlItem setUrlString:v8];

        [(EKSubscribedCalendarEditor *)self _kickoffPreviewDataFetch:v7];
      }

      else
      {
        v10 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_FAULT))
        {
          insecureConnectionApproved = self->_insecureConnectionApproved;
          v13 = 138412546;
          v14 = v5;
          v15 = 1024;
          v16 = insecureConnectionApproved;
          _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_FAULT, "Got unexpected nil URL from CUIKSubscribedCalendarUtilities. original = %@, insecureConnectionApproved = %{BOOL}d", &v13, 0x12u);
        }

        v12 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"Subscriptions" subtype:@"BadURL" context:0];
        [v12 report];

        [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:0];
        [(EKSubscribedCalendarEditor *)self setState:2];
      }
    }

    else
    {
      v9 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEFAULT, "Local validation of subcal url failed, aborting add flow", &v13, 2u);
      }

      [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:0];
      [(EKSubscribedCalendarEditor *)self setState:2];
    }
  }
}

- (void)_promptToContinueUsingInsecureConnection
{
  self->_insecureConnectionOffered = 1;
  v3 = MEMORY[0x1E69DC650];
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Insecure Connection" value:&stru_1F4EF6790 table:0];
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"The connection is not secure. Do you want to continue subscribing?" value:&stru_1F4EF6790 table:0];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Continue - insecure connection" value:@"Continue" table:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__EKSubscribedCalendarEditor__promptToContinueUsingInsecureConnection__block_invoke;
  v18[3] = &unk_1E843EB98;
  v18[4] = self;
  v12 = [v9 actionWithTitle:v11 style:0 handler:v18];

  [v8 addAction:v12];
  v13 = MEMORY[0x1E69DC648];
  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Cancel - insecure connection" value:@"Cancel" table:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__EKSubscribedCalendarEditor__promptToContinueUsingInsecureConnection__block_invoke_2;
  v17[3] = &unk_1E843EB98;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v17];

  [v8 addAction:v16];
  [(EKSubscribedCalendarEditor *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_kickoffPreviewDataFetch:(id)a3
{
  v4 = MEMORY[0x1E69998A8];
  v5 = a3;
  v8 = [v4 sharedConnection];
  v6 = [v8 downloadSubscribedCalendarWithURL:v5 queue:MEMORY[0x1E69E96A0] delegate:self];

  previewDownloadToken = self->_previewDownloadToken;
  self->_previewDownloadToken = v6;
}

- (void)_cancelInFlightPreviewDataFetch
{
  if (self->_previewDownloadToken)
  {
    v3 = [MEMORY[0x1E69998A8] sharedConnection];
    [v3 cancelDownloadingSubscriptionCalendarWithDownloadID:self->_previewDownloadToken];
  }
}

- (void)calendarItemStartedEditing:(id)a3
{
  if ([(EKSubscribedCalendarEditor *)self state]== 3)
  {
    if ([(EKAbstractCalendarEditor *)self shouldShowCancelButton])
    {
      v4 = [(EKSubscribedCalendarEditor *)self navigationItem];
      v5 = [v4 leftBarButtonItem];
      [v5 setEnabled:1];
    }

    v7 = [(EKSubscribedCalendarEditor *)self navigationItem];
    v6 = [v7 rightBarButtonItem];
    [v6 setEnabled:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_tableViewHeader && self->_allowTableHeaderLayouts)
  {
    v3 = [(EKSubscribedCalendarEditor *)self tableView];
    [v3 bounds];
    [(EKSubscribedCalendarEditor *)self _updateTableHeaderLayoutForWidth:CGRectGetWidth(v17)];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(EKAbstractCalendarEditor *)self editItems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(EKSubscribedCalendarEditor *)self view];
        [v10 frame];
        [v9 layoutForWidth:CGRectGetWidth(v18)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (CGSize)calculatePreferredContentSize
{
  if (self->_holidayCalendarMode && !self->_state)
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = EKSubscribedCalendarEditor;
    [(EKAbstractCalendarEditor *)&v6 calculatePreferredContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)subscribedCalendarDidFinishLoading:(id)a3
{
  v5 = a3;
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEFAULT, "Successfully fetched subscribed calendar preview data", v22, 2u);
  }

  objc_storeStrong(&self->_previewSummary, a3);
  v7 = [(DAESubscribedCalendarSummary *)self->_previewSummary title];
  v8 = [(EKAbstractCalendarEditor *)self calendar];
  [v8 setTitle:v7];

  v9 = [(DAESubscribedCalendarSummary *)self->_previewSummary color];
  v10 = [(EKAbstractCalendarEditor *)self calendar];
  [v10 setColorStringRaw:v9];

  v11 = [(DAESubscribedCalendarSummary *)self->_previewSummary notes];
  v12 = [(EKAbstractCalendarEditor *)self calendar];
  [v12 setNotes:v11];

  [(DAESubscribedCalendarSummary *)self->_previewSummary refreshInterval];
  if (v13 <= 0.0)
  {
    v15 = 604800;
  }

  else
  {
    [(DAESubscribedCalendarSummary *)self->_previewSummary refreshInterval];
    v15 = v14;
  }

  v16 = [(EKAbstractCalendarEditor *)self calendar];
  [v16 setRefreshInterval:v15];

  v17 = [v5 subscriptionID];
  v18 = [(EKAbstractCalendarEditor *)self calendar];
  [v18 setSubscriptionID:v17];

  v19 = [v5 subscriptionURL];
  v20 = [v19 absoluteString];
  v21 = [(EKAbstractCalendarEditor *)self calendar];
  [v21 setSubcalURL:v20];

  [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:0];
  [(EKSubscribedCalendarEditor *)self setState:1];
}

- (void)subscribedCalendarFailedWithError:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch subscribed calendar preview data: %@", &v7, 0xCu);
  }

  previewDownloadToken = self->_previewDownloadToken;
  self->_previewDownloadToken = 0;

  if (self->_insecureConnectionOffered)
  {
    [(EKCalendarValidateEditItem *)self->_validateItem setAnimateSpinner:0];
    [(EKSubscribedCalendarEditor *)self setState:2];
  }

  else
  {
    [(EKSubscribedCalendarEditor *)self _promptToContinueUsingInsecureConnection];
  }
}

- (void)subscribedCalendarRequiresPassword:(id)a3 withContinuation:(id)a4
{
  v5 = a4;
  v6 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEFAULT, "Fetching subscribed calendar requires username and passwor", buf, 2u);
  }

  v7 = MEMORY[0x1E69DC650];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Authentication" value:&stru_1F4EF6790 table:0];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"You must enter a valid username and password to access this calendar." value:&stru_1F4EF6790 table:0];
  v12 = [v7 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

  [v12 addTextFieldWithConfigurationHandler:&__block_literal_global_67];
  [v12 addTextFieldWithConfigurationHandler:&__block_literal_global_155_0];
  v13 = MEMORY[0x1E69DC648];
  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"OK - subscription authentication" value:@"OK" table:0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke_3;
  v26[3] = &unk_1E8442B18;
  v26[4] = self;
  v27 = v12;
  v16 = v5;
  v28 = v16;
  v17 = v12;
  v18 = [v13 actionWithTitle:v15 style:0 handler:v26];

  [v17 addAction:v18];
  v19 = MEMORY[0x1E69DC648];
  v20 = EventKitUIBundle();
  v21 = [v20 localizedStringForKey:@"Cancel - subscription authentication" value:@"Cancel" table:0];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke_4;
  v24[3] = &unk_1E8441E90;
  v24[4] = self;
  v25 = v16;
  v22 = v16;
  v23 = [v19 actionWithTitle:v21 style:1 handler:v24];

  [v17 addAction:v23];
  [(EKSubscribedCalendarEditor *)self presentViewController:v17 animated:1 completion:0];
}

void __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Username" value:&stru_1F4EF6790 table:0];
  [v4 setPlaceholder:v3];

  [v4 setTextContentType:*MEMORY[0x1E69DE588]];
}

void __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Password" value:&stru_1F4EF6790 table:0];
  [v4 setPlaceholder:v3];

  [v4 setTextContentType:*MEMORY[0x1E69DE528]];
}

uint64_t __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) textFields];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 text];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1120);
  *(v5 + 1120) = v4;

  v7 = [*(a1 + 40) textFields];
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 text];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1128);
  *(v10 + 1128) = v9;

  v12 = *(*(a1 + 48) + 16);

  return v12();
}

uint64_t __82__EKSubscribedCalendarEditor_subscribedCalendarRequiresPassword_withContinuation___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1120);
  *(v2 + 1120) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1128);
  *(v4 + 1128) = 0;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_startSpamCheckingURLString:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x1E6993470] sharedPreferences];
    v5 = [v4 allowSubscribedCalendarSpamDetection];

    if (v5)
    {
      if ([v7 length])
      {
        v6 = [MEMORY[0x1E6993498] checkSubscriptionURL:v7 missingSchemeBlock:0 unsupportedSchemeBlock:0];
      }

      else
      {
        v6 = 0;
      }

      [(EKCalendarSubscriptionSpamCheckEditItem *)self->_spamCheckItem setURLToCheck:v6];
      [(EKCalendarValidateEditItem *)self->_validateItem setURLIsSpam:0];
      [(EKSubscribedCalendarEditor *)self _updateCancelButtonVisibilityForSpamStatus:0];
    }
  }
}

- (void)URLEditItemDidChangeURLString:(id)a3
{
  v4 = [a3 urlString];
  [(EKSubscribedCalendarEditor *)self _startSpamCheckingURLString:v4];
}

- (void)calendarSubscriptionSpamCheckEditItem:(id)a3 didDetermineThatURL:(id)a4 isSpam:(BOOL)a5
{
  v5 = a5;
  [(EKCalendarValidateEditItem *)self->_validateItem setURLIsSpam:a5, a4];

  [(EKSubscribedCalendarEditor *)self _updateCancelButtonVisibilityForSpamStatus:v5];
}

- (void)_updateCancelButtonVisibilityForSpamStatus:(BOOL)a3
{
  v3 = a3;
  if ([(EKCalendarCancelValidationEditItem *)self->_cancelValidationItem hidden]== a3)
  {
    [(EKCalendarCancelValidationEditItem *)self->_cancelValidationItem setHidden:!v3];
    v5 = [(EKSubscribedCalendarEditor *)self tableView];
    [v5 reloadData];
  }
}

- (void)_showPrivacyNotice
{
  v3 = EventKitUIBundle();
  v15 = [v3 localizedStringForKey:@"Subscribed Calendar Spam Protection" value:&stru_1F4EF6790 table:0];

  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Calendar can check whether a subscribed calendar is spam before you add it. In order to do this value:Calendar will send the URL of the subscribed calendar to Apple for checking. You can change this in Settings." table:{&stru_1F4EF6790, 0}];

  v6 = [objc_alloc(MEMORY[0x1E69B7D70]) initWithTitle:v15 detailText:v5 icon:0];
  v7 = [MEMORY[0x1E69B7D00] boldButton];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"Enable" value:&stru_1F4EF6790 table:0];
  [v7 setTitle:v9 forState:0];

  [v7 addTarget:self action:sel__allowButtonTapped forControlEvents:64];
  v10 = [MEMORY[0x1E69B7D38] linkButton];
  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Disable" value:&stru_1F4EF6790 table:0];
  [v10 setTitle:v12 forState:0];

  [v10 addTarget:self action:sel__denyButtonTapped forControlEvents:64];
  v13 = [v6 buttonTray];
  [v13 addButton:v7];

  v14 = [v6 buttonTray];
  [v14 addButton:v10];

  [(EKSubscribedCalendarEditor *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_allowButtonTapped
{
  [(EKSubscribedCalendarEditor *)self dismissViewControllerAnimated:1 completion:0];
  v2 = [MEMORY[0x1E6993470] sharedPreferences];
  [v2 setAllowSubscribedCalendarSpamDetection:1];

  v3 = [MEMORY[0x1E6993470] sharedPreferences];
  [v3 setDisplayedSubscribedCalendarSpamDetectionPrivacyNotice:1];
}

- (void)_denyButtonTapped
{
  [(EKSubscribedCalendarEditor *)self dismissViewControllerAnimated:1 completion:0];
  v2 = [MEMORY[0x1E6993470] sharedPreferences];
  [v2 setAllowSubscribedCalendarSpamDetection:0];

  v3 = [MEMORY[0x1E6993470] sharedPreferences];
  [v3 setDisplayedSubscribedCalendarSpamDetectionPrivacyNotice:1];
}

- (void)_unsubscribeTapped:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKSubscribedCalendarEditor.m" lineNumber:452 description:@"-[EKSubscribedCalendarEditor _unsubscribeTapped]: There is no calendar to unsubscribe from."];
}

@end