@interface EKCalendarItemEditor
+ (id)_addLocalizedString;
+ (id)_doneLocalizedString;
- (BOOL)_canEnableDoneButton;
- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated;
- (BOOL)attachmentsModifiedOnRecurrence;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)hasAttachmentChanges;
- (BOOL)hasUnsavedChanges;
- (BOOL)saveCalendarItemWithSpan:(int64_t)span error:(id *)error;
- (BOOL)saveWithSpan:(int64_t)span animated:(BOOL)animated;
- (CGSize)preferredContentSize;
- (EKCalendarItemEditor)init;
- (EKCalendarItemEditorDelegate)editorDelegate;
- (_UIAccessDeniedView)accessDeniedView;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_editItemAtIndexPath:(id)path firstRowIndex:(int64_t *)index;
- (id)_editItems;
- (id)_nameForDeleteButton;
- (id)_orderedEditItems;
- (id)_viewForSheet;
- (id)_viewHierarchy;
- (id)attachmentsModifiedEvent;
- (id)cellWithReuseIdentifier:(id)identifier forEditItem:(id)item;
- (id)defaultAlertTitle;
- (id)navigationItem;
- (id)notificationNamesForLocaleChange;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)title;
- (int64_t)firstTableRowForEditItem:(id)item;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)rowNumberForEditItem:(id)item;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)entityType;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)tableSectionForEditItem:(id)item;
- (void)_completeWithAction:(int64_t)action animated:(BOOL)animated notify:(BOOL)notify;
- (void)_configureVisibleItems;
- (void)_copyEventForPossibleRevert;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_keyboardWillHide;
- (void)_localeChanged;
- (void)_performDelete:(int64_t)delete;
- (void)_pinKeyboard:(BOOL)keyboard;
- (void)_presentAttachmentRecurrenceSheetForEvent:(id)event withContinueBlock:(id)block;
- (void)_presentDetachSheetForEvent:(id)event saveAttachments:(BOOL)attachments withContinueBlock:(id)block;
- (void)_reallyHandleCellHeightChange;
- (void)_refreshDataAndDismissViewControllerIfDeleted;
- (void)_revertEvent;
- (void)_setCalendarItemOnEditItems;
- (void)_setWantsToEnableDoneButton:(BOOL)button;
- (void)_setupFirstResponder;
- (void)_tableViewDidUpdateHeights;
- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status;
- (void)_updateDoneButtonState;
- (void)applicationDidResume;
- (void)attemptDisplayReviewPrompt;
- (void)cancelEditingWithDelegateNotification:(BOOL)notification forceCancel:(BOOL)cancel;
- (void)dealloc;
- (void)deleteClicked:(id)clicked;
- (void)done:(id)done withContinueBlock:(id)block;
- (void)editItem:(id)item didSaveFromDetailViewController:(BOOL)controller;
- (void)editItem:(id)item performActionsOnCellAtSubitem:(unint64_t)subitem actions:(id)actions;
- (void)editItem:(id)item wantsDoneButtonDisabled:(BOOL)disabled;
- (void)editItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions rowReloads:(id)reloads;
- (void)editItem:(id)item wantsRowReload:(id)reload;
- (void)editItem:(id)item wantsRowsScrolledToVisible:(id)visible;
- (void)editItem:(id)item wantsViewControllerPresented:(id)presented;
- (void)editItem:(id)item wantsViewControllerPushed:(id)pushed;
- (void)editItemDidEndEditing:(id)editing;
- (void)editItemDidStartEditing:(id)editing;
- (void)editItemRequiresHeightChange:(id)change;
- (void)editItemRequiresPopoverSizeUpdate:(id)update;
- (void)editItemTextChanged:(id)changed;
- (void)editItemWantsFirstResponderResigned:(id)resigned;
- (void)editItemWantsFooterTitlesToReload:(id)reload;
- (void)handleSaveKeyCommand;
- (void)loadView;
- (void)prepareEditItems;
- (void)reloadUI;
- (void)resetBackgroundColor;
- (void)resignCurrentEditItemFirstResponder;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCalendarItem:(id)item;
- (void)setDefaultCalendar:(id)calendar;
- (void)setShouldOverrideAuthorizationStatus:(BOOL)status withRemoteUIStatus:(int64_t)iStatus;
- (void)setStore:(id)store;
- (void)setTitle:(id)title;
- (void)setupForEvent;
- (void)storeChanged:(id)changed;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateNavButtonsWithSpacing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKCalendarItemEditor

- (EKCalendarItemEditor)init
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = EKCalendarItemEditor;
  v2 = [(EKCalendarItemEditor *)&v13 initWithStyle:2];
  v3 = v2;
  if (v2)
  {
    preferredTitle = [(EKCalendarItemEditor *)v2 preferredTitle];
    [(EKCalendarItemEditor *)v3 setTitle:preferredTitle];

    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    editItemsDisablingDoneButton = v3->_editItemsDisablingDoneButton;
    v3->_editItemsDisablingDoneButton = v5;

    v3->_needsFirstResponderSet = 1;
    objc_initWeak(&location, v3);
    v14[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__EKCalendarItemEditor_init__block_invoke;
    v10[3] = &unk_1E843EBE8;
    objc_copyWeak(&v11, &location);
    v8 = [(EKCalendarItemEditor *)v3 registerForTraitChanges:v7 withHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__EKCalendarItemEditor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)dealloc
{
  if (self->_editItems)
  {
    _editItems = [(EKCalendarItemEditor *)self _editItems];
    [_editItems makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  }

  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v5 dealloc];
}

- (void)setStore:(id)store
{
  storeCopy = store;
  store = self->_store;
  v9 = storeCopy;
  if (store != storeCopy)
  {
    if (store && [(EKCalendarItemEditor *)self isViewLoaded])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E6966928] object:self->_store];
    }

    objc_storeStrong(&self->_store, store);
    if (self->_store && [(EKCalendarItemEditor *)self isViewLoaded])
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_storeChanged_ name:*MEMORY[0x1E6966928] object:self->_store];
    }
  }
}

- (void)setCalendarItem:(id)item
{
  itemCopy = item;
  if (self->_calendarItem != itemCopy)
  {
    objc_storeStrong(&self->_calendarItem, item);
    if ([(EKCalendarItem *)self->_calendarItem isNew])
    {
      changeSet = [(EKCalendarItem *)itemCopy changeSet];
      v6 = [changeSet copy];
      originalChangeSet = self->_originalChangeSet;
      self->_originalChangeSet = v6;
    }

    if ([(EKCalendarItemEditor *)self isViewLoaded])
    {
      [(EKCalendarItemEditor *)self setupForEvent];
    }
  }
}

- (void)setShouldOverrideAuthorizationStatus:(BOOL)status withRemoteUIStatus:(int64_t)iStatus
{
  self->_shouldOverrideAuthorizationStatus = status;
  [(EKCalendarItemEditor *)self _updateAccessDeniedViewWithNewStatus:iStatus];
  self->_lastAuthorizationStatus = iStatus;
}

- (void)setDefaultCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarItem = [(EKCalendarItemEditor *)self calendarItem];
  [calendarItem setCalendar:calendarCopy];
}

- (unint64_t)tableSectionForEditItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_orderedEditItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v10) containsObject:{itemCopy, v13}])
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (int64_t)firstTableRowForEditItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_orderedEditItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 containsObject:itemCopy])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
LABEL_9:
            v16 = 0;
            while (1)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v19 + 1) + 8 * v16);
              if (v17 == itemCopy)
              {
                break;
              }

              v8 += [v17 numberOfSubitems];
              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v14)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)loadView
{
  v3 = MEMORY[0x1E695F058];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 24);
  _popoverController = [(EKCalendarItemEditor *)self _popoverController];

  if (_popoverController)
  {
    v8 = EKUIContainedControllerIdealWidth();
  }

  else
  {
    v8 = *(v3 + 16);
  }

  v11 = [[EKCalendarItemEditorTableView alloc] initWithFrame:2 style:v4, v5, v8, v6];
  [(EKCalendarItemEditorTableView *)v11 setAutoresizingMask:18];
  [(EKCalendarItemEditorTableView *)v11 setDelegate:self];
  [(EKCalendarItemEditorTableView *)v11 setDataSource:self];
  [(EKCalendarItemEditorTableView *)v11 setKeyboardDismissMode:1];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v9 lineHeight];
  [(EKCalendarItemEditorTableView *)v11 setEstimatedRowHeight:?];

  if (EKUIUnscaledCatalyst())
  {
    [(EKCalendarItemEditorTableView *)v11 setSeparatorStyle:1];
    [(EKCalendarItemEditorTableView *)v11 setRowHeight:EKUIUnscaledCatalystTableRowHeightDefault()];
    v10 = *MEMORY[0x1E69DDC70];
    [(EKCalendarItemEditorTableView *)v11 setMinimumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    [(EKCalendarItemEditorTableView *)v11 setMaximumContentSizeCategory:v10];
  }

  [(EKCalendarItemEditor *)self setView:v11];
  [(EKCalendarItemEditor *)self resetBackgroundColor];
  [(EKCalendarItemEditor *)self setResponderToRestoreOnAppearence:0];
}

- (void)resetBackgroundColor
{
  if ([(UIViewController *)self isPresentedInsidePopover]&& ([(EKCalendarItemEditor *)self popoverPresentationController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    tableView = [(EKCalendarItemEditor *)self tableView];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    tableView = [(EKCalendarItemEditor *)self tableView];
    clearColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  v5 = clearColor;
  [tableView setBackgroundColor:clearColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v19 viewWillAppear:appear];
  visibleSectionToRestoreOnAppearence = [(EKCalendarItemEditor *)self visibleSectionToRestoreOnAppearence];
  if (visibleSectionToRestoreOnAppearence)
  {
    visibleSectionToRestoreOnAppearence2 = [(EKCalendarItemEditor *)self visibleSectionToRestoreOnAppearence];
    tableView = [(EKCalendarItemEditor *)self tableView];
    v7 = [tableView numberOfSections] - 1;

    if (visibleSectionToRestoreOnAppearence2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = visibleSectionToRestoreOnAppearence2;
    }

    v20[0] = v8;
    v20[1] = 0;
    tableView2 = [(EKCalendarItemEditor *)self tableView];
    v10 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v20 length:2];
    [tableView2 scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:0];

    visibleSectionToRestoreOnAppearence = [(EKCalendarItemEditor *)self setVisibleSectionToRestoreOnAppearence:0];
  }

  if ((MEMORY[0x1D38B98D0](visibleSectionToRestoreOnAppearence) & 1) == 0)
  {
    calendarItem = [(EKCalendarItemEditor *)self calendarItem];
    isNew = [calendarItem isNew];
    v13 = objc_opt_class();
    if (isNew)
    {
      [v13 _addLocalizedString];
    }

    else
    {
      [v13 _doneLocalizedString];
    }
    v14 = ;
    [(UIBarButtonItem *)self->_doneButton setTitle:v14];
  }

  [(EKCalendarItemEditor *)self _updateDoneButtonState];
  if (!self->_accessDeniedView)
  {
    transitionCoordinator = [(EKCalendarItemEditor *)self transitionCoordinator];
    v16 = transitionCoordinator;
    if (transitionCoordinator)
    {
      if ([transitionCoordinator isAnimated])
      {
        transitionCoordinator2 = [(EKCalendarItemEditor *)self transitionCoordinator];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __39__EKCalendarItemEditor_viewWillAppear___block_invoke;
        v18[3] = &unk_1E84425B8;
        v18[4] = self;
        [transitionCoordinator2 animateAlongsideTransition:v18 completion:0];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v4 viewDidAppear:appear];
  if (!self->_accessDeniedView)
  {
    [(EKCalendarItemEditor *)self _setupFirstResponder];
  }

  self->_hasAppeared = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_hasAppeared = 0;
  if (!disappear)
  {
    if ([(EKCalendarItemEditor *)self _isPinningInputViews])
    {
      if (UIKeyboardAutomaticIsOnScreen())
      {
        view = [(EKCalendarItemEditor *)self view];
        window = [view window];
        isRotating = [window isRotating];

        if ((isRotating & 1) == 0)
        {
          [(EKCalendarItemEditor *)self _pinKeyboard:0];
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v8 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  v6 = [_editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_editItems);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isInline])
        {
          [v10 endInlineEditing];
        }
      }

      v7 = [_editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v11 viewDidDisappear:disappearCopy];
}

- (void)_setupFirstResponder
{
  if (self->_needsFirstResponderSet)
  {
    if (self->_setInitialKeyboardFocus)
    {
      [(EKCalendarItemEditor *)self focus:1 select:0];
      self->_setInitialKeyboardFocus = 0;
    }

    else
    {
      responderToRestoreOnAppearence = [(EKCalendarItemEditor *)self responderToRestoreOnAppearence];

      if (responderToRestoreOnAppearence)
      {
        responderToRestoreOnAppearence2 = [(EKCalendarItemEditor *)self responderToRestoreOnAppearence];
        [responderToRestoreOnAppearence2 becomeFirstResponder];
      }
    }

    self->_needsFirstResponderSet = 0;
  }
}

- (void)updateNavButtonsWithSpacing
{
  selfCopy = self;
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_cancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    cancelButton = selfCopy->_cancelButton;
    selfCopy->_cancelButton = v3;

    self = [(UIBarButtonItem *)selfCopy->_cancelButton setAccessibilityIdentifier:@"cancel-button"];
  }

  if (!selfCopy->_doneButton)
  {
    if (MEMORY[0x1D38B98D0](self, a2))
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:selfCopy action:sel_done_];
      doneButton = selfCopy->_doneButton;
      selfCopy->_doneButton = v5;
    }

    else
    {
      isNew = [(EKCalendarItem *)selfCopy->_calendarItem isNew];
      v8 = objc_opt_class();
      if (isNew)
      {
        [v8 _addLocalizedString];
      }

      else
      {
        [v8 _doneLocalizedString];
      }
      v9 = ;
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v9 style:2 target:selfCopy action:sel_done_];
      v11 = selfCopy->_doneButton;
      selfCopy->_doneButton = v10;
    }

    if ([(EKCalendarItem *)selfCopy->_calendarItem isNew])
    {
      v12 = @"add-button";
    }

    else
    {
      v12 = @"done-button";
    }

    [(UIBarButtonItem *)selfCopy->_doneButton setAccessibilityIdentifier:v12];
    [(UIBarButtonItem *)selfCopy->_doneButton setEnabled:0];
  }

  v18[0] = selfCopy->_cancelButton;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  navigationItem = [(EKCalendarItemEditor *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItems:v13];

  v17 = selfCopy->_doneButton;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  navigationItem2 = [(EKCalendarItemEditor *)selfCopy navigationItem];
  [navigationItem2 setRightBarButtonItems:v15];
}

- (void)viewDidLoad
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v14 viewDidLoad];
  [(EKCalendarItemEditor *)self updateNavButtonsWithSpacing];
  if (self->_calendarItem)
  {
    [(EKCalendarItemEditor *)self setupForEvent];
  }

  if (self->_shouldOverrideAuthorizationStatus)
  {
    lastAuthorizationStatus = self->_lastAuthorizationStatus;
  }

  else
  {
    lastAuthorizationStatus = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:{-[EKCalendarItemEditor entityType](self, "entityType")}];
    self->_lastAuthorizationStatus = lastAuthorizationStatus;
  }

  if (lastAuthorizationStatus <= 2)
  {
    [(EKCalendarItemEditor *)self _updateAccessDeniedViewWithNewStatus:?];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  notificationNamesForLocaleChange = [(EKCalendarItemEditor *)self notificationNamesForLocaleChange];
  v6 = [notificationNamesForLocaleChange countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(notificationNamesForLocaleChange);
        }

        [defaultCenter addObserver:self selector:sel__localeChanged name:*(*(&v10 + 1) + 8 * i) object:0];
      }

      v7 = [notificationNamesForLocaleChange countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [defaultCenter addObserver:self selector:sel__keyboardWillHide name:*MEMORY[0x1E69DE078] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  if (self->_store)
  {
    [defaultCenter addObserver:self selector:sel_storeChanged_ name:*MEMORY[0x1E6966928] object:?];
  }
}

- (void)_localeChanged
{
  tableView = [(EKCalendarItemEditor *)self tableView];
  [tableView reloadData];
}

- (void)_keyboardWillHide
{
  view = [(EKCalendarItemEditor *)self view];
  window = [view window];
  isRotating = [window isRotating];

  if ((isRotating & 1) == 0)
  {

    [(EKCalendarItemEditor *)self setResponderToRestoreOnAppearence:0];
  }
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo valueForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(EKCalendarItemEditor *)self view];
  window = [view window];
  if ([window isRotating])
  {
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    v16 = CGRectIntersectsRect(v19, v20);

    if (!v16)
    {

      [(EKCalendarItemEditor *)self setResponderToRestoreOnAppearence:0];
    }
  }
}

- (void)storeChanged:(id)changed
{
  if (!self->_shouldOverrideAuthorizationStatus)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__EKCalendarItemEditor_storeChanged___block_invoke;
    block[3] = &unk_1E843EC60;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void *__37__EKCalendarItemEditor_storeChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:{objc_msgSend(*(a1 + 32), "entityType")}];
  [*(a1 + 32) _updateAccessDeniedViewWithNewStatus:v2];
  result = *(a1 + 32);
  if ((v2 - 3) <= 1 && (result[134] - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [result _refreshDataAndDismissViewControllerIfDeleted];
    result = *(a1 + 32);
  }

  result[134] = v2;
  return result;
}

- (void)applicationDidResume
{
  v4.receiver = self;
  v4.super_class = EKCalendarItemEditor;
  [(EKCalendarItemEditor *)&v4 applicationDidResume];
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  [_editItems makeObjectsPerformSelector:sel_applicationDidResume];
}

- (unint64_t)supportedInterfaceOrientations
{
  eKUI_viewHierarchy = [(UIViewController *)self EKUI_viewHierarchy];
  EKUIPushFallbackSizingContextWithViewHierarchy(eKUI_viewHierarchy);
  view = [(EKCalendarItemEditor *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  EKUIPopFallbackSizingContextWithViewHierarchy(eKUI_viewHierarchy);
  if (IsRegularInViewHierarchy)
  {
    v6 = 30;
  }

  else
  {
    v6 = 26;
  }

  return v6;
}

- (void)cancelEditingWithDelegateNotification:(BOOL)notification forceCancel:(BOOL)cancel
{
  notificationCopy = notification;
  if (!cancel)
  {
    WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_loadWeakRetained(&self->_editorDelegate);
      v8 = [v7 editor:self shouldCompleteWithAction:0];

      if (!v8)
      {
        return;
      }
    }

    else
    {
    }
  }

  _isPinningInputViews = [(EKCalendarItemEditor *)self _isPinningInputViews];
  firstResponder = [(EKCalendarItemEditor *)self firstResponder];
  [firstResponder resignFirstResponder];

  [(EKCalendarItemEditor *)self _revertEvent];
  [(EKCalendarItemEditor *)self _completeWithAction:0 animated:1 notify:notificationCopy];
  if (_isPinningInputViews && UIKeyboardAutomaticIsOnScreen())
  {

    UIKeyboardOrderOutAutomatic();
  }
}

- (void)done:(id)done withContinueBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_loadWeakRetained(&self->_editorDelegate);
    v8 = [v7 editor:self shouldCompleteWithAction:1];

    if (!v8)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  recurrenceAlertController = self->_recurrenceAlertController;
  if (recurrenceAlertController)
  {
    if ([(EKUIRecurrenceAlertController *)recurrenceAlertController isCurrentlyShowingAlert])
    {
      goto LABEL_35;
    }

    recurrenceAlertController = self->_recurrenceAlertController;
  }

  [(EKUIRecurrenceAlertController *)recurrenceAlertController cancelAnimated:0];
  v10 = self->_recurrenceAlertController;
  self->_recurrenceAlertController = 0;

  _isPinningInputViews = [(EKCalendarItemEditor *)self _isPinningInputViews];
  firstResponder = [(EKCalendarItemEditor *)self firstResponder];
  [firstResponder resignFirstResponder];

  currentEditItem = self->_currentEditItem;
  if (!currentEditItem || [(EKCalendarItemEditItem *)currentEditItem saveAndDismissWithForce:0])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_currentItems;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ([v19 isInline] && objc_msgSend(v19, "conformsToProtocol:", &unk_1F4F3DBE0))
          {
            v20 = v19;
            if ([v20 isSaveable])
            {
              [v20 saveAndDismissWithForce:0];
            }
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    if (![(EKCalendarItemEditor *)self hasUnsavedChanges]&& ![(EKCalendarItem *)self->_calendarItem isNew])
    {
      [(EKCalendarItemEditor *)self completeWithAction:0 animated:1];
      if (!_isPinningInputViews)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__EKCalendarItemEditor_done_withContinueBlock___block_invoke;
    aBlock[3] = &unk_1E843EDA0;
    aBlock[4] = self;
    v29 = blockCopy;
    v21 = _Block_copy(aBlock);
    isDetached = [(EKCalendarItem *)self->_calendarItem isDetached];
    hasAttachmentChanges = [(EKCalendarItemEditor *)self hasAttachmentChanges];
    if ([(EKCalendarItemEditor *)self hasModifiedAttendeesFromSuggestion])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __47__EKCalendarItemEditor_done_withContinueBlock___block_invoke_2;
      v26[3] = &unk_1E843FED8;
      v26[4] = self;
      v27 = v21;
      v24 = [EKUISendInviteAlertController presentInviteAlertWithOptions:16 sourceView:0 sourceRect:0 sourceItem:self viewController:v26 withCompletionHandler:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

      goto LABEL_30;
    }

    if (([(EKCalendarItem *)self->_calendarItem isNew]& 1) != 0 || ![(EKCalendarItem *)self->_calendarItem isOrWasPartOfRecurringSeries]|| ([(EKCalendarItem *)self->_calendarItem isNewRecurringSeries]& 1) != 0)
    {
      goto LABEL_29;
    }

    if ((isDetached & hasAttachmentChanges) != 1)
    {
      if ((([(EKCalendarItem *)self->_calendarItem requiresDetach]& 1) != 0 || [(EKCalendarItem *)self->_calendarItem isOrWasPartOfRecurringSeries]) && [(EKCalendarItem *)self->_calendarItem allowsSpansOtherThanThisEvent])
      {
        [(EKCalendarItemEditor *)self _presentDetachSheetForEvent:self->_calendarItem saveAttachments:[(EKCalendarItemEditor *)self attachmentsModifiedOnRecurrence] withContinueBlock:v21];
        goto LABEL_30;
      }

      if (![(EKCalendarItemEditor *)self attachmentsModifiedOnRecurrence])
      {
LABEL_29:
        [(EKCalendarItemEditor *)self _performSave:0 animated:1];
        v21[2](v21);
        goto LABEL_30;
      }
    }

    attachmentsModifiedEvent = [(EKCalendarItemEditor *)self attachmentsModifiedEvent];
    [(EKCalendarItemEditor *)self _presentAttachmentRecurrenceSheetForEvent:attachmentsModifiedEvent withContinueBlock:v21];

LABEL_30:
    if (!_isPinningInputViews)
    {
      goto LABEL_35;
    }

LABEL_33:
    if (UIKeyboardAutomaticIsOnScreen())
    {
      UIKeyboardOrderOutAutomatic();
    }
  }

LABEL_35:
}

uint64_t __47__EKCalendarItemEditor_done_withContinueBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 attemptDisplayReviewPrompt];
}

uint64_t __47__EKCalendarItemEditor_done_withContinueBlock___block_invoke_2(uint64_t result, int a2)
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

- (BOOL)hasUnsavedChanges
{
  if ([(EKCalendarItem *)self->_calendarItem isNew])
  {
    v3 = objc_alloc(MEMORY[0x1E69669C8]);
    changeSet = [(EKCalendarItem *)self->_calendarItem changeSet];
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"uniqueID", 0}];
    v6 = [v3 initWithChangeSet:changeSet changesToSkip:v5];

    title = [(EKCalendarItem *)self->_calendarItem title];
    if ([title length])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      location = [(EKCalendarItem *)self->_calendarItem location];
      if ([location length])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v8 = [v6 isEffectivelyEqual:self->_originalChangeSet] ^ 1;
      }
    }

    return v8;
  }

  else
  {
    calendarItem = self->_calendarItem;

    return [(EKCalendarItem *)calendarItem hasUnsavedChanges];
  }
}

- (void)resignCurrentEditItemFirstResponder
{
  selectedResponder = [(EKCalendarItemEditItem *)self->_currentEditItem selectedResponder];
  [selectedResponder resignFirstResponder];
}

- (BOOL)saveWithSpan:(int64_t)span animated:(BOOL)animated
{
  animatedCopy = animated;
  currentEditItem = self->_currentEditItem;
  if (currentEditItem)
  {
    [(EKCalendarItemEditItem *)currentEditItem saveAndDismissWithForce:1];
  }

  return [(EKCalendarItemEditor *)self _performSave:span animated:animatedCopy];
}

- (void)_completeWithAction:(int64_t)action animated:(BOOL)animated notify:(BOOL)notify
{
  notifyCopy = notify;
  animatedCopy = animated;
  [(EKCalendarItemEditor *)self _pinKeyboard:0];
  if (notifyCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_editorDelegate);
      [v11 editor:self didCompleteWithAction:action];
    }
  }

  _editItems = [(EKCalendarItemEditor *)self _editItems];
  [_editItems makeObjectsPerformSelector:sel_setDelegate_ withObject:0];

  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:animatedCopy];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = 0;
}

- (void)_configureVisibleItems
{
  v19 = *MEMORY[0x1E69E9840];
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = _editItems;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([(EKCalendarItemEditor *)self shouldDisplayEditItem:v10, v14])
        {
          calendar = [(EKCalendarItem *)self->_calendarItem calendar];
          v12 = [v10 configureForCalendarConstraints:calendar];

          if (v12)
          {
            [(NSArray *)v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  currentItems = self->_currentItems;
  self->_currentItems = v4;
}

- (void)_setCalendarItemOnEditItems
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  v4 = [_editItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_editItems);
        }

        [*(*(&v8 + 1) + 8 * v7++) setCalendarItem:self->_calendarItem store:self->_store];
      }

      while (v5 != v7);
      v5 = [_editItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)prepareEditItems
{
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  [_editItems makeObjectsPerformSelector:sel_setDelegate_ withObject:self];

  [(EKCalendarItemEditor *)self _setCalendarItemOnEditItems];
  [(EKCalendarItemEditor *)self _configureVisibleItems];
  tableView = [(EKCalendarItemEditor *)self tableView];
  [tableView reloadData];
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_editorDelegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)reloadUI
{
  if ([(EKCalendarItemEditor *)self isViewLoaded])
  {
    [(EKCalendarItemEditor *)self setupForEvent];
  }

  [(EKCalendarItemEditor *)self _updateDoneButtonState];
}

- (void)setupForEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_editorDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_editorDelegate);
      [v7 editor:self prepareCalendarItemForEdit:self->_calendarItem];
    }
  }

  [(EKCalendarItemEditor *)self prepareEditItems];
  [(EKCalendarItem *)self->_calendarItem isNew];
  v8 = objc_alloc(MEMORY[0x1E69DD250]);
  tableView = [(EKCalendarItemEditor *)self tableView];
  [tableView bounds];
  v10 = [v8 initWithFrame:{0.0, 0.0}];
  tableView2 = [(EKCalendarItemEditor *)self tableView];
  [tableView2 setTableFooterView:v10];

  [(EKCalendarItemEditor *)self _copyEventForPossibleRevert];
  if ([(EKCalendarItem *)self->_calendarItem isNew])
  {
    title = [(EKCalendarItem *)self->_calendarItem title];
    v13 = [title length];

    if (!v13 && !self->_hasAppeared)
    {
      self->_setInitialKeyboardFocus = 1;
    }
  }
}

- (void)_refreshDataAndDismissViewControllerIfDeleted
{
  if (self->_calendarItem)
  {
    isViewLoaded = [(EKCalendarItemEditor *)self isViewLoaded];
    if (([(EKCalendarItem *)self->_calendarItem isNew]& 1) != 0 || ([(EKCalendarItem *)self->_calendarItem refreshIfRefreshableAndNotify:1]& 1) != 0)
    {
      if (isViewLoaded && [(EKCalendarItemEditor *)self isViewLoaded])
      {

        [(EKCalendarItemEditor *)self setupForEvent];
      }
    }

    else
    {

      [(EKCalendarItemEditor *)self cancelEditingWithDelegateNotification:1 forceCancel:1];
    }
  }
}

- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status
{
  if ([(EKCalendarItemEditor *)self isViewLoaded])
  {
    lastAuthorizationStatus = status;
    if (self->_shouldOverrideAuthorizationStatus)
    {
      lastAuthorizationStatus = self->_lastAuthorizationStatus;
    }

    v6 = lastAuthorizationStatus - 3;
    accessDeniedView = self->_accessDeniedView;
    if ((lastAuthorizationStatus - 3) > 1)
    {
      if (accessDeniedView)
      {
        return;
      }

      firstResponder = [(EKCalendarItemEditor *)self firstResponder];
      [firstResponder resignFirstResponder];

      view = [(EKCalendarItemEditor *)self view];
      accessDeniedView = [(EKCalendarItemEditor *)self accessDeniedView];
      [view addSubview:accessDeniedView];

      view2 = [(EKCalendarItemEditor *)self view];
      accessDeniedView2 = [(EKCalendarItemEditor *)self accessDeniedView];
      [view2 bringSubviewToFront:accessDeniedView2];

      if (status == 1)
      {
        accessDeniedView3 = [(EKCalendarItemEditor *)self accessDeniedView];
        [accessDeniedView3 setMessage:@" "];
      }

      [(UIBarButtonItem *)self->_doneButton setEnabled:0];
      navigationController = [(EKCalendarItemEditor *)self navigationController];
      v16 = [navigationController popToRootViewControllerAnimated:1];
    }

    else
    {
      if (!accessDeniedView)
      {
        return;
      }

      [(_UIAccessDeniedView *)accessDeniedView removeFromSuperview];
      v8 = self->_accessDeniedView;
      self->_accessDeniedView = 0;

      [(UIBarButtonItem *)self->_doneButton setEnabled:[(EKCalendarItemEditor *)self _canEnableDoneButton]];
    }

    contentScrollView = [(EKCalendarItemEditor *)self contentScrollView];
    [contentScrollView setScrollEnabled:v6 < 2];
  }
}

- (CGSize)preferredContentSize
{
  tableView = [(EKCalendarItemEditor *)self tableView];
  [tableView sizeThatFits:{2147483650.0, 2147483650.0}];
  v5 = v4;
  v7 = v6;

  navigationController = [(EKCalendarItemEditor *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v11 = v10;

  view = [(EKCalendarItemEditor *)self view];
  LODWORD(navigationController) = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (navigationController)
  {
    v5 = EKUIContainedControllerIdealWidth();
  }

  v13 = v7 + v11;
  v14 = v5;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_pinKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  _popoverController = [(EKCalendarItemEditor *)self _popoverController];

  if (_popoverController)
  {
    if (keyboardCopy)
    {

      [(EKCalendarItemEditor *)self _beginPinningInputViews];
    }

    else
    {

      [(EKCalendarItemEditor *)self _endPinningInputViews];
    }
  }
}

- (_UIAccessDeniedView)accessDeniedView
{
  if (!self->_accessDeniedView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD328]);
    view = [(EKCalendarItemEditor *)self view];
    [view bounds];
    v5 = [v3 initWithFrame:?];
    accessDeniedView = self->_accessDeniedView;
    self->_accessDeniedView = v5;

    [(_UIAccessDeniedView *)self->_accessDeniedView setAutoresizingMask:18];
    entityType = [(EKCalendarItemEditor *)self entityType];
    v8 = EventKitUIBundle();
    v9 = v8;
    if (entityType == 1)
    {
      v10 = @"This app does not have access to your reminders.";
    }

    else
    {
      v10 = @"This app does not have access to your calendars.";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F4EF6790 table:0];
    [(_UIAccessDeniedView *)self->_accessDeniedView setTitle:v11];
  }

  v12 = self->_accessDeniedView;

  return v12;
}

- (void)_setWantsToEnableDoneButton:(BOOL)button
{
  if (button)
  {
    *&button = [(EKCalendarItemEditor *)self _canEnableDoneButton];
  }

  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:button];
}

- (id)_viewHierarchy
{
  if (-[EKCalendarItemEditor isViewLoaded](self, "isViewLoaded") && (-[EKCalendarItemEditor view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4) || (-[EKCalendarItemEditor presentingViewController](self, "presentingViewController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "view"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "window"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7))
  {
    view = [(EKCalendarItemEditor *)self view];
  }

  else
  {
    presentingViewController = [(EKCalendarItemEditor *)self presentingViewController];
    view2 = [presentingViewController view];
    view = [view2 window];
  }

  return view;
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

- (void)editItemDidStartEditing:(id)editing
{
  v17 = *MEMORY[0x1E69E9840];
  editingCopy = editing;
  objc_storeStrong(&self->_currentEditItem, editing);
  if ([(EKCalendarItemEditItem *)self->_currentEditItem isInline])
  {
    selectedResponder = [editingCopy selectedResponder];
    [(EKCalendarItemEditor *)self setResponderToRestoreOnAppearence:selectedResponder];

    [(EKCalendarItemEditor *)self setVisibleSectionToRestoreOnAppearence:[(EKCalendarItemEditor *)self tableSectionForEditItem:editingCopy]];
    [(EKCalendarItemEditor *)self _pinKeyboard:[(EKCalendarItemEditItem *)self->_currentEditItem shouldPinKeyboard]];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _editItems = [(EKCalendarItemEditor *)self _editItems];
  v8 = [_editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(_editItems);
        }

        [*(*(&v12 + 1) + 8 * v11++) editor:self didStartEditingItem:editingCopy];
      }

      while (v9 != v11);
      v9 = [_editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)editItem:(id)item didSaveFromDetailViewController:(BOOL)controller
{
  controllerCopy = controller;
  itemCopy = item;
  onSaveEditorReloadBehavior = [itemCopy onSaveEditorReloadBehavior];
  if (onSaveEditorReloadBehavior == 2)
  {
    [(EKCalendarItemEditor *)self _configureVisibleItems];
  }

  onSaveEditItemsToRefresh = [itemCopy onSaveEditItemsToRefresh];
  v8 = onSaveEditItemsToRefresh;
  if (onSaveEditItemsToRefresh)
  {
    [(EKCalendarItemEditor *)self refreshStartAndEndDates];
    if ((v8 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((onSaveEditItemsToRefresh & 2) == 0)
  {
    goto LABEL_5;
  }

  [(EKCalendarItemEditor *)self refreshInvitees];
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(EKCalendarItemEditor *)self refreshLocation];
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(EKCalendarItemEditor *)self refreshURL];
  if ((v8 & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  [(EKCalendarItemEditor *)self refreshRecurrence];
  if ((v8 & 0x20) != 0)
  {
LABEL_9:
    [(EKCalendarItemEditor *)self refreshAttachments];
  }

LABEL_10:
  if (onSaveEditorReloadBehavior == 2)
  {
LABEL_16:
    tableView = [(EKCalendarItemEditor *)self tableView];
    [tableView reloadData];

    goto LABEL_24;
  }

  if (onSaveEditorReloadBehavior == 1)
  {
    [(EKCalendarItemEditor *)self reloadTableViewSectionsForTime:0 invitees:(v8 >> 1) & 1 location:(v8 >> 2) & 1 recurrence:(v8 >> 4) & 1];
  }

  else if (!onSaveEditorReloadBehavior && (v8 || controllerCopy))
  {
    [(EKCalendarItemEditor *)self _configureVisibleItems];
    goto LABEL_16;
  }

LABEL_24:
  [(EKCalendarItemEditor *)self _updateDoneButtonState];
}

- (void)_updateDoneButtonState
{
  hasUnsavedChanges = [(EKCalendarItemEditor *)self hasUnsavedChanges];

  [(EKCalendarItemEditor *)self _setWantsToEnableDoneButton:hasUnsavedChanges];
}

- (void)editItemDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([(EKCalendarItemEditItem *)editingCopy isInline])
  {
    [(EKCalendarItemEditItem *)editingCopy saveAndDismissWithForce:0];
  }

  currentEditItem = self->_currentEditItem;
  if (currentEditItem == editingCopy)
  {
    self->_currentEditItem = 0;
  }

  [(EKCalendarItemEditor *)self setIsTextEditing:0];
}

- (void)editItemTextChanged:(id)changed
{
  changedCopy = changed;
  if ([changedCopy conformsToProtocol:&unk_1F4F3DBE0] && objc_msgSend(changedCopy, "isSaveable"))
  {
    [(EKCalendarItemEditor *)self _setWantsToEnableDoneButton:1];
  }

  else
  {
    [(EKCalendarItemEditor *)self _updateDoneButtonState];
  }

  [(EKCalendarItemEditor *)self setIsTextEditing:1];
}

- (BOOL)_canEnableDoneButton
{
  result = (!accessDeniedView || ([(_UIAccessDeniedView *)accessDeniedView superview], v4 = accessDeniedView = self->_accessDeniedView;
  return result;
}

- (void)editItem:(id)item wantsDoneButtonDisabled:(BOOL)disabled
{
  itemCopy = item;
  editItemsDisablingDoneButton = self->_editItemsDisablingDoneButton;
  v10 = itemCopy;
  if (disabled)
  {
    [(NSMutableSet *)editItemsDisablingDoneButton addObject:itemCopy];
    selfCopy2 = self;
    v9 = 0;
LABEL_7:
    [(EKCalendarItemEditor *)selfCopy2 _setWantsToEnableDoneButton:v9];
    goto LABEL_8;
  }

  if ([(NSMutableSet *)editItemsDisablingDoneButton containsObject:itemCopy])
  {
    [(NSMutableSet *)self->_editItemsDisablingDoneButton removeObject:v10];
  }

  if (![(NSMutableSet *)self->_editItemsDisablingDoneButton count])
  {
    selfCopy2 = self;
    v9 = 1;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_tableViewDidUpdateHeights
{
  if (self->_needsCellHeightChange)
  {
    [(EKCalendarItemEditor *)self performSelector:sel__reallyHandleCellHeightChange withObject:0 afterDelay:0.0];
  }

  self->_isIgnoringCellHeightChange = 0;
}

- (void)_reallyHandleCellHeightChange
{
  if (self->_isIgnoringCellHeightChange)
  {
    self->_needsCellHeightChange = 1;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__EKCalendarItemEditor__reallyHandleCellHeightChange__block_invoke;
    v6[3] = &unk_1E843EC60;
    v6[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    self->_needsCellHeightChange = 0;
    WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_editorDelegate);
      [v5 editor:self didChangeHeightAnimated:0];
    }
  }
}

void __53__EKCalendarItemEditor__reallyHandleCellHeightChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

- (void)editItem:(id)item performActionsOnCellAtSubitem:(unint64_t)subitem actions:(id)actions
{
  actionsCopy = actions;
  itemCopy = item;
  v10 = [(EKCalendarItemEditor *)self tableSectionForEditItem:itemCopy];
  v11 = [(EKCalendarItemEditor *)self firstTableRowForEditItem:itemCopy];

  v14 = [MEMORY[0x1E696AC88] indexPathForRow:v11 + subitem inSection:v10];
  tableView = [(EKCalendarItemEditor *)self tableView];
  v13 = [tableView cellForRowAtIndexPath:v14];

  actionsCopy[2](actionsCopy, v13);
}

- (void)editItemWantsFooterTitlesToReload:(id)reload
{
  tableView = [(EKCalendarItemEditor *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      if ([(NSArray *)self->_orderedEditItems count]<= i)
      {
        footerTitle = 0;
      }

      else
      {
        v7 = [(NSArray *)self->_orderedEditItems objectAtIndexedSubscript:i];
        if ([v7 count])
        {
          v8 = [v7 objectAtIndexedSubscript:0];
          footerTitle = [v8 footerTitle];
        }

        else
        {
          footerTitle = 0;
        }
      }

      tableView2 = [(EKCalendarItemEditor *)self tableView];
      v11 = [tableView2 footerViewForSection:i];
      textLabel = [v11 textLabel];
      [textLabel setText:footerTitle];
    }
  }
}

- (void)editItem:(id)item wantsRowReload:(id)reload
{
  v14[1] = *MEMORY[0x1E69E9840];
  reloadCopy = reload;
  v7 = [(EKCalendarItemEditor *)self tableSectionForEditItem:item];
  v8 = MEMORY[0x1E696AC88];
  v9 = [reloadCopy row];
  section = [reloadCopy section];

  v11 = [v8 indexPathForRow:v9 inSection:section + v7];
  tableView = [(EKCalendarItemEditor *)self tableView];
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [tableView reloadRowsAtIndexPaths:v13 withRowAnimation:0];
}

- (int64_t)rowNumberForEditItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_orderedEditItems;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v16[0] = 0;
        v16[1] = v16;
        v16[2] = 0x2020000000;
        v16[3] = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __45__EKCalendarItemEditor_rowNumberForEditItem___block_invoke;
        v12[3] = &unk_1E84425E0;
        v12[4] = self;
        v13 = itemCopy;
        v14 = &v21;
        v15 = v16;
        [v8 enumerateObjectsUsingBlock:v12];

        _Block_object_dispose(v16, 8);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __45__EKCalendarItemEditor_rowNumberForEditItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([*(a1 + 32) shouldDisplayEditItem:?])
  {
    v6 = [*(*(a1 + 32) + 1176) calendar];
    v7 = [v10 configureForCalendarConstraints:v6];

    if (v7)
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 24);
      if (*(a1 + 40) == v10)
      {
        *(*(*(a1 + 48) + 8) + 24) = v9;
        *a4 = 1;
      }

      else
      {
        *(v8 + 24) = v9 + 1;
      }
    }
  }
}

- (void)editItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions rowReloads:(id)reloads
{
  itemCopy = item;
  insertionsCopy = insertions;
  deletionsCopy = deletions;
  reloadsCopy = reloads;
  tableView = [(EKCalendarItemEditor *)self tableView];
  if (([tableView isReloading] & 1) == 0)
  {
    v15 = [(EKCalendarItemEditor *)self tableSectionForEditItem:itemCopy];
    v16 = [(EKCalendarItemEditor *)self firstTableRowForEditItem:itemCopy];
    [(EKCalendarItemEditor *)self _tableViewWillUpdateHeights];
    [tableView beginUpdates];
    v17 = 0x1E695D000;
    if ([insertionsCopy count])
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(insertionsCopy, "count")}];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke;
      v39[3] = &unk_1E8442608;
      v41 = v16;
      v42 = v15;
      v40 = v18;
      v19 = v18;
      [insertionsCopy enumerateIndexesUsingBlock:v39];
      [tableView insertRowsAtIndexPaths:v19 withRowAnimation:0];

      v17 = 0x1E695D000uLL;
    }

    if ([deletionsCopy count])
    {
      v20 = v17;
      v21 = [*(v17 + 3952) arrayWithCapacity:{objc_msgSend(deletionsCopy, "count")}];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke_2;
      v35[3] = &unk_1E8442608;
      v37 = v16;
      v38 = v15;
      v36 = v21;
      v22 = v21;
      [deletionsCopy enumerateIndexesUsingBlock:v35];
      [tableView deleteRowsAtIndexPaths:v22 withRowAnimation:0];

      v17 = v20;
    }

    if ([reloadsCopy count])
    {
      v23 = [*(v17 + 3952) arrayWithCapacity:{objc_msgSend(reloadsCopy, "count")}];
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke_3;
      v31 = &unk_1E8442608;
      v33 = v16;
      v34 = v15;
      v32 = v23;
      v24 = v23;
      [reloadsCopy enumerateIndexesUsingBlock:&v28];
      [tableView reloadRowsAtIndexPaths:v24 withRowAnimation:{0, v28, v29, v30, v31}];
    }

    [tableView endUpdates];
    [(EKCalendarItemEditor *)self _tableViewDidUpdateHeights];
    WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&self->_editorDelegate);
      [v27 editor:self didChangeHeightAnimated:1];
    }
  }
}

void __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 40) + a2 inSection:*(a1 + 48)];
  [*(a1 + 32) addObject:v3];
}

void __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 40) + a2 inSection:*(a1 + 48)];
  [*(a1 + 32) addObject:v3];
}

void __76__EKCalendarItemEditor_editItem_wantsRowInsertions_rowDeletions_rowReloads___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 40) + a2 inSection:*(a1 + 48)];
  [*(a1 + 32) addObject:v3];
}

- (void)editItem:(id)item wantsRowsScrolledToVisible:(id)visible
{
  itemCopy = item;
  visibleCopy = visible;
  tableView = [(EKCalendarItemEditor *)self tableView];
  [tableView contentInset];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = [(EKCalendarItemEditor *)self tableSectionForEditItem:itemCopy];
    v12 = [(EKCalendarItemEditor *)self firstTableRowForEditItem:itemCopy];
    v26 = 0;
    v27 = &v26;
    v28 = 0x4010000000;
    v29 = "";
    v13 = *(MEMORY[0x1E695F058] + 16);
    v30 = *MEMORY[0x1E695F058];
    v31 = v13;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__EKCalendarItemEditor_editItem_wantsRowsScrolledToVisible___block_invoke;
    v25[3] = &unk_1E8442630;
    v25[6] = v12;
    v25[7] = v11;
    v25[4] = self;
    v25[5] = &v26;
    [visibleCopy enumerateIndexesUsingBlock:v25];
    if (!CGRectIsEmpty(v27[1]))
    {
      height = v27[1].size.height;
      tableView2 = [(EKCalendarItemEditor *)self tableView];
      [tableView2 bounds];
      v17 = v16;
      tableView3 = [(EKCalendarItemEditor *)self tableView];
      [tableView3 contentInset];
      v19 = height + 20.0;
      v21 = v17 - v20;

      if (v19 <= v21)
      {
        v24 = v27;
        v27[1].size.height = v19;
        v24[1].origin.y = v24[1].origin.y + -10.0;
        tableView4 = [(EKCalendarItemEditor *)self tableView];
        [tableView4 scrollRectToVisible:1 animated:{v27[1].origin.x, v27[1].origin.y, v27[1].size.width, v27[1].size.height}];
      }

      else
      {
        tableView4 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(visibleCopy inSection:{"firstIndex") + v12, v11}];
        tableView5 = [(EKCalendarItemEditor *)self tableView];
        [tableView5 scrollToRowAtIndexPath:tableView4 atScrollPosition:1 animated:1];
      }
    }

    _Block_object_dispose(&v26, 8);
  }
}

void __60__EKCalendarItemEditor_editItem_wantsRowsScrolledToVisible___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 48) + a2 inSection:*(a1 + 56)];
  v3 = [*(a1 + 32) tableView];
  [v3 rectForRowAtIndexPath:v13];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  if (!CGRectIsEmpty(*(*(*(a1 + 40) + 8) + 32)))
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v16 = CGRectUnion(v15, *(*(*(a1 + 40) + 8) + 32));
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
  }

  v12 = *(*(a1 + 40) + 8);
  v12[4] = x;
  v12[5] = y;
  v12[6] = width;
  v12[7] = height;
}

- (void)editItemRequiresHeightChange:(id)change
{
  if (self->_isIgnoringCellHeightChange)
  {
    self->_needsCellHeightChange = 1;
  }

  else
  {
    [(EKCalendarItemEditor *)self _reallyHandleCellHeightChange];
  }
}

- (void)editItemRequiresPopoverSizeUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_editorDelegate);
    [v6 editor:self didChangeHeightAnimated:1];
  }
}

- (id)cellWithReuseIdentifier:(id)identifier forEditItem:(id)item
{
  identifierCopy = identifier;
  tableView = [(EKCalendarItemEditor *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  return v7;
}

- (void)editItem:(id)item wantsViewControllerPresented:(id)presented
{
  presentedCopy = presented;
  v6 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  [v6 presentViewController:presentedCopy animated:1 completion:0];
}

- (void)editItem:(id)item wantsViewControllerPushed:(id)pushed
{
  pushedCopy = pushed;
  navigationController = [(EKCalendarItemEditor *)self navigationController];
  [navigationController pushViewController:pushedCopy animated:1];
}

- (void)editItemWantsFirstResponderResigned:(id)resigned
{
  firstResponder = [(EKCalendarItemEditor *)self firstResponder];
  [firstResponder resignFirstResponder];
}

- (id)_editItemAtIndexPath:(id)path firstRowIndex:(int64_t *)index
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  -[NSArray objectAtIndex:](self->_orderedEditItems, "objectAtIndex:", [pathCopy section]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    v12 = v9;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * v11);
      if ([(NSArray *)self->_currentItems containsObject:v13])
      {
        v9 = [v13 numberOfSubitems] + v12;
        if ([pathCopy row] < v9)
        {
          lastObject = v13;
          indexCopy2 = index;
          *index = v12;

          if (lastObject)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v9 = v12;
      }

      ++v11;
      v12 = v9;
      if (v8 == v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  v9 = 0;
LABEL_16:

  v12 = v9;
  indexCopy2 = index;
LABEL_17:
  lastObject = [v6 lastObject];
  *indexCopy2 = v12;
LABEL_18:

  return lastObject;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_orderedEditItems count];
  v4 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "Number of sections: [%ld]", &v6, 0xCu);
  }

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [(NSArray *)self->_orderedEditItems objectAtIndex:section];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([(NSArray *)self->_currentItems containsObject:v12])
        {
          v9 += [v12 numberOfSubitems];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    sectionCopy = section;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Number of rows in section [%ld]: [%ld]", buf, 0x16u);
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v13 = 0;
  pathCopy = path;
  v8 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v13];
  v9 = [pathCopy row];

  v10 = [v8 cellForSubitemAtIndex:v9 - v13 inEditor:self];
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [v10 setBackgroundColor:backgroundColor];
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy rowHeight];
  v9 = v8;
  [viewCopy bounds];
  v11 = v10;
  [viewCopy _backgroundInset];
  v13 = v12;

  v18 = 0;
  v14 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v18];
  v15 = [pathCopy row];

  [v14 defaultCellHeightForSubitemAtIndex:v15 - v18 forWidth:v11 + v13 * -2.0];
  if (v16 > 0.0)
  {
    v9 = v16;
  }

  return v9;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v6 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v11];
  v7 = [pathCopy row];
  v8 = [v6 editor:self canSelectSubitem:v7 - v11];
  v9 = 0;
  if (v8)
  {
    v9 = pathCopy;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([v8 selectionStyle])
  {
    v16 = 0;
    v9 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v16];
    v10 = [pathCopy row];
    v11 = v10 - v16;
    currentEditItem = self->_currentEditItem;
    if (currentEditItem)
    {
      v13 = v9 == currentEditItem;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if ([(EKCalendarItemEditItem *)v9 editor:self shouldClearSelectionFromSubitem:v11])
      {
        [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      }
    }

    else if (![(EKCalendarItemEditItem *)currentEditItem saveAndDismissWithForce:0])
    {
      [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];

      goto LABEL_14;
    }

    _popoverController = [(EKCalendarItemEditor *)self _popoverController];

    if (!_popoverController)
    {
      selectedResponder = [(EKCalendarItemEditItem *)self->_currentEditItem selectedResponder];
      [selectedResponder resignFirstResponder];
    }

    [(EKCalendarItemEditItem *)v9 editor:self didSelectSubitem:v11];
  }

  [(EKCalendarItemEditor *)self setResponderToRestoreOnAppearence:0];
LABEL_14:
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v8 = 0;
  pathCopy = path;
  v6 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v8];
  v7 = [pathCopy row];

  [v6 editor:self didDeselectSubitem:v7 - v8];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if ([(EKCalendarItemEditor *)self tableView:view numberOfRowsInSection:section]<= 0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *MEMORY[0x1E69DE3D0];
  }

  v5 = EKUIUnscaledCatalyst();
  result = 5.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(EKCalendarItemEditor *)self tableView:view numberOfRowsInSection:section])
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"Default"];
  }

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(NSArray *)self->_orderedEditItems objectAtIndex:section];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([(NSArray *)self->_currentItems containsObject:v13])
        {
          v14 = v13;

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
    if (v10)
    {
      headerTitle = [v10 headerTitle];
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  headerTitle = 0;
LABEL_14:

  return headerTitle;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = headerViewCopy;
      backgroundColor = [viewCopy backgroundColor];
      contentView = [v7 contentView];

      [contentView setBackgroundColor:backgroundColor];
    }
  }
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(NSArray *)self->_orderedEditItems objectAtIndex:section];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([(NSArray *)self->_currentItems containsObject:v14])
        {
          v15 = v14;

          v11 = v15;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
    if (v11)
    {
      [viewCopy bounds];
      [v11 footerHeightForWidth:v16];
      if (v17 == 0.0)
      {
        v9 = *MEMORY[0x1E69DE3D0];
      }

      else
      {
        v9 = v17;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(NSArray *)self->_orderedEditItems objectAtIndex:section];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([(NSArray *)self->_currentItems containsObject:v13])
        {
          v14 = v13;

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
    if (v10)
    {
      footerTitle = [v10 footerTitle];
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  footerTitle = 0;
LABEL_14:

  return footerTitle;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  viewCopy = view;
  footerViewCopy = footerView;
  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    contentView = [footerViewCopy contentView];
    [contentView setBackgroundColor:backgroundColor];
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(NSArray *)self->_orderedEditItems objectAtIndex:section];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([(NSArray *)self->_currentItems containsObject:v13])
        {
          v14 = v13;

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  if (v10)
  {
    footerView = [v10 footerView];

    v15 = footerView;
  }

  if (v15 && EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [v15 setBackgroundColor:backgroundColor];
  }

  return v15;
}

- (void)deleteClicked:(id)clicked
{
  clickedCopy = clicked;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_calendarItem;
  }

  else
  {
    v5 = 0;
  }

  sourceViewForPopover = [clickedCopy sourceViewForPopover];
  sourceViewForPopover2 = [clickedCopy sourceViewForPopover];

  [sourceViewForPopover2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _nameForDeleteButton = [(EKCalendarItemEditor *)self _nameForDeleteButton];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__EKCalendarItemEditor_deleteClicked___block_invoke;
  v19[3] = &unk_1E843FE10;
  v19[4] = self;
  v17 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:0 viewController:self sourceView:sourceViewForPopover sourceRect:v5 forEvent:_nameForDeleteButton stringForDeleteButton:v19 withCompletionHandler:v9, v11, v13, v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v17;
}

void __38__EKCalendarItemEditor_deleteClicked___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    [*(a1 + 32) _performDelete:a2];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 1096);
  *(v3 + 1096) = 0;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v12 = 0;
  pathCopy = path;
  v6 = [(EKCalendarItemEditor *)self _editItemAtIndexPath:pathCopy firstRowIndex:&v12];
  v7 = [pathCopy row];

  v8 = [v6 trailingSwipeActionsConfigurationForRowAtIndex:v7 - v12];
  if (!v8)
  {
    v9 = MEMORY[0x1E69DCFC0];
    array = [MEMORY[0x1E695DEC8] array];
    v8 = [v9 configurationWithActions:array];
  }

  return v8;
}

- (void)_performDelete:(int64_t)delete
{
  v26 = *MEMORY[0x1E69E9840];
  calendarItem = [(EKCalendarItemEditor *)self calendarItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
    calendarItem2 = [(EKCalendarItemEditor *)self calendarItem];
    [mEMORY[0x1E6966A10] handleEventDeletion:calendarItem2];

    editorDelegate = [(EKCalendarItemEditor *)self editorDelegate];
    v10 = [editorDelegate editorForCalendarItemEditor:self];

    calendarItem3 = [(EKCalendarItemEditor *)self calendarItem];
    v23 = 0;
    v12 = [v10 deleteEvent:calendarItem3 span:delete error:&v23];
    v13 = v23;

    if (v12)
    {
      v14 = @"Event";
LABEL_7:
      [(EKCalendarItemEditor *)self calendarItemCreationViewStart];
      CalAnalyticsSendEventLazy();

      goto LABEL_12;
    }
  }

  else
  {
    if (delete)
    {
      [EKCalendarItemEditor _performDelete:];
    }

    store = self->_store;
    calendarItem4 = [(EKCalendarItemEditor *)self calendarItem];
    v22 = 0;
    v17 = [(EKEventStore *)store removeReminder:calendarItem4 commit:1 error:&v22];
    v13 = v22;

    v14 = 0;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  v18 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_ERROR, "Remove failed: %@", buf, 0xCu);
  }

  domain = [v13 domain];
  v20 = domain;
  if (domain == *MEMORY[0x1E6966808])
  {
    code = [v13 code];

    if (code == 1010)
    {
      [(EKEventStore *)self->_store rollback];
    }
  }

  else
  {
  }

LABEL_12:
  [(EKCalendarItemEditor *)self completeWithAction:2 animated:1];
}

void __39__EKCalendarItemEditor__performDelete___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setObject:v3 forKeyedSubscript:@"eventType"];
  v5 = [*(a1 + 40) calendarItem];
  v6 = [v5 attendees];
  if ([v6 count])
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = MEMORY[0x1E695E110];
  }

  [v4 setObject:v7 forKeyedSubscript:@"hasAttendees"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  [v4 setObject:v8 forKeyedSubscript:@"currentView"];
}

- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  if (![(EKCalendarItemEditor *)self hasUnsavedChanges]&& ![(EKCalendarItem *)self->_calendarItem isNew])
  {
    goto LABEL_7;
  }

  calendarItem = [(EKCalendarItemEditor *)self calendarItem];
  title = [calendarItem title];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v11 = [v10 length];

  if (!v11)
  {
    defaultTitleForCalendarItem = [objc_opt_class() defaultTitleForCalendarItem];
    calendarItem2 = [(EKCalendarItemEditor *)self calendarItem];
    [calendarItem2 setTitle:defaultTitleForCalendarItem];
  }

  v24 = 0;
  v14 = [(EKCalendarItemEditor *)self saveCalendarItemWithSpan:save error:&v24];
  v15 = v24;
  v16 = v15;
  if (v14)
  {

LABEL_7:
    v17 = 1;
    [(EKCalendarItemEditor *)self completeWithAction:1 animated:animatedCopy];
    return v17;
  }

  v18 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_ERROR, "Calendar: unable to save: %@", buf, 0xCu);
  }

  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    defaultAlertTitle = [(EKCalendarItemEditor *)self defaultAlertTitle];
    PresentValidationAlertWithDefaultTitle(self, v16, defaultAlertTitle);

    domain = [v16 domain];
    v21 = domain;
    if (domain == *MEMORY[0x1E6966808])
    {
      code = [v16 code];

      if (code == 1010)
      {
        [(EKEventStore *)self->_store rollback];
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_editItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) tableViewDidScroll];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_presentAttachmentRecurrenceSheetForEvent:(id)event withContinueBlock:(id)block
{
  eventCopy = event;
  blockCopy = block;
  doneButton = self->_doneButton;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__EKCalendarItemEditor__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke;
  v13[3] = &unk_1E843FE38;
  v13[4] = self;
  v14 = eventCopy;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = eventCopy;
  v11 = [EKUIRecurrenceAlertController presentAttachmentAlertWithOptions:0 viewController:self barButtonItem:doneButton forEvent:v10 withCompletionHandler:v13];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v11;
}

void __84__EKCalendarItemEditor__presentAttachmentRecurrenceSheetForEvent_withContinueBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1096);
    *(v3 + 1096) = 0;

    v5 = [*(a1 + 32) editorDelegate];
    v6 = [v5 editorForCalendarItemEditor:*(a1 + 32)];

    [v6 saveEvent:*(a1 + 40) span:1 error:0];
    [*(a1 + 32) _performSave:0 animated:1];
    (*(*(a1 + 48) + 16))();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 1096);
  *(v7 + 1096) = 0;
}

- (void)_presentDetachSheetForEvent:(id)event saveAttachments:(BOOL)attachments withContinueBlock:(id)block
{
  attachmentsCopy = attachments;
  eventCopy = event;
  blockCopy = block;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [EKCalendarItemEditor _presentDetachSheetForEvent:a2 saveAttachments:self withContinueBlock:eventCopy];
  }

  if (attachmentsCopy)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  doneButton = self->_doneButton;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__EKCalendarItemEditor__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke;
  v16[3] = &unk_1E843FE88;
  v17 = blockCopy;
  v18 = v11;
  v16[4] = self;
  v13 = blockCopy;
  v14 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:v11 viewController:self barButtonItem:doneButton forEvent:eventCopy withCompletionHandler:v16];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v14;
}

void __86__EKCalendarItemEditor__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke(void *a1, unint64_t a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EKCalendarItemEditor__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_2;
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
  v9 = *(v8 + 1096);
  *(v8 + 1096) = 0;
}

uint64_t __86__EKCalendarItemEditor__presentDetachSheetForEvent_saveAttachments_withContinueBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 8) != 0)
  {
    v4 = [*(a1 + 32) editorDelegate];
    v5 = [v4 editorForCalendarItemEditor:*(a1 + 32)];

    v6 = [*(a1 + 32) attachmentsModifiedEvent];
    [v5 saveEvent:v6 span:1 error:0];
  }

  [*(a1 + 32) _performSave:a2 animated:1];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)handleSaveKeyCommand
{
  if ([(EKCalendarItemEditor *)self canPerformSaveKeyCommand])
  {

    [(EKCalendarItemEditor *)self done:0];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_handleSaveKeyCommand == action)
  {

    return [(EKCalendarItemEditor *)self canPerformSaveKeyCommand];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = EKCalendarItemEditor;
    return [EKCalendarItemEditor canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (id)navigationItem
{
  parentViewController = [(EKCalendarItemEditor *)self parentViewController];
  navigationItem = [parentViewController navigationItem];

  return navigationItem;
}

- (id)title
{
  parentViewController = [(EKCalendarItemEditor *)self parentViewController];
  title = [parentViewController title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  parentViewController = [(EKCalendarItemEditor *)self parentViewController];
  [parentViewController setTitle:titleCopy];
}

- (EKCalendarItemEditorDelegate)editorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editorDelegate);

  return WeakRetained;
}

- (id)_editItems
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_orderedEditItems
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)saveCalendarItemWithSpan:(int64_t)span error:(id *)error
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)attachmentsModifiedOnRecurrence
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)attachmentsModifiedEvent
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)hasAttachmentChanges
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)defaultAlertTitle
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)notificationNamesForLocaleChange
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)entityType
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_copyEventForPossibleRevert
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (void)_revertEvent
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (id)_nameForDeleteButton
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_viewForSheet
{
  OUTLINED_FUNCTION_0_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_performDelete:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"EKCalendarItemEditor.m" lineNumber:1575 description:@"Span should never be anything but 'this' for reminders"];
}

- (void)_presentDetachSheetForEvent:(uint64_t)a1 saveAttachments:(uint64_t)a2 withContinueBlock:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"EKCalendarItemEditor.m" lineNumber:1700 description:{@"Trying to detach something that's not an event: %@", a3}];
}

@end