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
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type eventStore:(id)store;
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1;
- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle eventStore:(id)store;
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
- (void)_commonAddCalendarButtonPressed:(id)pressed;
- (void)_layoutNavToolbarControls;
- (void)_selectAllCalendarsAndNotify:(BOOL)notify;
- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)presentAddCalendarView;
- (void)setAllSelected:(BOOL)selected;
- (void)setAllowsPullToRefresh:(BOOL)refresh;
- (void)setChooserMode:(int64_t)mode;
- (void)setDelegate:(id)delegate;
- (void)setDisableCalendarsUnselectedByFocus:(BOOL)focus;
- (void)setExplanatoryTextMode:(int)mode;
- (void)setOnlyShowUnmanagedAccounts:(BOOL)accounts;
- (void)setSelectedCalendar:(id)calendar;
- (void)setSelectedCalendars:(id)calendars;
- (void)setShowAccountStatus:(BOOL)status;
- (void)setShowDetailAccessories:(BOOL)accessories;
- (void)setShowsDeclinedEventsSetting:(BOOL)setting;
- (void)setToolbarItems:(id)items;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)showAllButtonPressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKCalendarChooserOOPWrapperImpl

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type forEvent:(id)event eventStore:(id)store limitedToSource:(id)source showIdentityChooser:(BOOL)chooser showDelegateSetupCell:(BOOL)self0 showAccountStatus:(BOOL)self1
{
  eventCopy = event;
  storeCopy = store;
  sourceCopy = source;
  v31.receiver = self;
  v31.super_class = EKCalendarChooserOOPWrapperImpl;
  v21 = [(EKCalendarChooserOOPWrapperImpl *)&v31 init];
  if (v21)
  {
    v22 = [[_TtC10EventKitUI24EKCalendarChooserOOPImpl alloc] initWithEventStore:storeCopy];
    [(EKCalendarChooserOOPWrapperImpl *)v21 setVc:v22];

    v23 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v23 setSelectionStyle:style];

    v24 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v24 setDisplayStyle:displayStyle];

    v25 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v25 setEntityType:type];

    objc_storeStrong(&v21->_event, event);
    v26 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v26 setLimitedToSource:sourceCopy];

    v27 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v27 setShowIdentityChooser:chooser];

    v28 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v28 setShowDelegateSetupCell:cell];

    v29 = [(EKCalendarChooserOOPWrapperImpl *)v21 vc];
    [v29 setShowAccountStatus:status];
  }

  return v21;
}

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle entityType:(unint64_t)type eventStore:(id)store
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 0;
  return [EKCalendarChooserOOPWrapperImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:type eventStore:0 limitedToSource:store showIdentityChooser:0 showDelegateSetupCell:v7 showAccountStatus:?];
}

- (EKCalendarChooserOOPWrapperImpl)initWithSelectionStyle:(int64_t)style displayStyle:(int64_t)displayStyle eventStore:(id)store
{
  BYTE2(v6) = 0;
  LOWORD(v6) = 0;
  return [EKCalendarChooserOOPWrapperImpl initWithSelectionStyle:"initWithSelectionStyle:displayStyle:entityType:forEvent:eventStore:limitedToSource:showIdentityChooser:showDelegateSetupCell:showAccountStatus:" displayStyle:style entityType:displayStyle forEvent:0 eventStore:0 limitedToSource:store showIdentityChooser:0 showDelegateSetupCell:v6 showAccountStatus:?];
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
  parentViewController = [(EKCalendarChooserOOPWrapperImpl *)self parentViewController];
  [parentViewController setTitle:v38];

  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [(EKCalendarChooserOOPWrapperImpl *)self addChildViewController:v5];

  view = [(EKCalendarChooserOOPWrapperImpl *)self view];
  v7 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view2 = [v7 view];
  [view addSubview:view2];

  v9 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v9 didMoveToParentViewController:self];

  v10 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view3 = [v10 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = MEMORY[0x1E696ACD8];
  v37 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view4 = [v37 view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v32;
  v31 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view6 = [v31 view];
  topAnchor = [view6 topAnchor];
  view7 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  topAnchor2 = [view7 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[1] = v25;
  v24 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view8 = [v24 view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[2] = v14;
  v15 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  view10 = [v15 view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKCalendarChooserOOPWrapperImpl *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v26 activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKCalendarChooserOOPWrapperImpl;
  [(EKCalendarChooserOOPWrapperImpl *)&v4 viewWillAppear:appear];
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
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  navigationController = [_ekCalendarChooser navigationController];

  if (navigationController)
  {
    v4 = [navigationController isNavigationBarHidden] ^ 1;
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
  limitedToSource = [v3 limitedToSource];
  if (limitedToSource)
  {
    v5 = limitedToSource;
    v6 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
    limitedToSource2 = [v6 limitedToSource];
    isWritable = [limitedToSource2 isWritable];

    if (!isWritable)
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
  eventStore = [(EKCalendarChooserOOPWrapperImpl *)self eventStore];
  sources = [eventStore sources];

  v9 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(sources);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 supportsCalendarCreation] && objc_msgSend(v14, "sourceType") != 4)
        {
          LOBYTE(v9) = 1;
          goto LABEL_16;
        }
      }

      v9 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    showsCancelButton = [(EKCalendarChooserOOPWrapperImpl *)self showsCancelButton];
    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    if (showsCancelButton)
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
    firstObject = [v12 firstObject];
    navigationItem = [(EKCalendarChooserOOPWrapperImpl *)self navigationItem];
    [navigationItem setLeftBarButtonItem:firstObject];

    [v12 removeObjectAtIndex:0];
  }

  if ([v12 count])
  {
    lastObject = [v12 lastObject];
    navigationItem2 = [(EKCalendarChooserOOPWrapperImpl *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:lastObject];

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

- (void)setAllSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_allSelected = selected;
  v5 = objc_opt_class();
  if (selectedCopy)
  {
    [v5 hideAllString];
  }

  else
  {
    [v5 showAllString];
  }
  v7 = ;
  showAllButton = [(EKCalendarChooserOOPWrapperImpl *)self showAllButton];
  [showAllButton setTitle:v7];
}

- (void)cancel:(id)cancel
{
  delegate = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [delegate3 calendarChooserDidCancel:_ekCalendarChooser];
    }
  }
}

- (void)done:(id)done
{
  delegate = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [delegate3 calendarChooserDidFinish:_ekCalendarChooser];
    }
  }
}

- (void)presentAddCalendarView
{
  v3 = [EKCalendarEditor alloc];
  eventStore = [(EKCalendarChooserOOPWrapperImpl *)self eventStore];
  entityType = [(EKCalendarChooserOOPWrapperImpl *)self entityType];
  v6 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  limitedToSource = [v6 limitedToSource];
  v8 = [(EKCalendarEditor *)v3 initWithCalendar:0 eventStore:eventStore entityType:entityType limitedToSource:limitedToSource];

  [(EKAbstractCalendarEditor *)v8 setDelegate:self];
  presentedEditor = self->_presentedEditor;
  self->_presentedEditor = v8;

  [(EKCalendarChooserOOPWrapperImpl *)self _commonAddCalendarButtonPressed:0];
}

- (void)_commonAddCalendarButtonPressed:(id)pressed
{
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_presentedEditor];
  view = [(EKCalendarChooserOOPWrapperImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
  {
    view2 = [(EKCalendarChooserOOPWrapperImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

    if (!IsRegular)
    {
      goto LABEL_5;
    }

    [v9 setModalPresentationStyle:6];
    view = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view3 = [v9 view];
    [view3 setBackgroundColor:view];
  }

LABEL_5:
  navigationController = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
  [navigationController presentViewController:v9 animated:1 completion:0];
}

- (void)calendarEditor:(id)editor didCompleteWithAction:(int)action
{
  presentedEditor = self->_presentedEditor;
  if (presentedEditor == editor)
  {
    self->_presentedEditor = 0;

    navigationController = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (EKEventStore)eventStore
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  eventStore = [v2 eventStore];

  return eventStore;
}

- (int64_t)displayStyle
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  displayStyle = [v2 displayStyle];

  return displayStyle;
}

- (unint64_t)entityType
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  entityType = [v2 entityType];

  return entityType;
}

- (int64_t)selectionStyle
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  selectionStyle = [v2 selectionStyle];

  return selectionStyle;
}

- (EKCalendarChooserDelegate)delegate
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  delegate = [v2 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setDelegate:delegateCopy];
}

- (NSSet)selectedCalendars
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  selectedCalendars = [v2 selectedCalendars];

  return selectedCalendars;
}

- (void)setSelectedCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setSelectedCalendars:calendarsCopy];
}

- (void)showAllButtonPressed
{
  [(EKCalendarChooserOOPWrapperImpl *)self setAllSelected:!self->_allSelected];

  [(EKCalendarChooserOOPWrapperImpl *)self _selectAllCalendarsAndNotify:1];
}

- (void)_selectAllCalendarsAndNotify:(BOOL)notify
{
  if (notify)
  {
    delegate = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(EKCalendarChooserOOPWrapperImpl *)self delegate];
      _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
      [delegate2 calendarChooserSelectionDidChange:_ekCalendarChooser];
    }
  }

  v8 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v8 toggleAllCalendars];
}

- (BOOL)showDetailAccessories
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  showDetailAccessories = [v2 showDetailAccessories];

  return showDetailAccessories;
}

- (void)setShowDetailAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowDetailAccessories:accessoriesCopy];
}

- (int64_t)chooserMode
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  chooserMode = [v2 chooserMode];

  return chooserMode;
}

- (void)setChooserMode:(int64_t)mode
{
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setChooserMode:mode];
}

- (BOOL)disableCalendarsUnselectedByFocus
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  disableCalendarsUnselectedByFocus = [v2 disableCalendarsUnselectedByFocus];

  return disableCalendarsUnselectedByFocus;
}

- (void)setDisableCalendarsUnselectedByFocus:(BOOL)focus
{
  focusCopy = focus;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setDisableCalendarsUnselectedByFocus:focusCopy];
}

- (BOOL)allowsPullToRefresh
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  allowsPullToRefresh = [v2 allowsPullToRefresh];

  return allowsPullToRefresh;
}

- (void)setAllowsPullToRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setAllowsPullToRefresh:refreshCopy];
}

- (EKCalendar)selectedCalendar
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  selectedCalendar = [v2 selectedCalendar];

  return selectedCalendar;
}

- (void)setSelectedCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v5 setSelectedCalendar:calendarCopy];
}

- (BOOL)showsDeclinedEventsSetting
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  showsDeclinedEventsSetting = [v2 showsDeclinedEventsSetting];

  return showsDeclinedEventsSetting;
}

- (void)setShowsDeclinedEventsSetting:(BOOL)setting
{
  settingCopy = setting;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowsDeclinedEventsSetting:settingCopy];
}

- (int)explanatoryTextMode
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  explanatoryTextMode = [v2 explanatoryTextMode];

  return explanatoryTextMode;
}

- (void)setExplanatoryTextMode:(int)mode
{
  v3 = *&mode;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setExplanatoryTextMode:v3];
}

- (BOOL)showAccountStatus
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  showAccountStatus = [v2 showAccountStatus];

  return showAccountStatus;
}

- (void)setShowAccountStatus:(BOOL)status
{
  statusCopy = status;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setShowAccountStatus:statusCopy];
}

- (BOOL)onlyShowUnmanagedAccounts
{
  v2 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  onlyShowUnmanagedAccounts = [v2 onlyShowUnmanagedAccounts];

  return onlyShowUnmanagedAccounts;
}

- (void)setOnlyShowUnmanagedAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  v4 = [(EKCalendarChooserOOPWrapperImpl *)self vc];
  [v4 setOnlyShowUnmanagedAccounts:accountsCopy];
}

- (id)centeredCalendar
{
  v2 = objc_alloc_init(MEMORY[0x1E6966990]);

  return v2;
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  [_ekCalendarChooser setToolbarItems:itemsCopy];
}

- (id)toolbarItems
{
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  toolbarItems = [_ekCalendarChooser toolbarItems];

  return toolbarItems;
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  [_ekCalendarChooser setToolbarItems:itemsCopy animated:animatedCopy];
}

- (id)navigationItem
{
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  navigationItem = [_ekCalendarChooser navigationItem];

  return navigationItem;
}

- (id)navigationController
{
  _ekCalendarChooser = [(EKCalendarChooserOOPWrapperImpl *)self _ekCalendarChooser];
  navigationController = [_ekCalendarChooser navigationController];

  return navigationController;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    navigationController = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    navigationController = [(EKCalendarChooserOOPWrapperImpl *)self navigationController];
  }

  return navigationController;
}

@end