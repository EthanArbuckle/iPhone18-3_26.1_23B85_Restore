@interface EKCalendarChooserOOPWrapperImpl
+ (id)hideAllString;
+ (id)showAllString;
- (BOOL)allowsPullToRefresh;
- (BOOL)disableCalendarsUnselectedByFocus;
- (BOOL)hasAccountThatCanCreateCalendars;
- (BOOL)hasInProcessNavBar;
- (BOOL)onlyShowUnmanagedAccounts;
- (BOOL)showAccountStatus;
- (BOOL)showDetailAccessories;
- (BOOL)showsDeclinedEventsSetting;
- (CGSize)preferredContentSize;
- (EKCalendar)selectedCalendar;
- (EKCalendarChooserDelegate)delegate;
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 eventStore:(id)a6;
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11;
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 eventStore:(id)a5;
- (EKEventStore)eventStore;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (NSSet)selectedCalendars;
- (id)centeredCalendar;
- (id)navigationController;
- (id)navigationItem;
- (id)toolbarItems;
- (int)explanatoryTextMode;
- (int64_t)chooserMode;
- (int64_t)displayStyle;
- (int64_t)selectionStyle;
- (unint64_t)entityType;
- (void)_commonAddCalendarButtonPressed:(id)a3;
- (void)_layoutNavToolbarControls;
- (void)_selectAllCalendarsAndNotify:(BOOL)a3;
- (void)calendarEditor:(id)a3 didCompleteWithAction:(int)a4;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)presentAddCalendarView;
- (void)setAllSelected:(BOOL)a3;
- (void)setAllowsPullToRefresh:(BOOL)a3;
- (void)setChooserMode:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDisableCalendarsUnselectedByFocus:(BOOL)a3;
- (void)setExplanatoryTextMode:(int)a3;
- (void)setOnlyShowUnmanagedAccounts:(BOOL)a3;
- (void)setSelectedCalendar:(id)a3;
- (void)setSelectedCalendars:(id)a3;
- (void)setShowAccountStatus:(BOOL)a3;
- (void)setShowDetailAccessories:(BOOL)a3;
- (void)setShowsDeclinedEventsSetting:(BOOL)a3;
- (void)setToolbarItems:(id)a3;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)showAllButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKCalendarChooserOOPWrapperImpl

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 forEvent:(id)a6 eventStore:(id)a7 limitedToSource:(id)a8 showIdentityChooser:(BOOL)a9 showDelegateSetupCell:(BOOL)a10 showAccountStatus:(BOOL)a11
{
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v31.receiver = self;
  v31.super_class = EKCalendarChooserOOPWrapperImpl;
  v21 = [(EKCalendarChooserOOPWrapperImpl *)&v31 init];
  if (v21)
  {
    v22 = [[_TtC10EventKitUI24EKCalendarChooserOOPImpl alloc] initWithEventStore:v19];
    [(EKCalendarChooserOOPWrapperImpl *)v21 setVc:v22];

    v23 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v23 setSelectionStyle:a3];

    v24 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v24 setDisplayStyle:a4];

    v25 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v25 setEntityType:a5];

    objc_storeStrong(&v21->_event, a6);
    v26 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v26 setLimitedToSource:v20];

    v27 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v27 setShowIdentityChooser:a9];

    v28 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v28 setShowDelegateSetupCell:a10];

    v29 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v29 setShowAccountStatus:a11];
  }

  return v21;
}

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 entityType:(unint64_t)a5 eventStore:(id)a6
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 0;
  return [EKCalendarChooserOOPWrapperImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:a3 entityType:a4 forEvent:a5 eventStore:0 limitedToSource:a6 showIdentityChooser:0 showDelegateSetupCell:v7 showAccountStatus:?];
}

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)a3 displayStyle:(int64_t)a4 eventStore:(id)a5
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [EKCalendarChooserOOPWrapperImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:a3 entityType:a4 forEvent:0 eventStore:0 limitedToSource:a5 showIdentityChooser:0 showDelegateSetupCell:v6 showAccountStatus:?];
}

- (void)viewDidLoad
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = EKCalendarChooserOOPWrapperImpl;
  [(EKCalendarChooserOOPWrapperImpl *)&v39 viewDidLoad];
  v3 = EventKitUIBundle();
  v38 = [v3 localizedStringForKey:@"Calendars" value:&stru_1F4EF6790 table:0];

  [(EKCalendarChooserOOPWrapperImpl *)self setTitle:v38];
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self parentViewController];
  [v4 setTitle:v38];

  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [(EKCalendarChooserOOPWrapperImpl *)self addChildViewController:v5];

  v6 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v7 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v9 didMoveToParentViewController:self];

  v10 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v11 = [v10 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = MEMORY[0x1E696ACD8];
  v37 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v36 = [v37 view];
  v34 = [v36 leadingAnchor];
  v35 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v40[0] = v32;
  v31 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v30 = [v31 view];
  v28 = [v30 topAnchor];
  v29 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v27 = [v29 topAnchor];
  v25 = [v28 constraintEqualToAnchor:v27];
  v40[1] = v25;
  v24 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v23 = [v24 view];
  v22 = [v23 trailingAnchor];
  v12 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v22 constraintEqualToAnchor:v13];
  v40[2] = v14;
  v15 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v16 = [v15 view];
  v17 = [v16 bottomAnchor];
  v18 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v40[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v26 activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKCalendarChooserOOPWrapperImpl;
  [(EKCalendarChooserOOPWrapperImpl *)&v4 viewWillAppear:a3];
  [(EKCalendarChooserOOPWrapperImpl *)self _layoutNavToolbarControls];
}

- (CGSize)preferredContentSize
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)hasInProcessNavBar
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [v3 isNavigationBarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasAccountThatCanCreateCalendars
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v4 = [v3 limitedToSource];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
    v7 = [v6 limitedToSource];
    v8 = [v7 isWritable];

    if (!v8)
    {
      LOBYTE(v9) = 0;
      return v9;
    }
  }

  else
  {
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(EKCalendarChooserOOPWrapperImpl *)self eventStore];
  v11 = [v10 sources];

  v9 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 supportsCalendarCreation] && objc_msgSend(v14, "sourceType") != 4)
        {
          LOBYTE(v9) = 1;
          goto LABEL_16;
        }
      }

      v9 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v9;
}

- (void)_layoutNavToolbarControls
{
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if ([(EKCalendarChooserOOPWrapperImpl *)self showsCancelButton])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [v12 addObject:v3];
  }

  if ([(EKCalendarChooserOOPWrapperImpl *)self showsDoneButton])
  {
    v4 = [(EKCalendarChooserOOPWrapperImpl *)self showsCancelButton];
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 24;
    }

    v7 = [v5 initWithBarButtonSystemItem:v6 target:self action:sel_done_];
    [v12 addObject:v7];
  }

  if ([v12 count])
  {
    v8 = [v12 firstObject];
    v9 = [(EKCalendarChooserOOPWrapperImpl *)self navigationItem];
    [v9 setLeftBarButtonItem:v8];

    [v12 removeObjectAtIndex:0];
  }

  if ([v12 count])
  {
    v10 = [v12 lastObject];
    v11 = [(EKCalendarChooserOOPWrapperImpl *)self navigationItem];
    [v11 setRightBarButtonItem:v10];

    [v12 removeLastObject];
  }
}

+ (id)showAllString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Show All" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)hideAllString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Hide All" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)setAllSelected:(BOOL)a3
{
  v3 = a3;
  self->_allSelected = a3;
  v5 = objc_opt_class();
  if (v3)
  {
    [v5 hideAllString];
  }

  else
  {
    [v5 showAllString];
  }
  v7 = ;
  v6 = [(EKCalendarChooserOOPWrapperImpl *)self showAllButton];
  [v6 setTitle:v7];
}

- (void)cancel:(id)a3
{
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      v8 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [v9 calendarChooserDidCancel:v8];
    }
  }
}

- (void)done:(id)a3
{
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      v8 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [v9 calendarChooserDidFinish:v8];
    }
  }
}

- (void)presentAddCalendarView
{
  v3 = [EKCalendarEditor alloc];
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self eventStore];
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self entityType];
  v6 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v7 = [v6 limitedToSource];
  v8 = [(EKCalendarEditor *)v3 initWithCalendar:0 eventStore:v4 entityType:v5 limitedToSource:v7];

  [(EKAbstractCalendarEditor *)v8 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = v8;

  [(EKCalendarChooserOOPWrapperImpl *)self _commonAddCalendarButtonPressed:0];
}

- (void)_commonAddCalendarButtonPressed:(id)a3
{
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_presentedEditor];
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v4))
  {
    v5 = [(EKCalendarChooserOOPWrapperImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(v5);

    if (!IsRegular)
    {
      goto LABEL_5;
    }

    [v9 setModalPresentationStyle:6];
    v4 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v7 = [v9 view];
    [v7 setBackgroundColor:v4];
  }

LABEL_5:
  v8 = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
  [v8 presentViewController:v9 animated:1 completion:0];
}

- (void)calendarEditor:(id)a3 didCompleteWithAction:(int)a4
{
  presentedEditor = self->_presentedEditor;
  if (presentedEditor == a3)
  {
    self->_presentedEditor = 0;

    v7 = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (EKEventStore)eventStore
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 eventStore];

  return v3;
}

- (int64_t)displayStyle
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 displayStyle];

  return v3;
}

- (unint64_t)entityType
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 entityType];

  return v3;
}

- (int64_t)selectionStyle
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 selectionStyle];

  return v3;
}

- (EKCalendarChooserDelegate)delegate
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setDelegate:v4];
}

- (NSSet)selectedCalendars
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 selectedCalendars];

  return v3;
}

- (void)setSelectedCalendars:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setSelectedCalendars:v4];
}

- (void)showAllButtonPressed
{
  [(EKCalendarChooserOOPWrapperImpl *)self setAllSelected:!self->_allSelected];

  [(EKCalendarChooserOOPWrapperImpl *)self _selectAllCalendarsAndNotify:1];
}

- (void)_selectAllCalendarsAndNotify:(BOOL)a3
{
  if (a3)
  {
    v4 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      v7 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [v6 calendarChooserSelectionDidChange:v7];
    }
  }

  v8 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v8 toggleAllCalendars];
}

- (BOOL)showDetailAccessories
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 showDetailAccessories];

  return v3;
}

- (void)setShowDetailAccessories:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowDetailAccessories:v3];
}

- (int64_t)chooserMode
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 chooserMode];

  return v3;
}

- (void)setChooserMode:(int64_t)a3
{
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setChooserMode:a3];
}

- (BOOL)disableCalendarsUnselectedByFocus
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 disableCalendarsUnselectedByFocus];

  return v3;
}

- (void)setDisableCalendarsUnselectedByFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setDisableCalendarsUnselectedByFocus:v3];
}

- (BOOL)allowsPullToRefresh
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 allowsPullToRefresh];

  return v3;
}

- (void)setAllowsPullToRefresh:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setAllowsPullToRefresh:v3];
}

- (EKCalendar)selectedCalendar
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 selectedCalendar];

  return v3;
}

- (void)setSelectedCalendar:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setSelectedCalendar:v4];
}

- (BOOL)showsDeclinedEventsSetting
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 showsDeclinedEventsSetting];

  return v3;
}

- (void)setShowsDeclinedEventsSetting:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowsDeclinedEventsSetting:v3];
}

- (int)explanatoryTextMode
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 explanatoryTextMode];

  return v3;
}

- (void)setExplanatoryTextMode:(int)a3
{
  v3 = *&a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setExplanatoryTextMode:v3];
}

- (BOOL)showAccountStatus
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 showAccountStatus];

  return v3;
}

- (void)setShowAccountStatus:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowAccountStatus:v3];
}

- (BOOL)onlyShowUnmanagedAccounts
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  v3 = [v2 onlyShowUnmanagedAccounts];

  return v3;
}

- (void)setOnlyShowUnmanagedAccounts:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setOnlyShowUnmanagedAccounts:v3];
}

- (id)centeredCalendar
{
  v2 = objc_alloc_init(MEMORY[0x1E6966990]);

  return v2;
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  [v5 setToolbarItems:v4];
}

- (id)toolbarItems
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  v3 = [v2 toolbarItems];

  return v3;
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  [v7 setToolbarItems:v6 animated:v4];
}

- (id)navigationItem
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)navigationController
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  v3 = [v2 navigationController];

  return v3;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    v4 = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
  }

  return v4;
}

@end