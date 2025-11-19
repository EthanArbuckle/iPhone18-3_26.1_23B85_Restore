@interface EKEventEditViewControllerModernImpl
+ (id)_addLocalizedString;
+ (id)_cancelLocalizedString;
+ (id)_doneLocalizedString;
+ (id)_orderedActionsForMask:(int64_t)a3;
- (BOOL)_allowsEditingMode;
- (BOOL)_backingEventAllowsEditing;
- (BOOL)_canPerformEditKeyCommand;
- (BOOL)_isDisplayingDeletableEvent;
- (BOOL)_isDisplayingInvitation;
- (BOOL)_isDisplayingSuggestion;
- (BOOL)_navigationBarShouldBeHidden;
- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage;
- (BOOL)_shouldDisplayStatusButtons;
- (BOOL)_shouldShowEditButton;
- (BOOL)_shouldShowInlineButtonFromDelegate;
- (BOOL)_sourceIsManaged;
- (BOOL)attachmentsModifiedOnRecurrence;
- (BOOL)displayingRootView;
- (BOOL)editItemViewControllerShouldShowDetachAlert;
- (BOOL)hasUnsavedChanges;
- (BOOL)shouldShowDismissAlert;
- (BOOL)shouldShowEditButtonInline;
- (BOOL)shouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)willPresentDialogOnSave;
- (EKAutocompleteSearchPasteboardItemProvider)pasteboardItemProvider;
- (EKEvent)eventForViewControllerManager;
- (EKEventEditViewDelegate)editViewDelegate;
- (EKEventViewDelegate)delegate;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (id)_confirmDismissAlertExplanationText;
- (id)_detachSheetHandler;
- (id)_ekEventEditViewController;
- (id)_ekEventViewController;
- (id)_leftBarButtonItem;
- (id)_proposedDate;
- (id)_rightBarButtonItem;
- (id)_statusButtonsView;
- (id)accessDeniedView;
- (id)alertIconImage;
- (id)attachmentEvent;
- (id)confirmDismissAlertController;
- (id)editItemEventToDetach;
- (id)initForEditing:(BOOL)a3;
- (id)navigationController;
- (id)navigationItem;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)presentationSourceViewController;
- (id)statusButtons;
- (id)toolbar;
- (id)toolbarItems;
- (int)_currentViewInt;
- (int64_t)_actionsMask;
- (void)_acceptProposedTimeWithSourceViewForPopover:(id)a3;
- (void)_addToCalendarClicked:(id)a3;
- (void)_annotateEventEntityIfNeeded;
- (void)_cancel;
- (void)_cancelProposedTime;
- (void)_completeWithAction:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5;
- (void)_configureStatusButtonsToolbar;
- (void)_deleteClicked:(id)a3;
- (void)_deleteSuggestionTapped:(id)a3;
- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4;
- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)a3;
- (void)_performDelete:(int64_t)a3 editor:(id)a4;
- (void)_performEditKeyCommand;
- (void)_pinKeyboard:(BOOL)a3;
- (void)_presentAttachmentRecurrenceSheetForEvent:(id)a3 withContinueBlock:(id)a4;
- (void)_presentDetachSheetForEvent:(id)a3 saveAttachments:(BOOL)a4 withContinueBlock:(id)a5;
- (void)_presentDetachSheetFromBarButton:(id)a3;
- (void)_presentDetachSheetFromView:(id)a3;
- (void)_rejectProposedTime;
- (void)_revertEvent;
- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4;
- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4;
- (void)_storeChanged:(id)a3;
- (void)_unsubscribeClicked:(id)a3;
- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)a3;
- (void)_updateNavButtons;
- (void)_updateResponse;
- (void)_updateResponseVisibility;
- (void)_updateStatusButtonsActions;
- (void)attemptDisplayReviewPrompt;
- (void)attemptSaveForEvent:(id)a3 completion:(id)a4;
- (void)cancelEditingWithDelegateNotification:(BOOL)a3 forceCancel:(BOOL)a4;
- (void)completeWithAction:(int64_t)a3;
- (void)dealloc;
- (void)deleteEvent;
- (void)didMoveToParentViewController:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)doneWithContinueBlock:(id)a3;
- (void)editButtonTapped;
- (void)editCompleteWithAction:(int64_t)a3;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4 dismiss:(BOOL)a5;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)fullReloadWithNewEvent:(id)a3;
- (void)invokeAction:(int64_t)a3 eventStatusButtonsView:(id)a4;
- (void)loadView;
- (void)nextButtonPressed;
- (void)openAttendeesDetailItem;
- (void)performAddToCalendar;
- (void)presentationControllerDidAttemptToDismiss;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)prevButtonPressed;
- (void)refreshStartAndEndDates;
- (void)refreshUIForUpdatedEvent;
- (void)requestAddInviteesPresentation;
- (void)requestInviteesListPresentation;
- (void)requestLocationOrVideoCallPresentationWithExistingLocation:(id)a3 locationSelected:(BOOL)a4 existingVirtualConference:(id)a5 virtualConferenceSelected:(BOOL)a6;
- (void)requestMailAllInviteesPresentation;
- (void)requestMessageAllInviteesPresentation;
- (void)requestProposeNewTimePresentation;
- (void)setActiveEventEditor:(id)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEvent:(id)a3;
- (void)setIsEditingMode:(BOOL)a3;
- (void)setMinimalMode:(BOOL)a3;
- (void)setNoninteractivePlatterMode:(BOOL)a3;
- (void)setShowsDelegateMessage:(BOOL)a3;
- (void)setShowsDelegatorMessage:(BOOL)a3;
- (void)setShowsOutOfDateMessage:(BOOL)a3;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)updateEventCalendar:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKEventEditViewControllerModernImpl

- (id)initForEditing:(BOOL)a3
{
  v3 = a3;
  v15[3] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKEventEditViewControllerModernImpl;
  v4 = [(EKEventEditViewControllerModernImpl *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_isEditingMode = v3;
    v6 = [objc_alloc(MEMORY[0x1E69933E8]) initWithDelegate:v4 isEditing:v3 allowsEditing:v4->_allowsEditing needsInlineEditButton:{-[EKEventEditViewControllerModernImpl shouldShowEditButtonInline](v4, "shouldShowEditButtonInline")}];
    vcManager = v5->_vcManager;
    v5->_vcManager = v6;

    objc_initWeak(&location, v5);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__EKEventEditViewControllerModernImpl_initForEditing___block_invoke;
    v11[3] = &unk_1E843EBE8;
    objc_copyWeak(&v12, &location);
    v9 = [(EKEventEditViewControllerModernImpl *)v5 registerForTraitChanges:v8 withHandler:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __54__EKEventEditViewControllerModernImpl_initForEditing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 horizontalSizeClass];
    v8 = [v12 traitCollection];
    if (v7 == [v8 horizontalSizeClass])
    {
      v9 = [v5 verticalSizeClass];
      v10 = [v12 traitCollection];
      v11 = [v10 verticalSizeClass];

      if (v9 == v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [WeakRetained _updateNavButtons];
  }

LABEL_7:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];

  v4.receiver = self;
  v4.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v4 dealloc];
}

- (void)loadView
{
  v45[4] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v44 loadView];
  [(EKEventEditViewControllerModernImpl *)self _updateNavButtons];
  if (self->_shouldOverrideAuthorizationStatus)
  {
    lastAuthorizationStatus = self->_lastAuthorizationStatus;
  }

  else
  {
    lastAuthorizationStatus = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
    self->_lastAuthorizationStatus = lastAuthorizationStatus;
  }

  if (lastAuthorizationStatus <= 2)
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self view];
    v5 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
    [v4 addSubview:v5];

    v6 = [(EKEventEditViewControllerModernImpl *)self view];
    v7 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
    [v6 bringSubviewToFront:v7];

    if (self->_lastAuthorizationStatus == 1)
    {
      v8 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
      [v8 setMessage:@" "];
    }
  }

  v43 = [(CUIKEventEditViewControllerManager *)self->_vcManager viewController];
  [(EKEventEditViewControllerModernImpl *)self addChildViewController:v43];
  [v43 didMoveToParentViewController:self];
  v9 = [v43 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(EKEventEditViewControllerModernImpl *)self view];
  [v10 addSubview:v9];

  v34 = MEMORY[0x1E696ACD8];
  v41 = [(EKEventEditViewControllerModernImpl *)self view];
  v40 = [v41 leadingAnchor];
  v39 = [v9 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v45[0] = v38;
  v37 = [(EKEventEditViewControllerModernImpl *)self view];
  v36 = [v37 trailingAnchor];
  v35 = [v9 trailingAnchor];
  v33 = [v36 constraintEqualToAnchor:v35];
  v45[1] = v33;
  v11 = [(EKEventEditViewControllerModernImpl *)self view];
  v12 = [v11 topAnchor];
  v42 = v9;
  v13 = [v9 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v45[2] = v14;
  v15 = [(EKEventEditViewControllerModernImpl *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v9 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v45[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  [v34 activateConstraints:v19];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  cancelButtonTarget = self->_cancelButtonTarget;
  self->_cancelButtonTarget = v20;

  v22 = [objc_opt_class() _cancelLocalizedString];
  [(UILabel *)self->_cancelButtonTarget setText:v22];

  [(UILabel *)self->_cancelButtonTarget sizeToFit];
  v23 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_cancelButtonTarget setTextColor:v23];
  [(UILabel *)self->_cancelButtonTarget setBackgroundColor:v23];

  [(UILabel *)self->_cancelButtonTarget setUserInteractionEnabled:0];
  [(UILabel *)self->_cancelButtonTarget setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_cancelButtonTarget setHidden:1];
  LODWORD(v24) = 1148846080;
  [(UILabel *)self->_cancelButtonTarget setContentHuggingPriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [(UILabel *)self->_cancelButtonTarget setContentHuggingPriority:1 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [(UILabel *)self->_cancelButtonTarget setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [(UILabel *)self->_cancelButtonTarget setContentCompressionResistancePriority:1 forAxis:v27];
  [v42 addSubview:self->_cancelButtonTarget];
  [v42 sendSubviewToBack:self->_cancelButtonTarget];
  v28 = _NSDictionaryOfVariableBindings(&cfstr_Cancelbuttonta.isa, self->_cancelButtonTarget, 0);
  v29 = MEMORY[0x1E696ACD8];
  v30 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_cancelButtonTarget]->=0-|" options:0 metrics:0 views:v28];
  [v29 activateConstraints:v30];

  v31 = MEMORY[0x1E696ACD8];
  v32 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-16-[_cancelButtonTarget]->=0-|" options:0 metrics:0 views:v28];
  [v31 activateConstraints:v32];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v3 viewDidLoad];
  [(EKEventEditViewControllerModernImpl *)self _updateNavButtons];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v7 viewWillAppear:a3];
  self->_viewIsVisible = 1;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__storeChanged_ name:*MEMORY[0x1E6966928] object:0];

  [(EKEventEditViewControllerModernImpl *)self _updateStatusButtonsActions];
  [(EKEventEditViewControllerModernImpl *)self _updateResponseVisibility];
  [(CUIKEventEditViewControllerManager *)self->_vcManager updateCreationMethod:self->_eventCreationMethod];
  v5 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  [v5 setNavigationBarHidden:-[EKEventEditViewControllerModernImpl _shouldShowInlineButtonFromDelegate](self animated:{"_shouldShowInlineButtonFromDelegate"), 0}];

  v6 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  [v6 setNavigationBarHidden:-[EKEventEditViewControllerModernImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v10 viewWillDisappear:a3];
  self->_viewIsVisible = 0;
  v4 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  [v4 setNavigationBarHidden:-[EKEventEditViewControllerModernImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];

  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_detailsDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_detailsDelegate);
      [v9 performSelector:sel_eventViewControllerWillDisappear_ withObject:self];
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = EKEventEditViewControllerModernImpl;
  [(EKEventEditViewControllerModernImpl *)&v5 didMoveToParentViewController:v4];
  if (v4)
  {
    [(EKEventEditViewControllerModernImpl *)self _updateNavButtons];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isNavigationBarHidden] & 1) == 0)
    {
      [(EKEventEditViewControllerModernImpl *)self setMinimalMode:0];
    }
  }
}

- (BOOL)_navigationBarShouldBeHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v4 = objc_loadWeakRetained(&self->_detailsDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_detailsDelegate);
      v7 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      v8 = [v6 eventViewControllerShouldAlwaysShowNavBar:v7];

      if (v8)
      {
        return 0;
      }
    }
  }

  else
  {
  }

  if ([(EKEventEditViewControllerModernImpl *)self shouldShowEditButtonInline])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v10 = ![(EKEventEditViewControllerModernImpl *)self _shouldShowEditButton];
  }

  v11 = objc_loadWeakRetained(&self->_detailsDelegate);
  if ([v11 conformsToProtocol:&unk_1F4F9EBE0])
  {
    v12 = objc_loadWeakRetained(&self->_detailsDelegate);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v11 = objc_loadWeakRetained(&self->_detailsDelegate);
    v14 = [v11 eventViewControllerPresentationWantsHiddenNavBarForSingleController];
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  if (v15)
  {
    v16 = [(EKEventEditViewControllerModernImpl *)self navigationController];
    v17 = [v16 viewControllers];
    if ([v17 count] == 1)
    {
      v18 = [(EKEventEditViewControllerModernImpl *)self navigationController];
      v19 = [v18 viewControllers];
      v20 = [v19 firstObject];
      v21 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      v22 = v20 == v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return v10 & v14 & v22;
}

+ (id)_addLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Add" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_doneLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Done" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_cancelLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cancel" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)setIsEditingMode:(BOOL)a3
{
  if (self->_isEditingMode != a3)
  {
    v3 = a3;
    v5 = (!a3 || [(EKEventEditViewControllerModernImpl *)self _allowsEditingMode]) && v3;
    self->_isEditingMode = v5;
    [(CUIKEventEditViewControllerManager *)self->_vcManager updateIsEditing:v3];

    [(EKEventEditViewControllerModernImpl *)self _updateNavButtons];
  }
}

- (void)_updateNavButtons
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(EKEventEditViewControllerModernImpl *)self isEditingMode])
  {
    if (!self->_cancelButton)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
      cancelButton = self->_cancelButton;
      self->_cancelButton = v3;
    }

    if (!self->_doneButton)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
      doneButton = self->_doneButton;
      self->_doneButton = v5;
    }

    v17[0] = self->_cancelButton;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v8 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
    [v8 setLeftBarButtonItems:v7];

    v16 = self->_doneButton;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v10 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
    [v10 setRightBarButtonItems:v9];

    [(EKEventEditViewControllerModernImpl *)self shouldEnableDoneButton:[(CUIKEventEditViewControllerManager *)self->_vcManager isDoneButtonEnabled]];
  }

  else
  {
    if ([(EKEventEditViewControllerModernImpl *)self _shouldShowEditButton])
    {
      if ([(EKEventEditViewControllerModernImpl *)self shouldShowEditButtonInline])
      {
        [(CUIKEventEditViewControllerManager *)self->_vcManager updateNeedsInlineEditButton:1];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped];
        v15 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
        v13 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
        [v13 setRightBarButtonItems:v12];
      }
    }

    v14 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
    [v14 setLeftBarButtonItems:MEMORY[0x1E695E0F0]];
  }
}

- (BOOL)_shouldShowEditButton
{
  if ([(EKEventEditViewControllerModernImpl *)self isEditingMode])
  {
    return 0;
  }

  return [(EKEventEditViewControllerModernImpl *)self _allowsEditingMode];
}

- (BOOL)_allowsEditingMode
{
  v3 = [(EKEventEditViewControllerModernImpl *)self allowsEditing];
  if (v3)
  {

    LOBYTE(v3) = [(EKEventEditViewControllerModernImpl *)self _backingEventAllowsEditing];
  }

  return v3;
}

- (void)setAllowsEditing:(BOOL)a3
{
  if (self->_allowsEditing != a3)
  {
    v3 = a3;
    self->_allowsEditing = a3;
    [(CUIKEventEditViewControllerManager *)self->_vcManager updateAllowsEditing:?];
    [(EKEventEditViewControllerModernImpl *)self setAllowsInviteResponses:v3];
    if ([(EKEventEditViewControllerModernImpl *)self isViewLoaded]&& [(EKEventEditViewControllerModernImpl *)self viewIsVisible])
    {
      [(EKEventEditViewControllerModernImpl *)self _updateNavButtons];
    }

    v5 = [(EKEvent *)self->_event calendar];

    if (v5)
    {
      v6 = [(EKEvent *)self->_event calendar];
      [(EKEventEditViewControllerModernImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v6];
    }
  }
}

- (void)_cancel
{
  if (![(EKEventEditViewControllerModernImpl *)self shouldShowDismissAlert])
  {
    [(CUIKEventEditViewControllerManager *)self->_vcManager cancel];
    WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_editViewDelegate);
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v8 = objc_loadWeakRetained(&self->_editViewDelegate);
        v6 = [(EKEventEditViewControllerModernImpl *)self _ekEventEditViewController];
        [v8 eventEditViewController:v6 didCompleteWithAction:0];
      }
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_detailsDelegate);

      if (v7)
      {

        [(EKEventEditViewControllerModernImpl *)self setIsEditingMode:0];
      }
    }
  }
}

- (void)doneButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self event];
  v6 = [v5 requiresDetach];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EKEventEditViewControllerModernImpl *)self _presentDetachSheetFromBarButton:self->_doneButton];
    }
  }

  else
  {
    vcManager = self->_vcManager;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__EKEventEditViewControllerModernImpl_doneButtonTapped___block_invoke;
    v8[3] = &unk_1E843EC60;
    v8[4] = self;
    [(CUIKEventEditViewControllerManager *)vcManager attemptSaveWithCompletion:v8];
  }
}

void __56__EKEventEditViewControllerModernImpl_doneButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1200));

  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((v3 + 1200));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 1200));
      v6 = [*(a1 + 32) _ekEventEditViewController];
      [v8 eventEditViewController:v6 didCompleteWithAction:1];
    }
  }

  else
  {
    v7 = objc_loadWeakRetained((v3 + 1224));

    if (v7)
    {
      [*(a1 + 32) setIsEditingMode:0];
      [*(a1 + 32) _currentViewInt];
      CalAnalyticsSendEventLazy();
    }
  }
}

void __56__EKEventEditViewControllerModernImpl_doneButtonTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 event];
  if ([v5 isReminderIntegrationEvent])
  {
    v6 = @"Reminder";
  }

  else
  {
    v6 = @"Event";
  }

  [v4 setObject:v6 forKeyedSubscript:@"eventType"];

  v7 = [*(a1 + 32) event];
  v8 = [v7 attendees];
  if ([v8 count])
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v9 forKeyedSubscript:@"hasAttendees"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v4 setObject:v10 forKeyedSubscript:@"currentView"];
}

- (void)completeWithAction:(int64_t)a3
{
  if (a3 == 2)
  {
    self->_ignoreDBChanges = 1;
    recurrenceAlertController = self->_recurrenceAlertController;
    if (recurrenceAlertController)
    {
      v6 = [(EKUIRecurrenceAlertController *)recurrenceAlertController alertController];
      v7 = [v6 presentingViewController];
      [v7 dismissViewControllerAnimated:0 completion:0];
    }
  }

  [(EKEventEditViewControllerModernImpl *)self _dismissEditor:0 deleted:a3 == 2];
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_detailsDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v13 = objc_loadWeakRetained(&self->_detailsDelegate);
      v12 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      [v13 eventViewController:v12 didCompleteWithAction:a3];
    }
  }
}

- (void)_completeWithAction:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5
{
  v5 = a4;
  [(EKEventEditViewControllerModernImpl *)self _pinKeyboard:0, a4, a5];
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:v5];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = 0;
}

- (void)_storeChanged:(id)a3
{
  v9 = a3;
  if (![(EKEventEditViewControllerModernImpl *)self eventEditViewPresented]&& !self->_ignoreDBChanges && ([(EKEvent *)self->_event isNew]& 1) == 0)
  {
    v4 = [v9 userInfo];
    v5 = [v4 objectForKey:*MEMORY[0x1E6966930]];

    if (!v5 || (-[EKEvent objectID](self->_event, "objectID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 containsObject:v6], v6, v7))
    {
      if (([(EKEvent *)self->_event refreshIfRefreshableAndNotify:1]& 1) != 0)
      {
        [(UIResponder *)self EKUI_setDataOwnersFromEvent:self->_event];
      }

      else
      {
        [(EKEventEditViewControllerModernImpl *)self completeWithAction:2];
      }
    }
  }

  if ([(EKEventEditViewControllerModernImpl *)self isViewLoaded])
  {
    if (!self->_shouldOverrideAuthorizationStatus)
    {
      v8 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
      if (v8 != self->_lastAuthorizationStatus)
      {
        [(EKEventEditViewControllerModernImpl *)self _updateAccessDeniedViewWithNewStatus:v8];
      }
    }
  }
}

- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)a3
{
  if (self->_lastAuthorizationStatus != a3)
  {
    accessDeniedView = self->_accessDeniedView;
    if (a3 < 3)
    {
      if (accessDeniedView)
      {
        goto LABEL_9;
      }

      v7 = [(EKEventEditViewControllerModernImpl *)self firstResponder];
      [v7 resignFirstResponder];

      v8 = [(EKEventEditViewControllerModernImpl *)self view];
      v9 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
      [v8 addSubview:v9];

      v10 = [(EKEventEditViewControllerModernImpl *)self view];
      v11 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
      [v10 bringSubviewToFront:v11];

      if (a3 != 1)
      {
        goto LABEL_9;
      }

      v6 = [(EKEventEditViewControllerModernImpl *)self accessDeniedView];
      [v6 setMessage:@" "];
    }

    else
    {
      if (!accessDeniedView)
      {
LABEL_9:
        self->_lastAuthorizationStatus = a3;
        return;
      }

      [(_UIAccessDeniedView *)accessDeniedView removeFromSuperview];
      v6 = self->_accessDeniedView;
      self->_accessDeniedView = 0;
    }

    goto LABEL_9;
  }
}

- (id)accessDeniedView
{
  accessDeniedView = self->_accessDeniedView;
  if (!accessDeniedView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD328]);
    v5 = [(EKEventEditViewControllerModernImpl *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_accessDeniedView;
    self->_accessDeniedView = v6;

    [(_UIAccessDeniedView *)self->_accessDeniedView setAutoresizingMask:18];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"This app does not have access to your calendars." value:&stru_1F4EF6790 table:0];
    [(_UIAccessDeniedView *)self->_accessDeniedView setTitle:v9];

    accessDeniedView = self->_accessDeniedView;
  }

  return accessDeniedView;
}

- (void)_presentDetachSheetFromView:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self _detachSheetHandler];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__EKEventEditViewControllerModernImpl__presentDetachSheetFromView___block_invoke;
  block[3] = &unk_1E843FDE8;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__EKEventEditViewControllerModernImpl__presentDetachSheetFromView___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _ekEventEditViewController];
  v2 = *(a1 + 40);
  [v2 bounds];
  v3 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v6 sourceView:v2 sourceRect:*(*(a1 + 32) + 1184) forEvent:*(a1 + 48) withCompletionHandler:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1112);
  *(v4 + 1112) = v3;
}

- (void)_presentDetachSheetFromBarButton:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self _detachSheetHandler];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__EKEventEditViewControllerModernImpl__presentDetachSheetFromBarButton___block_invoke;
  block[3] = &unk_1E843FDE8;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__EKEventEditViewControllerModernImpl__presentDetachSheetFromBarButton___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _ekEventEditViewController];
  v2 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v5 barButtonItem:*(a1 + 40) forEvent:*(*(a1 + 32) + 1184) withCompletionHandler:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1112);
  *(v3 + 1112) = v2;
}

- (id)_detachSheetHandler
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__EKEventEditViewControllerModernImpl__detachSheetHandler__block_invoke;
  aBlock[3] = &unk_1E843FE10;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

uint64_t __58__EKEventEditViewControllerModernImpl__detachSheetHandler__block_invoke(uint64_t result, uint64_t a2)
{
  v4 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (a2 == 1 || a2 == 2)
  {
    v4 = a2;
    goto LABEL_11;
  }

  if (a2 != 3)
  {
LABEL_11:
    v8[5] = v2;
    v8[6] = v3;
    v6 = *(result + 32);
    v7 = *(v6 + 992);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__EKEventEditViewControllerModernImpl__detachSheetHandler__block_invoke_2;
    v8[3] = &unk_1E843EC60;
    v8[4] = v6;
    return [v7 save:v4 completion:v8];
  }

  v5 = *(result + 32);

  return [v5 _updateResponse];
}

void __58__EKEventEditViewControllerModernImpl__detachSheetHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1200));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 1200));
    v4 = [*(a1 + 32) _ekEventEditViewController];
    [v5 eventEditViewController:v4 didCompleteWithAction:1];
  }
}

- (void)_presentAttachmentRecurrenceSheetForEvent:(id)a3 withContinueBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__EKEventEditViewControllerModernImpl__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke;
  block[3] = &unk_1E843FDE8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__EKEventEditViewControllerModernImpl__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1008);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__EKEventEditViewControllerModernImpl__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke_2;
  v8[3] = &unk_1E843FE38;
  v8[4] = v3;
  v9 = v2;
  v10 = *(a1 + 48);
  v5 = [EKUIRecurrenceAlertController presentAttachmentAlertWithOptions:0 viewController:v3 barButtonItem:v4 forEvent:v9 withCompletionHandler:v8];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1112);
  *(v6 + 1112) = v5;
}

void __99__EKEventEditViewControllerModernImpl__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1112);
    *(v3 + 1112) = 0;

    v5 = [*(a1 + 32) EKUI_editor];
    [v5 saveEvent:*(a1 + 40) span:1 error:0];
    [*(*(a1 + 32) + 992) save:0 completion:0];
    (*(*(a1 + 48) + 16))();
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 1112);
  *(v6 + 1112) = 0;
}

- (void)_presentDetachSheetForEvent:(id)a3 saveAttachments:(BOOL)a4 withContinueBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke;
  block[3] = &unk_1E843FEB0;
  v14 = v9;
  v15 = self;
  v18 = a4;
  v16 = v10;
  v17 = a2;
  v11 = v10;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_cold_1(a1, v2);
  }

  if (*(a1 + 64))
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_2;
  v9[3] = &unk_1E843FE88;
  v11 = v3;
  v9[4] = v4;
  v10 = *(a1 + 48);
  v6 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:v3 viewController:v4 sourceView:0 sourceRect:v5 forEvent:v9 withCompletionHandler:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v7 = *(a1 + 40);
  v8 = *(v7 + 1112);
  *(v7 + 1112) = v6;
}

void __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_2(void *a1, unint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_3;
  aBlock[3] = &unk_1E843FE60;
  v4 = a1[5];
  v5 = a1[4];
  v12 = a1[6];
  aBlock[4] = v5;
  v11 = v4;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (a2 <= 2)
  {
    (*(v6 + 2))(v6, a2);
  }

  v8 = a1[4];
  v9 = *(v8 + 1112);
  *(v8 + 1112) = 0;
}

uint64_t __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 8) != 0)
  {
    v4 = [*(a1 + 32) EKUI_editor];
    v5 = [*(a1 + 32) attachmentsModifiedEvent];
    [v4 saveEvent:v5 span:1 error:0];
  }

  [*(*(a1 + 32) + 992) save:a2 completion:0];
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (id)attachmentEvent
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  if ([v3 isNew])
  {
  }

  else
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self event];
    v5 = [v4 isOrWasPartOfRecurringSeries];

    if (v5)
    {
      v6 = [(EKEventEditViewControllerModernImpl *)self event];
      v7 = [v6 masterEvent];

      goto LABEL_6;
    }
  }

  v7 = [(EKEventEditViewControllerModernImpl *)self event];
LABEL_6:

  return v7;
}

- (void)cancelEditingWithDelegateNotification:(BOOL)a3 forceCancel:(BOOL)a4
{
  [(EKEventEditViewControllerModernImpl *)self _revertEvent:a3];

  [(EKEventEditViewControllerModernImpl *)self editCompleteWithAction:0];
}

- (void)_revertEvent
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  [v3 rollback];

  vcManager = self->_vcManager;

  [(CUIKEventEditViewControllerManager *)vcManager cancel];
}

- (void)editCompleteWithAction:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_editViewDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v10 = objc_loadWeakRetained(&self->_editViewDelegate);
      v8 = [(EKEventEditViewControllerModernImpl *)self _ekEventEditViewController];
      [v10 eventEditViewController:v8 didCompleteWithAction:a3];
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_detailsDelegate);

    if (v9)
    {

      [(EKEventEditViewControllerModernImpl *)self setIsEditingMode:0];
    }
  }
}

- (void)doneWithContinueBlock:(id)a3
{
  v4 = a3;
  recurrenceAlertController = self->_recurrenceAlertController;
  if (recurrenceAlertController)
  {
    if ([(EKUIRecurrenceAlertController *)recurrenceAlertController isCurrentlyShowingAlert])
    {
      goto LABEL_29;
    }

    recurrenceAlertController = self->_recurrenceAlertController;
  }

  [(EKUIRecurrenceAlertController *)recurrenceAlertController cancelAnimated:0];
  v6 = self->_recurrenceAlertController;
  self->_recurrenceAlertController = 0;

  v7 = [(EKEventEditViewControllerModernImpl *)self _isPinningInputViews];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (-[EKEventEditViewControllerModernImpl hasUnsavedChanges](self, "hasUnsavedChanges") || (-[EKEventEditViewControllerModernImpl event](self, "event"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isNew], v8, v9))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke_2;
    aBlock[3] = &unk_1E843EDA0;
    aBlock[4] = self;
    v26 = v4;
    v10 = _Block_copy(aBlock);
    v11 = [(EKEventEditViewControllerModernImpl *)self event];
    v12 = [v11 isDetached];

    v13 = [(EKEventEditViewControllerModernImpl *)self hasAttachmentChanges];
    if ([(EKEventEditViewControllerModernImpl *)self hasModifiedAttendeesFromSuggestion])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke_3;
      v23[3] = &unk_1E843FED8;
      v23[4] = self;
      v24 = v10;
      v14 = [EKUISendInviteAlertController presentInviteAlertWithOptions:16 sourceView:0 sourceRect:0 sourceItem:self viewController:v23 withCompletionHandler:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

      goto LABEL_26;
    }

    v15 = [(EKEventEditViewControllerModernImpl *)self event];
    if ([v15 isNew])
    {

LABEL_25:
      [(CUIKEventEditViewControllerManager *)self->_vcManager save:0 completion:0];
      v10[2](v10);
LABEL_26:

      if (!v7)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v16 = [(EKEventEditViewControllerModernImpl *)self event];
    v17 = [v16 isOrWasPartOfRecurringSeries];

    if (!v17)
    {
      goto LABEL_25;
    }

    if ((v12 & v13) == 1)
    {
      goto LABEL_23;
    }

    v18 = [(EKEventEditViewControllerModernImpl *)self event];
    v19 = [v18 requiresDetach];
    if (v19 & 1) != 0 || (-[EKEventEditViewControllerModernImpl event](self, "event"), v13 = objc_claimAutoreleasedReturnValue(), ([v13 isOrWasPartOfRecurringSeries]))
    {
      v20 = [(EKEventEditViewControllerModernImpl *)self event];
      v21 = [v20 allowsSpansOtherThanThisEvent];

      if (v19)
      {

        if (!v21)
        {
LABEL_22:
          if (![(EKEventEditViewControllerModernImpl *)self attachmentsModifiedOnRecurrence])
          {
            goto LABEL_25;
          }

LABEL_23:
          v22 = [(EKEventEditViewControllerModernImpl *)self attachmentsModifiedEvent];
          [(EKEventEditViewControllerModernImpl *)self _presentAttachmentRecurrenceSheetForEvent:v22 withContinueBlock:v10];
          goto LABEL_24;
        }
      }

      else
      {

        if ((v21 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v22 = [(EKEventEditViewControllerModernImpl *)self event];
      [(EKEventEditViewControllerModernImpl *)self _presentDetachSheetForEvent:v22 saveAttachments:[(EKEventEditViewControllerModernImpl *)self attachmentsModifiedOnRecurrence] withContinueBlock:v10];
LABEL_24:

      goto LABEL_26;
    }

    goto LABEL_22;
  }

  [(EKEventEditViewControllerModernImpl *)self completeWithAction:0 animated:1];
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (UIKeyboardAutomaticIsOnScreen())
  {
    UIKeyboardOrderOutAutomatic();
  }

LABEL_29:
}

void __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) firstResponder];
  [v1 resignFirstResponder];
}

uint64_t __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 attemptDisplayReviewPrompt];
}

uint64_t __61__EKEventEditViewControllerModernImpl_doneWithContinueBlock___block_invoke_3(uint64_t result, int a2)
{
  if (!a2)
  {
    v3 = result;
    [*(result + 32) _performSave:0 animated:1];
    v4 = *(*(v3 + 40) + 16);

    return v4();
  }

  return result;
}

- (id)confirmDismissAlertController
{
  v3 = [(EKEventEditViewControllerModernImpl *)self _confirmDismissAlertExplanationText];
  v4 = [EKUIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];
  [v4 setProhibitsRotation:1];
  v5 = [(EKEventEditViewControllerModernImpl *)self alertIconImage];
  [v4 setImage:v5];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Discard Changes" value:&stru_1F4EF6790 table:0];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__EKEventEditViewControllerModernImpl_confirmDismissAlertController__block_invoke;
  v27[3] = &unk_1E843EB98;
  v27[4] = self;
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:2 handler:v27];
  [v4 addAction:v8];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Keep Editing" value:&stru_1F4EF6790 table:0];

  v11 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:1 handler:0];
  [v4 addAction:v11];

  v12 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  v13 = [v12 isNavigationBarHidden];

  if (v13)
  {
    cancelButtonTarget = self->_cancelButtonTarget;
    v15 = [v4 popoverPresentationController];
    [v15 setSourceView:cancelButtonTarget];

    [(UILabel *)self->_cancelButtonTarget bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v4 popoverPresentationController];
    [v24 setSourceRect:{v17, v19, v21, v23}];
  }

  else
  {
    v24 = [(EKEventEditViewControllerModernImpl *)self _leftBarButtonItem];
    v25 = [v4 popoverPresentationController];
    [v25 setBarButtonItem:v24];
  }

  return v4;
}

- (id)_confirmDismissAlertExplanationText
{
  v2 = [(EKEvent *)self->_event isNew];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Are you sure you want to discard this new event?";
  }

  else
  {
    v5 = @"Are you sure you want to discard your changes?";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F4EF6790 table:0];

  return v6;
}

- (id)alertIconImage
{
  v2 = objc_alloc(MEMORY[0x1E69A8A00]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x1E69930E8]];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:100.0 scale:{100.0, v6}];
  v8 = [v3 imageForDescriptor:v7];
  if ([v8 placeholder])
  {
    v9 = [v3 prepareImageForDescriptor:v7];

    v8 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v8, "CGImage")}];

  return v10;
}

- (BOOL)shouldShowDismissAlert
{
  if ([(EKEventEditViewControllerModernImpl *)self ignoreUnsavedChanges])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(EKEventEditViewControllerModernImpl *)self hasUnsavedChanges];
    if (v3)
    {
      [(EKEventEditViewControllerModernImpl *)self presentationControllerDidAttemptToDismiss];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)presentationControllerDidAttemptToDismiss
{
  v3 = [(EKEventEditViewControllerModernImpl *)self firstResponder];
  [v3 resignFirstResponder];

  if ([(EKEventEditViewControllerModernImpl *)self isShowingAccessDeniedView])
  {

    [(EKEventEditViewControllerModernImpl *)self cancelEditingWithDelegateNotification:1 forceCancel:1];
  }

  else
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self confirmDismissAlertController];
    [(EKEventEditViewControllerModernImpl *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (BOOL)hasUnsavedChanges
{
  if (![(EKEventEditViewControllerModernImpl *)self isEditingMode])
  {
    return 0;
  }

  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  if ([v3 hasUnsavedChanges])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CUIKEventEditViewControllerManager *)self->_vcManager hasUnsavedChanges];
  }

  return v4;
}

- (BOOL)attachmentsModifiedOnRecurrence
{
  v3 = [(EKEventEditViewControllerModernImpl *)self hasAttachmentChanges];
  if (v3)
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self event];
    v5 = [v4 isOrWasPartOfRecurringSeries];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)refreshStartAndEndDates
{
  vcManager = self->_vcManager;
  v7 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = [v7 startDate];
  v5 = [(EKEventEditViewControllerModernImpl *)self event];
  v6 = [v5 endDate];
  [(CUIKEventEditViewControllerManager *)vcManager updateStartAndEndDates:v4 end:v6];
}

- (void)refreshUIForUpdatedEvent
{
  vcManager = self->_vcManager;
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  [(CUIKEventEditViewControllerManager *)vcManager updateFromReminderForEvent:v3];
}

- (BOOL)willPresentDialogOnSave
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  if ([v3 requiresDetach])
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self event];
    v5 = [v4 allowsSpansOtherThanThisEvent];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = [(EKEventEditViewControllerModernImpl *)self event];
  if (![v6 isOrWasPartOfRecurringSeries])
  {

    return 0;
  }

  if (([(UIBarButtonItem *)self->_doneButton isEnabled]& 1) == 0)
  {
    v8 = [(EKEventEditViewControllerModernImpl *)self isEditingMode];

    return v8;
  }

  return 1;
}

- (void)setEvent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_event, a3);
  v6 = [v5 eventIdentifier];
  v7 = [(EKEvent *)self->_event eventIdentifier];

  if (v6 != v7)
  {
    self->_createdOwnEKEvent = 0;
    [(CUIKEventEditViewControllerManager *)self->_vcManager eventSetExternally:self->_event forceUpdate:0];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__EKEventEditViewControllerModernImpl_setEvent___block_invoke;
  v9[3] = &unk_1E843EFB8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __48__EKEventEditViewControllerModernImpl_setEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = @"New Event";
  if (v2 && ![v2 isNew])
  {
    v3 = @"Edit Event";
  }

  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F4EF6790 table:0];
  [*(a1 + 40) setTitle:v5];

  [*(a1 + 40) _annotateEventEntityIfNeeded];
  [*(a1 + 40) _updateStatusButtonsActions];
  [*(a1 + 40) _updateResponseVisibility];
  v6 = *(a1 + 40);

  return [v6 _updateResponse];
}

- (void)_annotateEventEntityIfNeeded
{
  event = self->_event;
  v4 = [(EKEventEditViewControllerModernImpl *)self isEditingMode];

  [(UIViewController *)self EKUI_annotateIfNeededWithAppEntityForEvent:event isEditing:v4];
}

- (EKAutocompleteSearchPasteboardItemProvider)pasteboardItemProvider
{
  v3 = [(EKEventEditViewControllerModernImpl *)self editViewDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKEventEditViewControllerModernImpl *)self editViewDelegate];
    v6 = [(EKEventEditViewControllerModernImpl *)self _ekEventEditViewController];
    v7 = [v5 pasteboardManagerForEventEditViewController:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EKEvent)eventForViewControllerManager
{
  event = self->_event;
  if (!event)
  {
    if (self->_eventStore)
    {
      v4 = [MEMORY[0x1E6966A08] eventWithEventStore:?];
      v5 = self->_event;
      self->_event = v4;

      v6 = [MEMORY[0x1E695DF00] date];
      [(EKEvent *)self->_event setStartDate:v6];

      v7 = [MEMORY[0x1E695DF00] date];
      [(EKEvent *)self->_event setEndDate:v7];

      v8 = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
      [(EKEvent *)self->_event setCalendar:v8];
    }

    self->_createdOwnEKEvent = 1;
    event = self->_event;
  }

  return event;
}

- (void)requestLocationOrVideoCallPresentationWithExistingLocation:(id)a3 locationSelected:(BOOL)a4 existingVirtualConference:(id)a5 virtualConferenceSelected:(BOOL)a6
{
  v6 = a6;
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v6 && ([v11 isWritable] & 1) != 0)
  {
    v13 = 1536;
  }

  else if (v10 != 0 && a4)
  {
    v13 = 511;
  }

  else
  {
    v13 = 2047;
  }

  v14 = [EKLocationEditItemViewController alloc];
  v15 = [(EKLocationEditItemViewController *)v14 initWithFrame:self->_event calendarItem:self->_eventStore eventStore:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKEditItemViewController *)v15 setEditDelegate:self];
  [(EKEditItemViewController *)v15 setModal:1];
  v16 = [[EKUILocationRowModel alloc] initWithStructuredLocation:v10];
  [(EKLocationEditItemViewController *)v15 setLocationViewModel:v16];

  if (v12)
  {
    v17 = [[EKUILocationRowModel alloc] initWithVirtualConference:v12];
    [(EKLocationEditItemViewController *)v15 setConferenceViewModel:v17];

    [(EKLocationEditItemViewController *)v15 setConferenceTextFieldSelected:v6];
    v18 = [v12 isWritable] ^ 1;
  }

  else
  {
    [(EKLocationEditItemViewController *)v15 setConferenceViewModel:0];
    [(EKLocationEditItemViewController *)v15 setConferenceTextFieldSelected:v6];
    v18 = 0;
  }

  [(EKLocationEditItemViewController *)v15 setDisableConferenceTextField:v18];
  [(EKEditItemViewController *)v15 setShowsDoneButton:0];
  [(EKLocationEditItemViewController *)v15 setSupportedSearchTypes:v13];
  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v15 action:sel_cancel];
  v20 = objc_alloc(MEMORY[0x1E69DC720]);
  v25[0] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22 = [v20 initWithBarButtonItems:v21 representativeItem:0];

  v23 = [(EKLocationEditItemViewController *)v15 navigationItem];
  [v23 setPinnedTrailingGroup:v22];

  v24 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v15];
  [(EKEventEditViewControllerModernImpl *)self presentViewController:v24 animated:1 completion:0];
}

- (void)attemptSaveForEvent:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(EKEventEditViewControllerModernImpl *)self setEvent:a3];
  [(EKEventEditViewControllerModernImpl *)self completeAndSaveWithContinueBlock:v6];
}

- (void)requestAddInviteesPresentation
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = MEMORY[0x1E6993398];
  selfOrganizer = self->_selfOrganizer;
  v5 = selfOrganizer;
  v6 = [v4 attendeesWithoutSelfOrganizerAndLocationsWithEvent:v3 outSelfOrganizer:&selfOrganizer];
  v7 = selfOrganizer;
  v8 = selfOrganizer;

  objc_storeStrong(&self->_selfOrganizer, v7);
  v9 = [EKEventAttendeesEditViewController alloc];
  v10 = [(EKEventAttendeesEditViewController *)v9 initWithFrame:v3 event:0 overriddenEventStartDate:0 overriddenEventEndDate:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = [(EKEventEditViewControllerModernImpl *)self event];
  v12 = [v11 isExternallyOrganizedInvitation];

  if (v12)
  {
    v26 = v8;
    v13 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          if ([v19 isNew])
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    [(EKEventAttendeesEditViewController *)v10 setAttendees:v13];
    [(EKEventAttendeesEditViewController *)v10 setAppendOnly:1];

    v8 = v26;
  }

  else
  {
    [(EKEventAttendeesEditViewController *)v10 setAttendees:v6];
  }

  v20 = [(EKEventEditViewControllerModernImpl *)self event];
  v21 = [v20 calendar];
  v22 = [v21 source];
  v23 = [v22 externalID];

  [(EKEventAttendeesEditViewController *)v10 setSearchAccountID:v23];
  v24 = v10;
  [(EKEditItemViewController *)v24 setEditDelegate:self];
  v25 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v24];

  [(EKEventEditViewControllerModernImpl *)self presentViewController:v25 animated:1 completion:0];
}

- (void)requestInviteesListPresentation
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = MEMORY[0x1E6993398];
  selfOrganizer = self->_selfOrganizer;
  v5 = selfOrganizer;
  v6 = [v4 attendeesWithoutSelfOrganizerAndLocationsWithEvent:v3 outSelfOrganizer:&selfOrganizer];
  v7 = selfOrganizer;
  v8 = selfOrganizer;

  objc_storeStrong(&self->_selfOrganizer, v7);
  if ([v6 count])
  {
    v9 = [EKUIEventInviteesEditViewController alloc];
    v10 = [(EKEventEditViewControllerModernImpl *)self event];
    v11 = [(EKUIEventInviteesEditViewController *)v9 initWithEvent:v10];
  }

  else
  {
    v12 = [EKEventAttendeesEditViewController alloc];
    v11 = [(EKEventAttendeesEditViewController *)v12 initWithFrame:v3 event:0 overriddenEventStartDate:0 overriddenEventEndDate:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  [(EKEditItemViewController *)v11 setEditDelegate:self];
  v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
  [(EKEventEditViewControllerModernImpl *)self presentViewController:v13 animated:1 completion:0];
}

- (void)requestProposeNewTimePresentation
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = [(NSDictionary *)self->_context objectForKeyedSubscript:@"EKUIEventDetailsContext_ModelKey"];
  v7 = [[EKEventProposeNewTimeViewController alloc] initWithEvent:v3 model:v4];
  if (objc_opt_respondsToSelector())
  {
    [(EKEventProposeNewTimeViewController *)v7 setEditDelegate:self];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  v6 = [v5 presentationController];
  [v6 setDelegate:self];

  [(EKEventEditViewControllerModernImpl *)self presentViewController:v5 animated:1 completion:0];
}

- (void)requestMailAllInviteesPresentation
{
  v3 = [EKUIEmailCompositionManager alloc];
  v4 = [(EKEventEditViewControllerModernImpl *)self event];
  v5 = [(EKUIEmailCompositionManager *)v3 initWithEvent:v4];
  mailSendingManager = self->_mailSendingManager;
  self->_mailSendingManager = v5;

  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __73__EKEventEditViewControllerModernImpl_requestMailAllInviteesPresentation__block_invoke;
  v12 = &unk_1E843F7E8;
  objc_copyWeak(&v13, &location);
  [(EKUIEmailCompositionManager *)self->_mailSendingManager setMessageSendingComplete:&v9];
  v7 = [(EKUIEmailCompositionManager *)self->_mailSendingManager viewController:v9];
  [v7 setModalPresentationStyle:2];

  v8 = [(EKUIEmailCompositionManager *)self->_mailSendingManager viewController];
  [(EKEventEditViewControllerModernImpl *)self presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __73__EKEventEditViewControllerModernImpl_requestMailAllInviteesPresentation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[137] viewController];
  v3 = [v2 presentingViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__EKEventEditViewControllerModernImpl_requestMailAllInviteesPresentation__block_invoke_2;
  v4[3] = &unk_1E843EC60;
  v4[4] = WeakRetained;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __73__EKEventEditViewControllerModernImpl_requestMailAllInviteesPresentation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1096);
  *(v1 + 1096) = 0;
}

- (void)requestMessageAllInviteesPresentation
{
  v3 = [EKUITextSendingManager alloc];
  v4 = [(EKEventEditViewControllerModernImpl *)self event];
  v5 = [(EKUITextSendingManager *)v3 initWithEvent:v4];
  messageSendingManager = self->_messageSendingManager;
  self->_messageSendingManager = v5;

  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __76__EKEventEditViewControllerModernImpl_requestMessageAllInviteesPresentation__block_invoke;
  v12 = &unk_1E843F7E8;
  objc_copyWeak(&v13, &location);
  [(EKUITextSendingManager *)self->_messageSendingManager setMessageSendingComplete:&v9];
  v7 = [(EKUITextSendingManager *)self->_messageSendingManager viewController:v9];
  [v7 setModalPresentationStyle:2];

  v8 = [(EKUITextSendingManager *)self->_messageSendingManager viewController];
  [(EKEventEditViewControllerModernImpl *)self presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__EKEventEditViewControllerModernImpl_requestMessageAllInviteesPresentation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[138] viewController];
  v3 = [v2 presentingViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__EKEventEditViewControllerModernImpl_requestMessageAllInviteesPresentation__block_invoke_2;
  v4[3] = &unk_1E843EC60;
  v4[4] = WeakRetained;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __76__EKEventEditViewControllerModernImpl_requestMessageAllInviteesPresentation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1104);
  *(v1 + 1104) = 0;
}

- (void)updateEventCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self event];
  [v5 setCalendar:v4];
}

- (BOOL)_sourceIsManaged
{
  v2 = [(EKEventEditViewControllerModernImpl *)self event];
  v3 = [v2 calendar];
  v4 = [v3 source];

  v5 = [MEMORY[0x1E6993370] sharedInstance];
  LOBYTE(v3) = [v5 sourceIsManaged:v4];

  return v3;
}

- (void)deleteEvent
{
  v3 = [(UIResponder *)self EKUI_editor];
  v4 = [(EKEventEditViewControllerModernImpl *)self event];
  [v3 deleteEvent:v4 span:1 error:0];

  v5 = [(EKEventEditViewControllerModernImpl *)self event];
  v6 = [v5 status];

  v7 = [(UIResponder *)self EKUI_editor];
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_loadWeakRetained(&self->_detailsDelegate);
    v10 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    v11 = [v9 eventViewDelegateShouldHandlePresentationOfDeleteAlert:v10];
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EKEventEditViewControllerModernImpl_deleteEvent__block_invoke;
  aBlock[3] = &unk_1E843FF28;
  v26 = v11;
  aBlock[4] = self;
  v12 = v7;
  v25 = v12;
  v27 = v6 == 3;
  v13 = _Block_copy(aBlock);
  if (v6 == 3)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  if (v11)
  {
    v15 = [EKUIRecurrenceAlertController deleteAlertWithOptions:v14 forEvent:self->_event stringForDeleteButton:0 withCompletionHandler:v13];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;

    if (!self->_recurrenceAlertController)
    {
      v13[2](v13, 0);
      goto LABEL_12;
    }

    v17 = objc_loadWeakRetained(&self->_detailsDelegate);
    v18 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    v19 = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
    [v17 eventViewController:v18 requestsDisplayOfDeleteAlert:v19];
  }

  else
  {
    v17 = [(EKEventEditViewControllerModernImpl *)self presentationSourceViewController];
    v20 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    v21 = [v20 view];

    [v21 bounds];
    v22 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v14 viewController:v17 sourceView:v21 sourceRect:self->_event forEvent:0 stringForDeleteButton:v13 withCompletionHandler:?];
    v23 = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v22;
  }

LABEL_12:
}

void __50__EKEventEditViewControllerModernImpl_deleteEvent__block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v14 = *MEMORY[0x1E69932E8];
    v4 = [EKUIModernEventViewDelegateAlertDisplayer alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1224));
    v6 = [(EKUIModernEventViewDelegateAlertDisplayer *)v4 initWithDelegate:WeakRetained eventViewController:*(a1 + 32)];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__EKEventEditViewControllerModernImpl_deleteEvent__block_invoke_2;
  v10[3] = &unk_1E843FF00;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = a2;
  v10[4] = v9;
  v13 = *(a1 + 49);
  v11 = v8;
  [v11 performWithOptions:v7 block:v10];
}

uint64_t __50__EKEventEditViewControllerModernImpl_deleteEvent__block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == 2)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 2;
  }

  else if (v1 == 1)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      return result;
    }

    if (*(result + 56))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(result + 40);
    v4 = *(result + 32);
  }

  return [v4 _performDelete:v2 editor:v3];
}

- (BOOL)shouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_detailsDelegate), v10 = [v9 conformsToProtocol:&unk_1F4F9EBE0], v9, v8, v10) && (v11 = objc_loadWeakRetained(&self->_detailsDelegate), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    v13 = objc_loadWeakRetained(&self->_detailsDelegate);
    v14 = [v13 eventViewDelegateShouldShowNextOccurrenceOfEvent:v6 forward:v4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)nextButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = objc_loadWeakRetained(&self->_detailsDelegate);
    if ([v4 conformsToProtocol:&unk_1F4F9EBE0])
    {
      v5 = objc_loadWeakRetained(&self->_detailsDelegate);
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = objc_loadWeakRetained(&self->_detailsDelegate);
      v4 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      [v7 eventViewControllerNextButtonWasTapped:v4];
    }
  }
}

- (void)prevButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = objc_loadWeakRetained(&self->_detailsDelegate);
    if ([v4 conformsToProtocol:&unk_1F4F9EBE0])
    {
      v5 = objc_loadWeakRetained(&self->_detailsDelegate);
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = objc_loadWeakRetained(&self->_detailsDelegate);
      v4 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      [v7 eventViewControllerPreviousButtonWasTapped:v4];
    }
  }
}

- (int)_currentViewInt
{
  v2 = [(EKEventEditViewControllerModernImpl *)self canvasView];
  if (v2 > 5)
  {
    return 5;
  }

  else
  {
    return dword_1D3600688[v2];
  }
}

- (void)_performDelete:(int64_t)a3 editor:(id)a4
{
  v6 = MEMORY[0x1E6966A10];
  v7 = a4;
  v8 = [v6 sharedInstance];
  [v8 handleEventDeletion:self->_event];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EKEventEditViewControllerModernImpl__performDelete_editor___block_invoke;
  v10[3] = &unk_1E843FF50;
  v10[4] = self;
  [v7 deleteEvents:v9 span:a3 result:v10];
}

void __61__EKEventEditViewControllerModernImpl__performDelete_editor___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) completeWithAction:2];
    [*(a1 + 32) _currentViewInt];
    CalAnalyticsSendEventLazy();
  }

  else
  {
    v7 = [v5 domain];
    v8 = v7;
    if (v7 == *MEMORY[0x1E6966808])
    {
      v9 = [v6 code];

      if (v9 == 1010)
      {
        v10 = [*(*(a1 + 32) + 1184) eventStore];
        [v10 rollback];
      }
    }

    else
    {
    }
  }
}

void __61__EKEventEditViewControllerModernImpl__performDelete_editor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 event];
  if ([v5 isReminderIntegrationEvent])
  {
    v6 = @"Reminder";
  }

  else
  {
    v6 = @"Event";
  }

  [v4 setObject:v6 forKeyedSubscript:@"eventType"];

  v7 = [*(a1 + 32) event];
  v8 = [v7 attendees];
  if ([v8 count])
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v9 forKeyedSubscript:@"hasAttendees"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v4 setObject:v10 forKeyedSubscript:@"currentView"];
}

- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4
{
  [(CUIKEventEditViewControllerManager *)self->_vcManager save:a3 completion:0];
  [(EKEventEditViewControllerModernImpl *)self completeWithAction:1];
  [(EKEventEditViewControllerModernImpl *)self _currentViewInt];
  CalAnalyticsSendEventLazy();
  return 1;
}

void __61__EKEventEditViewControllerModernImpl__performSave_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 event];
  if ([v5 isReminderIntegrationEvent])
  {
    v6 = @"Reminder";
  }

  else
  {
    v6 = @"Event";
  }

  [v4 setObject:v6 forKeyedSubscript:@"eventType"];

  v7 = [*(a1 + 32) event];
  v8 = [v7 attendees];
  if ([v8 count])
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v9 forKeyedSubscript:@"hasAttendees"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v4 setObject:v10 forKeyedSubscript:@"currentView"];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v9 = a3;
  v4 = [v9 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 presentedViewController];
    v8 = [v7 topViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EKEventEditViewControllerModernImpl *)self editItemViewController:v8 didCompleteWithAction:1 dismiss:0];
    }

    v6 = v9;
  }
}

- (id)_ekEventEditViewController
{
  v3 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  }

  else
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed trying to get a EKEventEditViewController", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_ekEventViewController
{
  v3 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  }

  else
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed trying to get a EKEventViewController", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)navigationController
{
  v2 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  v3 = [v2 navigationController];

  return v3;
}

- (id)navigationItem
{
  v2 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)toolbar
{
  v2 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  v3 = [v2 toolbar];

  return v3;
}

- (id)toolbarItems
{
  v2 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  v3 = [v2 toolbarItems];

  return v3;
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEventEditViewControllerModernImpl *)self parentViewController];
  [v7 setToolbarItems:v6 animated:v4];
}

- (id)presentationSourceViewController
{
  v3 = [(EKEventEditViewControllerModernImpl *)self navigationController];

  if (v3)
  {
    v4 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (BOOL)displayingRootView
{
  v2 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  v3 = [v2 visibleViewController];
  v4 = [v2 viewControllers];
  v5 = [v4 firstObject];
  v6 = v3 == v5;

  return v6;
}

- (id)_leftBarButtonItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
  v3 = [v2 leftBarButtonItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (id)_rightBarButtonItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(EKEventEditViewControllerModernImpl *)self navigationItem];
  v3 = [v2 rightBarButtonItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4 dismiss:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  if (v5)
  {
    [(EKEventEditViewControllerModernImpl *)self dismissViewControllerAnimated:1 completion:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(EKEventEditViewControllerModernImpl *)self event];
    v8 = [v7 calendar];

    v9 = [v23 attendees];
    v10 = [(EKEventEditViewControllerModernImpl *)self event];
    v11 = [v10 attendees];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v9 count];
    if (([v8 sharingStatus] != 2 || (-[EKEventEditViewControllerModernImpl event](self, "event"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "organizer"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17)) && self->_selfOrganizer && v15)
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithArray:v14];
      [v18 addObject:self->_selfOrganizer];
      [v18 addObjectsFromArray:v9];
    }

    else
    {
      v18 = [v9 arrayByAddingObjectsFromArray:v14];
    }

    v22 = [(EKEventEditViewControllerModernImpl *)self event];
    [v22 setAttendees:v18];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = v23;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = v23;
    v8 = [v21 selectedStartDate];
    v9 = [v21 selectedEndDate];

    v14 = [(EKEventEditViewControllerModernImpl *)self event];
    [v14 setStartDate:v8];
    [v14 setEndDate:v9];
  }

  [(CUIKEventEditViewControllerManager *)self->_vcManager inviteesChangedExternally];

  v20 = v23;
LABEL_16:
}

- (BOOL)editItemViewControllerShouldShowDetachAlert
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AF00];
    v4 = v2;
    v5 = [v3 callStackSymbols];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Attemped to call (BOOL)editItemViewControllerShouldShowDetachAlert inside EKEventEditViewControllerModernImpl: %@", &v7, 0xCu);
  }

  return 0;
}

- (id)editItemEventToDetach
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AF00];
    v4 = v2;
    v5 = [v3 callStackSymbols];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "Attemped to call (EKEvent *)editItemEventToDetach inside EKEventEditViewControllerModernImpl: %@", &v7, 0xCu);
  }

  return 0;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_detailsDelegate, obj);
    v5 = obj;
  }
}

- (EKEventViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);

  return WeakRetained;
}

- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)a3
{
  if (a3 == 2)
  {

    [(EKEventEditViewControllerModernImpl *)self completeWithAction:?];
  }

  else
  {
    [(EKEventEditViewControllerModernImpl *)self _dismissEditor:1 deleted:0];
    if (a3 == 1)
    {
      v5 = [(EKEvent *)self->_event calendar];
      [(EKEventEditViewControllerModernImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v5];
    }
  }
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v10 = a5;
  [(EKEventEditViewControllerModernImpl *)self setIsEditingMode:0];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = objc_loadWeakRetained(&self->_detailsDelegate);
      v10[2](v10, v9);
    }

    else
    {
      v10[2](v10, self);
    }
  }

  [(EKEventEditViewControllerModernImpl *)self _eventEditViewControllerDidCompleteWithAction:a4];
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v4 = [(EKEventEditViewControllerModernImpl *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    v7 = [WeakRetained pasteboardManager];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4
{
  v4 = a4;
  v6 = [(EKEventEditViewControllerModernImpl *)self _ekEventEditViewController];
  if (v6)
  {
    v25 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_detailsDelegate), v10 = [v9 conformsToProtocol:&unk_1F4F9EBE0], v9, v8, v10))
    {
      v11 = objc_loadWeakRetained(&self->_detailsDelegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_detailsDelegate);
        v14 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
        [v13 eventViewControllerWillFinishEditingEvent:v14 deleted:v4];
      }

      v15 = objc_loadWeakRetained(&self->_detailsDelegate);
      v16 = objc_opt_respondsToSelector();

      v17 = objc_loadWeakRetained(&self->_detailsDelegate);
      if (v16)
      {
        v18 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
        [v17 eventViewController:v18 requestsDismissalOfEditViewController:v25];
      }

      else
      {
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          v20 = objc_loadWeakRetained(&self->_detailsDelegate);
          v21 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
          [v20 eventViewController:v21 willDismissEditViewController:v25 deleted:v4];
        }

        v22 = [v25 presentingViewController];
        [v22 dismissViewControllerWithTransition:-[EKEventEditViewControllerModernImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];

        v23 = objc_loadWeakRetained(&self->_detailsDelegate);
        v24 = objc_opt_respondsToSelector();

        if ((v24 & 1) == 0)
        {
          goto LABEL_15;
        }

        v17 = objc_loadWeakRetained(&self->_detailsDelegate);
        v18 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
        [v17 eventViewController:v18 didDismissEditViewController:v25 deleted:v4];
      }
    }

    else
    {
      v17 = [v25 presentingViewController];
      [v17 dismissViewControllerWithTransition:-[EKEventEditViewControllerModernImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];
    }

LABEL_15:
    [v25 setInternalEditViewDelegate:0];
    v6 = v25;
  }
}

- (void)_performEditKeyCommand
{
  if ([(EKEventEditViewControllerModernImpl *)self _canPerformEditKeyCommand])
  {

    [(EKEventEditViewControllerModernImpl *)self editButtonTapped];
  }
}

- (void)editButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_detailsDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) == 0) || (v7 = objc_loadWeakRetained(&self->_detailsDelegate), -[EKEventEditViewControllerModernImpl _ekEventViewController](self, "_ekEventViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 eventViewControllerEditButtonTemporarilyDisabled:v8], v8, v7, (v9 & 1) == 0))
  {
    v10 = objc_loadWeakRetained(&self->_detailsDelegate);
    if (v10)
    {
      v11 = v10;
      v12 = objc_loadWeakRetained(&self->_detailsDelegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_detailsDelegate);
        [v14 performSelector:sel_eventViewControllerWillBeginEditingEvent_ withObject:self];
      }
    }

    [(EKEventEditViewControllerModernImpl *)self setIsEditingMode:1];
    v15 = objc_loadWeakRetained(&self->_detailsDelegate);
    if (!v15 || (v16 = v15, v17 = objc_loadWeakRetained(&self->_detailsDelegate), v18 = objc_opt_respondsToSelector(), v17, v16, (v18 & 1) == 0) || (v19 = objc_loadWeakRetained(&self->_detailsDelegate), -[EKEventEditViewControllerModernImpl _ekEventViewController](self, "_ekEventViewController"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v19 eventViewDelegateShouldCreateOwnEditViewController:v20], v20, v19, (v21 & 1) == 0))
    {
      v25 = objc_alloc_init(EKEventEditViewController);
      v22 = [(EKEventEditViewControllerModernImpl *)self event];
      [(EKEventEditViewController *)v25 setEvent:v22];

      v23 = [(EKEventEditViewControllerModernImpl *)self event];
      v24 = [v23 eventStore];
      [(EKEventEditViewController *)v25 setEventStore:v24];

      [(EKEventEditViewControllerModernImpl *)self setActiveEventEditor:v25];
    }
  }
}

- (void)setActiveEventEditor:(id)a3
{
  v4 = a3;
  [v4 setInternalEditViewDelegate:self];
  v5 = [(EKEventEditViewControllerModernImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v5))
  {
    v6 = [(EKEventEditViewControllerModernImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(v6);

    if (IsRegular)
    {
      [v4 setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  v8 = [(EKEventEditViewControllerModernImpl *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);
    [v4 setModalPresentationStyle:{objc_msgSend(WeakRetained, "editorPresentationStyle")}];
  }

  activeEventEditor = self->_activeEventEditor;
  self->_activeEventEditor = v4;
}

- (void)fullReloadWithNewEvent:(id)a3
{
  v4 = a3;
  [(EKEventEditViewControllerModernImpl *)self setEvent:v4];
  [(CUIKEventEditViewControllerManager *)self->_vcManager eventSetExternally:v4 forceUpdate:1];
}

- (void)openAttendeesDetailItem
{
  v3 = [EKUIEventInviteesViewController alloc];
  event = self->_event;
  v5 = [(EKEventEditViewControllerModernImpl *)self calendarModel];
  v6 = [(EKUIEventInviteesViewController *)v3 initWithEvent:event fromDetail:1 model:v5];

  if (objc_opt_respondsToSelector())
  {
    [(EKUIEventInviteesViewController *)v6 setEditDelegate:self];
  }

  v7 = dispatch_time(0, 100000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__EKEventEditViewControllerModernImpl_openAttendeesDetailItem__block_invoke;
  v9[3] = &unk_1E843EFB8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

void __62__EKEventEditViewControllerModernImpl_openAttendeesDetailItem__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _ekEventViewController];
  v2 = [v3 navigationDelegate];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

- (void)performAddToCalendar
{
  if ([(EKEventEditViewControllerModernImpl *)self isICSPreview]&& [(EKEventEditViewControllerModernImpl *)self showsAddToCalendarForICSPreview])
  {

    [(EKEventEditViewControllerModernImpl *)self _addToCalendarClicked:self];
  }
}

- (BOOL)_canPerformEditKeyCommand
{
  if ([(EKEventEditViewControllerModernImpl *)self _shouldShowEditButton])
  {
    return 1;
  }

  return [(EKEventEditViewControllerModernImpl *)self shouldShowEditButtonInline];
}

- (void)_pinKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self _popoverController];

  if (v5)
  {
    if (v3)
    {

      [(EKEventEditViewControllerModernImpl *)self _beginPinningInputViews];
    }

    else
    {

      [(EKEventEditViewControllerModernImpl *)self _endPinningInputViews];
    }
  }
}

- (BOOL)shouldShowEditButtonInline
{
  v3 = [(EKEventEditViewControllerModernImpl *)self isEditing];
  v4 = [(EKEventEditViewControllerModernImpl *)self _shouldShowInlineButtonFromDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v6 = objc_loadWeakRetained(&self->_detailsDelegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v9 = 0;
      if (v3)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    v8 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    v9 = [WeakRetained eventViewControllerShouldShowInlineEditButtonForInvitations:v8];
  }

  else
  {
    v9 = 0;
  }

  if (v3)
  {
LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

LABEL_8:
  v11 = [(EKEventEditViewControllerModernImpl *)self noninteractivePlatterMode];
  v10 = 0;
  if (!v11 && v4)
  {
    v10 = [(EKEventEditViewControllerModernImpl *)self _shouldShowEditButton]| v9;
  }

  return v10 & 1;
}

- (BOOL)_shouldShowInlineButtonFromDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_detailsDelegate);
  v6 = [v5 performSelector:sel_eventViewControllerShouldHideInlineEditButton withObject:self] == 0;

  return v6;
}

- (void)setMinimalMode:(BOOL)a3
{
  if (self->_minimalMode != a3)
  {
    self->_minimalMode = a3;
  }
}

- (void)setNoninteractivePlatterMode:(BOOL)a3
{
  if (self->_noninteractivePlatterMode != a3)
  {
    self->_noninteractivePlatterMode = a3;
  }
}

- (void)_updateResponseVisibility
{
  if ([(EKEventEditViewControllerModernImpl *)self _shouldDisplayStatusButtons])
  {
    v3 = [(EKEventEditViewControllerModernImpl *)self navigationController];
    [v3 setToolbarHidden:0];

    v4 = [(EKEventEditViewControllerModernImpl *)self toolbarItems];

    if (!v4)
    {

      [(EKEventEditViewControllerModernImpl *)self _configureStatusButtonsToolbar];
    }
  }

  else
  {
    v5 = [(EKEventEditViewControllerModernImpl *)self toolbarItems];

    if (v5)
    {
      v6 = [(EKEventEditViewControllerModernImpl *)self navigationController];
      [v6 setToolbarHidden:1];

      [(EKEventEditViewControllerModernImpl *)self setToolbarItems:0 animated:1];
    }
  }
}

- (id)_statusButtonsView
{
  statusButtonsView = self->_statusButtonsView;
  if (!statusButtonsView)
  {
    v4 = [EKUIEventStatusButtonsView alloc];
    v5 = [(EKEventEditViewControllerModernImpl *)self statusButtons];
    v6 = [(EKUIEventStatusButtonsView *)v4 initWithFrame:v5 actions:self delegate:1 options:1 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = self->_statusButtonsView;
    self->_statusButtonsView = v6;

    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setDisableButtonHighlights:[(EKEventEditViewControllerModernImpl *)self _isDisplayingInvitation]^ 1];
    statusButtonsView = self->_statusButtonsView;
  }

  return statusButtonsView;
}

- (void)_updateStatusButtonsActions
{
  v5 = [(EKEventEditViewControllerModernImpl *)self statusButtons];
  v3 = [(EKUIEventStatusButtonsView *)self->_statusButtonsView actions];
  v4 = [v5 isEqualToArray:v3];

  if ((v4 & 1) == 0 && MEMORY[0x1D38B98D0]([(EKUIEventStatusButtonsView *)self->_statusButtonsView setActions:v5]))
  {
    [(EKEventEditViewControllerModernImpl *)self _configureStatusButtonsToolbar];
  }
}

- (void)_configureStatusButtonsToolbar
{
  v3 = [(EKEventEditViewControllerModernImpl *)self _statusButtonsView];
  v13 = [v3 statusButtons];

  v4 = objc_opt_new();
  if ([v13 count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = [v13 objectAtIndexedSubscript:v5];
      v8 = [v6 initWithCustomView:v7];

      [v4 addObject:v8];
      ++v5;
    }

    while ([v13 count] > v5);
  }

  [(EKEventEditViewControllerModernImpl *)self setToolbarItems:v4 animated:1];
  v9 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  v10 = [v9 toolbar];
  [v10 sizeToFit];

  v11 = [(EKEventEditViewControllerModernImpl *)self navigationController];
  v12 = [v11 toolbar];
  [v12 _setItemDistribution:1];
}

- (BOOL)_shouldDisplayStatusButtons
{
  if (([(EKEventEditViewControllerModernImpl *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  v4 = [(EKEventEditViewControllerModernImpl *)self statusButtons];
  v3 = [v4 count] != 0;

  return v3;
}

- (void)invokeAction:(int64_t)a3 eventStatusButtonsView:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [a4 buttonForAction:?];
  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "EKEventViewController invoking action: %ld", &v9, 0xCu);
  }

  if (a3 > 4095)
  {
    if (a3 < 0x10000)
    {
      switch(a3)
      {
        case 0x1000:
          [(EKEventEditViewControllerModernImpl *)self _acceptProposedTimeWithSourceViewForPopover:v6];
          break;
        case 0x2000:
          [(EKEventEditViewControllerModernImpl *)self _rejectProposedTime];
          break;
        case 0x8000:
          [(EKEventEditViewControllerModernImpl *)self _cancelProposedTime];
          break;
      }
    }

    else if (a3 >= 0x80000)
    {
      if (a3 == 0x80000 || a3 == 0x100000)
      {
LABEL_27:
        [(EKEventEditViewControllerModernImpl *)self _deleteClicked:v6];
      }
    }

    else if (a3 == 0x10000)
    {
      PresentJunkAlertControllerForEvent(self->_event, v6, self, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else if (a3 == 0x40000)
    {
      [(EKEventEditViewControllerModernImpl *)self _unsubscribeClicked:v6];
    }
  }

  else
  {
    if (a3 <= 7)
    {
      switch(a3)
      {
        case 1:
          v8 = 2;
          break;
        case 2:
          v8 = 4;
          break;
        case 4:
          v8 = 3;
          break;
        default:
          goto LABEL_35;
      }

      [(EKEventEditViewControllerModernImpl *)self _saveStatus:v8 sourceViewForPopover:v6];
      goto LABEL_35;
    }

    if (a3 <= 127)
    {
      if (a3 != 8)
      {
        if (a3 != 16)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (a3 == 128)
    {
      [(EKEventEditViewControllerModernImpl *)self _deleteSuggestionTapped:self];
      goto LABEL_35;
    }

    if (a3 == 2048)
    {
LABEL_24:
      [(EKEventEditViewControllerModernImpl *)self _addToCalendarClicked:self];
    }
  }

LABEL_35:
}

- (void)_updateResponse
{
  v11 = [(EKEventEditViewControllerModernImpl *)self _statusButtonsView];
  event = self->_event;
  if (self->_trustsStatus)
  {
    v4 = [(EKEvent *)event participationStatus];
  }

  else
  {
    v5 = [(EKEvent *)event calendar];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 source];
      v8 = [v7 constraints];
      v9 = [v8 statusesAreAccurate] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v4 = [(EKEvent *)self->_event participationStatus];
    if (v9 && ![(EKEvent *)self->_event isStatusDirty])
    {
      goto LABEL_11;
    }
  }

  if (![(EKEventEditViewControllerModernImpl *)self _isDisplayingSuggestion]&& (v4 - 2) <= 2)
  {
    v10 = qword_1D36006A0[v4 - 2];
    goto LABEL_12;
  }

LABEL_11:
  v10 = 0;
LABEL_12:
  [v11 setSelectedAction:v10];
}

- (void)_acceptProposedTimeWithSourceViewForPopover:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self _proposedDate];
  if (v5)
  {
    v6 = [(EKEventEditViewControllerModernImpl *)self event];
    v7 = [v6 endDateUnadjustedForLegacyClients];
    v8 = [v6 startDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    [v6 setStartDate:v5];
    v11 = [v5 dateByAddingTimeInterval:v10];
    [v6 setEndDateUnadjustedForLegacyClients:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v6 attendees];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            [v18 setCommentChanged:0];
            [v18 setStatusChanged:0];
            [v18 setProposedStartDateChanged:0];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v6 dismissAcceptedProposeNewTimeNotification];
    if ([v6 isOrWasPartOfRecurringSeries])
    {
      v19 = [(EKEventEditViewControllerModernImpl *)self presentationSourceViewController];
      [v4 bounds];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __83__EKEventEditViewControllerModernImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke;
      v22[3] = &unk_1E843FE10;
      v22[4] = self;
      v20 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v19 sourceView:v4 sourceRect:v6 forEvent:v22 withCompletionHandler:?];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v20;
    }

    else
    {
      [(EKEventEditViewControllerModernImpl *)self _performSave:0 animated:0];
    }
  }
}

void __83__EKEventEditViewControllerModernImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    if (a2 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = a2 == 1;
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 1112);
    *(v6 + 1112) = 0;

    v8 = *(a1 + 32);

    [v8 _performSave:v5 animated:0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1112);
    *(v3 + 1112) = 0;
  }
}

- (void)_rejectProposedTime
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = [v3 attendees];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 setCommentChanged:0];
          [v10 setStatusChanged:0];
          [v10 setProposedStartDateChanged:0];
          [v10 setProposedStartDateStatus:3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [(EKEventEditViewControllerModernImpl *)self event];
  if ([v11 isOrWasPartOfRecurringSeries])
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  [(EKEventEditViewControllerModernImpl *)self _performSave:v12 animated:0];
}

- (void)_cancelProposedTime
{
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  [v3 setProposedStartDate:0];

  [(EKEventEditViewControllerModernImpl *)self _performSave:0 animated:0];
}

- (id)_proposedDate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(EKEventEditViewControllerModernImpl *)self event];
  v4 = [v3 attendees];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 proposedStartDateStatus] == 1 || !objc_msgSend(v10, "proposedStartDateStatus"))
          {
            v11 = [(EKEventEditViewControllerModernImpl *)self event];
            v12 = [v10 proposedStartDateForEvent:v11];

            if (v12)
            {

              goto LABEL_15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)_deleteClicked:(id)a3
{
  v4 = a3;
  v5 = [(EKEventEditViewControllerModernImpl *)self event];
  v6 = [v5 status];

  v7 = [(UIResponder *)self EKUI_editor];
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_loadWeakRetained(&self->_detailsDelegate);
    v10 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    v11 = [v9 eventViewDelegateShouldHandlePresentationOfDeleteAlert:v10];
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__EKEventEditViewControllerModernImpl__deleteClicked___block_invoke;
  aBlock[3] = &unk_1E843FF28;
  v25 = v11;
  aBlock[4] = self;
  v12 = v7;
  v24 = v12;
  v26 = v6 == 3;
  v13 = _Block_copy(aBlock);
  if (v6 == 3)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  if (v11)
  {
    v15 = [EKUIRecurrenceAlertController deleteAlertWithOptions:v14 forEvent:self->_event stringForDeleteButton:0 withCompletionHandler:v13];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;

    if (self->_recurrenceAlertController)
    {
      v17 = objc_loadWeakRetained(&self->_detailsDelegate);
      v18 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
      v19 = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
      [v17 eventViewController:v18 requestsDisplayOfDeleteAlert:v19];
    }

    else
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    v20 = [(EKEventEditViewControllerModernImpl *)self presentationSourceViewController];
    [v4 bounds];
    v21 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v14 viewController:v20 sourceView:v4 sourceRect:self->_event forEvent:0 stringForDeleteButton:v13 withCompletionHandler:?];
    v22 = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v21;
  }
}

void __54__EKEventEditViewControllerModernImpl__deleteClicked___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v14 = *MEMORY[0x1E69932E8];
    v4 = [EKUIModernEventViewDelegateAlertDisplayer alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1224));
    v6 = [(EKUIModernEventViewDelegateAlertDisplayer *)v4 initWithDelegate:WeakRetained eventViewController:*(a1 + 32)];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EKEventEditViewControllerModernImpl__deleteClicked___block_invoke_2;
  v10[3] = &unk_1E843FF00;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = a2;
  v10[4] = v9;
  v13 = *(a1 + 49);
  v11 = v8;
  [v11 performWithOptions:v7 block:v10];
}

uint64_t __54__EKEventEditViewControllerModernImpl__deleteClicked___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == 2)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 2;
  }

  else if (v1 == 1)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      return result;
    }

    if (*(result + 56))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(result + 40);
    v4 = *(result + 32);
  }

  return [v4 _performDelete:v2 editor:v3];
}

- (void)_unsubscribeClicked:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__EKEventEditViewControllerModernImpl__unsubscribeClicked___block_invoke;
  aBlock[3] = &unk_1E843FE10;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = objc_loadWeakRetained(&self->_detailsDelegate);
  v8 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfDeleteAlert:v8];

  if (!v9)
  {
LABEL_5:
    v12 = [(EKEventEditViewControllerModernImpl *)self presentationSourceViewController];
    [v4 bounds];
    v15 = [EKUIRecurrenceAlertController presentUnsubscribeAlertWithOptions:4 viewController:v12 sourceView:v4 sourceRect:v5 withCompletionHandler:?];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;
    goto LABEL_6;
  }

  v10 = [EKUIRecurrenceAlertController unsubscribeAlertWithOptions:4 withCompletionHandler:v5];
  v11 = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v10;

  v12 = objc_loadWeakRetained(&self->_detailsDelegate);
  recurrenceAlertController = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
  v14 = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
  [v12 eventViewController:recurrenceAlertController requestsDisplayOfDeleteAlert:v14];

LABEL_6:
}

void __59__EKEventEditViewControllerModernImpl__unsubscribeClicked___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    v3 = [*(*(a1 + 32) + 1184) calendar];
    v4 = kEKUILogHandle;
    v5 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT);
    if (a2 == 5)
    {
      if (v5)
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details, and reporting it as junk", &v6, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:v3 reportAsJunk:1];
    }

    else
    {
      if (v5)
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details", &v6, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:v3];
    }
  }
}

- (void)_addToCalendarClicked:(id)a3
{
  if ([(EKEventEditViewControllerModernImpl *)self _isDisplayingSuggestion])
  {
    v4 = [(EKEvent *)self->_event suggestionInfo];
    [v4 setChangedFields:0];

    [(EKEventEditViewControllerModernImpl *)self attemptDisplayReviewPrompt];
    v5 = [(EKEvent *)self->_event eventStore];
    [v5 acceptSuggestedEvent:self->_event];

    v6 = MEMORY[0x1E69930D8];
    v7 = [(EKEvent *)self->_event suggestionInfo];
    v8 = [v7 uniqueIdentifier];
    [v6 logEventConfirmedDetailsWithUniqueKey:v8];

    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    v9 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:v9 didCompleteWithAction:0];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_detailsDelegate);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_detailsDelegate);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    [WeakRetained performSelector:sel_eventViewControllerDidRequestAddToCalendar_ withObject:self];
  }
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_detailsDelegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)_deleteSuggestionTapped:(id)a3
{
  if ([(EKEventEditViewControllerModernImpl *)self _isDisplayingSuggestion])
  {
    v4 = [(EKEvent *)self->_event suggestionInfo];
    [v4 setChangedFields:0];

    v5 = MEMORY[0x1E69930D8];
    v6 = [(EKEvent *)self->_event suggestionInfo];
    v7 = [v6 uniqueIdentifier];
    [v5 logEventRejectedDetailsWithUniqueKey:v7];

    v8 = [(EKEvent *)self->_event eventStore];
    [v8 deleteSuggestedEvent:self->_event];

    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    v9 = [(EKEventEditViewControllerModernImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:v9 didCompleteWithAction:2];
  }
}

- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v8 = v6;
    if (([(EKEvent *)self->_event responseMustApplyToAll]& 1) != 0)
    {
      v7 = 4;
    }

    else
    {
      if ([(EKEvent *)self->_event isOrWasPartOfRecurringSeries]&& ([(EKEvent *)self->_event isSignificantlyDetached]& 1) == 0)
      {
        self->_pendingStatus = a3;
        [(EKEventEditViewControllerModernImpl *)self _presentDetachSheetFromView:v8];
        goto LABEL_8;
      }

      v7 = 0;
    }

    [(EKEventEditViewControllerModernImpl *)self _saveStatus:a3 span:v7];
LABEL_8:
    v6 = v8;
  }
}

- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4
{
  [(EKEvent *)self->_event setParticipationStatus:a3];
  [(EKEvent *)self->_event setInvitationStatus:0];

  [(EKEventEditViewControllerModernImpl *)self _performSave:a4 animated:1];
}

- (id)statusButtons
{
  v2 = [(EKEventEditViewControllerModernImpl *)self _actionsMask];
  v3 = objc_opt_class();

  return [v3 _orderedActionsForMask:v2];
}

- (int64_t)_actionsMask
{
  if ([(EKEventEditViewControllerModernImpl *)self _shouldDisplayDelegateOrOutOfDateMessage])
  {
    return 0;
  }

  v4 = [(EKEventEditViewControllerModernImpl *)self event];
  v5 = [v4 status];

  if ([(EKEventEditViewControllerModernImpl *)self _isDisplayingInvitation]&& v5 != 3)
  {
    v3 = 7;
    goto LABEL_14;
  }

  if (![(EKEventEditViewControllerModernImpl *)self isICSPreview])
  {
    v6 = ![(EKEventEditViewControllerModernImpl *)self _isDisplayingSuggestion];
    v7 = 136;
    goto LABEL_11;
  }

  if (![(EKEventEditViewControllerModernImpl *)self showsAddToCalendarForICSPreview])
  {
    v6 = ![(EKEventEditViewControllerModernImpl *)self showsUpdateCalendarForICSPreview];
    v7 = 2048;
LABEL_11:
    if (v6)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }

    goto LABEL_14;
  }

  v3 = 8;
LABEL_14:
  if ([(EKEventEditViewControllerModernImpl *)self _isDisplayingDeletableEvent]&& (![(EKEventEditViewControllerModernImpl *)self isICSPreview]|| [(EKEventEditViewControllerModernImpl *)self showsDeleteForICSPreview]))
  {
    if ([(EKEventEditViewControllerModernImpl *)self _reminderMode])
    {
      v3 |= 0x80000uLL;
    }

    else if (v5 == 3)
    {
      v3 |= 0x100000uLL;
    }

    else if (![(EKEventEditViewControllerModernImpl *)self _isDisplayingInvitation])
    {
      v3 |= 0x10uLL;
    }
  }

  v8 = [(EKEventEditViewControllerModernImpl *)self event];
  v9 = [v8 calendar];

  if ([v9 isSubscribed] && (objc_msgSend(v9, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp"))
  {
    v3 |= 0x40000uLL;
  }

  return v3;
}

+ (id)_orderedActionsForMask:(int64_t)a3
{
  v4 = objc_opt_new();
  for (i = 0; i != 15; ++i)
  {
    if ((_orderedActionsForMask__actionOrder[i] & a3) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  return v4;
}

- (BOOL)_isDisplayingSuggestion
{
  v2 = [(EKEvent *)self->_event calendar];
  v3 = [v2 type] == 5;

  return v3;
}

- (BOOL)_isDisplayingDeletableEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
  if (![WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = objc_loadWeakRetained(&self->_detailsDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_detailsDelegate);
    v6 = [WeakRetained eventViewControllerShouldHideDeleteButton];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [(EKEvent *)self->_event calendar];
  if ([v7 allowsContentModifications])
  {
    v8 = [(EKEvent *)self->_event isPrivateEventSharedToMe]| v6;

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
  }

  if ([(EKEvent *)self->_event status]!= EKEventStatusCanceled)
  {
    return 0;
  }

  v10 = [(EKEvent *)self->_event calendar];
  v11 = [v10 source];
  if ([v11 isDelegate])
  {
    v12 = [(EKEvent *)self->_event calendar];
    v13 = [v12 source];
    v9 = [v13 isWritable];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isDisplayingInvitation
{
  v3 = [(EKEventEditViewControllerModernImpl *)self allowsInviteResponses];
  if (v3)
  {
    event = self->_event;

    LOBYTE(v3) = [(EKEvent *)event allowsParticipationStatusModifications];
  }

  return v3;
}

- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage
{
  if ([(EKEventEditViewControllerModernImpl *)self showsOutOfDateMessage]|| [(EKEventEditViewControllerModernImpl *)self showsDelegatorMessage])
  {
    return 1;
  }

  return [(EKEventEditViewControllerModernImpl *)self showsDelegateMessage];
}

- (BOOL)_backingEventAllowsEditing
{
  if ((![(EKEvent *)self->_event isReminderIntegrationEvent]|| [(EKEvent *)self->_event CUIK_reminderShouldBeEditable]) && [(EKEvent *)self->_event isEditable])
  {
    v3 = [(EKEvent *)self->_event eventStore];
    if (v3)
    {
      v4 = [(EKEvent *)self->_event calendar];
      v5 = [v4 isSuggestedEventCalendar] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setShowsDelegatorMessage:(BOOL)a3
{
  if (self->_showsDelegatorMessage != a3)
  {
    self->_showsDelegatorMessage = a3;
    [(EKEventEditViewControllerModernImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsDelegateMessage:(BOOL)a3
{
  if (self->_showsDelegateMessage != a3)
  {
    self->_showsDelegateMessage = a3;
    [(EKEventEditViewControllerModernImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsOutOfDateMessage:(BOOL)a3
{
  if (self->_showsOutOfDateMessage != a3)
  {
    self->_showsOutOfDateMessage = a3;
    [(EKEventEditViewControllerModernImpl *)self _updateStatusButtonsActions];
  }
}

- (EKEventEditViewDelegate)editViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

  return WeakRetained;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

void __101__EKEventEditViewControllerModernImpl__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"EKEventEditViewControllerModernImpl.m" lineNumber:671 description:{@"Trying to detach something that's not an event: %@", *a2}];
}

@end