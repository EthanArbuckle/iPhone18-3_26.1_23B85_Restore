@interface EKUIConfirmMultiPasteViewController
- (EKUIConfirmMultiPasteViewController)initWithSearchResult:(id)result pasteboardManager:(id)manager eventStore:(id)store dateForPaste:(id)paste;
- (EKUIConfirmMultiPasteViewControllerDelegate)delegate;
- (id)popupMenu:(id)menu;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancel:(id)_cancel;
- (void)_done:(id)_done;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKUIConfirmMultiPasteViewController

- (EKUIConfirmMultiPasteViewController)initWithSearchResult:(id)result pasteboardManager:(id)manager eventStore:(id)store dateForPaste:(id)paste
{
  resultCopy = result;
  managerCopy = manager;
  storeCopy = store;
  pasteCopy = paste;
  v30.receiver = self;
  v30.super_class = EKUIConfirmMultiPasteViewController;
  v15 = [(EKUIConfirmMultiPasteViewController *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchResult, result);
    objc_storeStrong(&v16->_pasteboardManager, manager);
    objc_storeStrong(&v16->_eventStore, store);
    calendarToPasteTo = [managerCopy calendarToPasteTo];
    selectedCalendar = v16->_selectedCalendar;
    v16->_selectedCalendar = calendarToPasteTo;

    objc_storeStrong(&v16->_dateForPaste, paste);
    v19 = EventKitUIBundle();
    v20 = [v19 localizedStringForKey:@"Paste Multiple Events" value:&stru_1F4EF6790 table:0];
    navigationItem = [(EKUIConfirmMultiPasteViewController *)v16 navigationItem];
    [navigationItem setTitle:v20];

    v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v16 action:sel__cancel_];
    navigationItem2 = [(EKUIConfirmMultiPasteViewController *)v16 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v22];

    v24 = objc_alloc(MEMORY[0x1E69DC708]);
    v25 = EventKitUIBundle();
    v26 = [v25 localizedStringForKey:@"Paste - confirmation nav bar button" value:@"Paste" table:0];
    v27 = [v24 initWithTitle:v26 style:2 target:v16 action:sel__done_];
    navigationItem3 = [(EKUIConfirmMultiPasteViewController *)v16 navigationItem];
    [navigationItem3 setRightBarButtonItem:v27];
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EKUIConfirmMultiPasteViewController;
  [(EKUIConfirmMultiPasteViewController *)&v6 viewWillAppear:appear];
  navigationController = [(EKUIConfirmMultiPasteViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];
}

- (void)viewDidLoad
{
  v52[7] = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = EKUIConfirmMultiPasteViewController;
  [(EKUIConfirmMultiPasteViewController *)&v51 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(EKUIConfirmMultiPasteViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = EventKitUIBundle();
  v9 = [v8 localizedStringForKey:@"paste_x_events_calendar_selection" value:&stru_1F4EF6790 table:0];
  pasteboardResults = [(EKAutocompleteSearchResult *)self->_searchResult pasteboardResults];
  v11 = [v7 localizedStringWithFormat:v9, objc_msgSend(pasteboardResults, "count")];
  [(UILabel *)self->_descriptionLabel setText:v11];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  view2 = [(EKUIConfirmMultiPasteViewController *)self view];
  [view2 addSubview:self->_descriptionLabel];

  v13 = objc_alloc_init(MEMORY[0x1E69DD020]);
  tableView = self->_tableView;
  self->_tableView = v13;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  view3 = [(EKUIConfirmMultiPasteViewController *)self view];
  [view3 addSubview:self->_tableView];

  v36 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UILabel *)self->_descriptionLabel leadingAnchor];
  view4 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide = [view4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v46;
  trailingAnchor = [(UILabel *)self->_descriptionLabel trailingAnchor];
  view5 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[1] = v41;
  topAnchor = [(UILabel *)self->_descriptionLabel topAnchor];
  view6 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide3 = [view6 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[2] = v35;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  view7 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide4 = [view7 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v52[3] = v30;
  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  view8 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide5 = [view8 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v52[4] = v16;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v19 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v52[5] = v19;
  bottomAnchor2 = [(UITableView *)self->_tableView bottomAnchor];
  view9 = [(EKUIConfirmMultiPasteViewController *)self view];
  layoutMarginsGuide6 = [view9 layoutMarginsGuide];
  bottomAnchor3 = [layoutMarginsGuide6 bottomAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v52[6] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:7];
  [v36 activateConstraints:v25];
}

- (void)_cancel:(id)_cancel
{
  [(EKUIConfirmMultiPasteViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(EKUIConfirmMultiPasteViewController *)self delegate];
  [delegate confirmMultiPasteViewController:self finishedWithCancel:1];
}

- (void)_done:(id)_done
{
  [(CUIKPasteboardManager *)self->_pasteboardManager setCalendarForPaste:self->_selectedCalendar];
  [(CUIKPasteboardManager *)self->_pasteboardManager setDateForPaste:self->_dateForPaste];
  pasteboardManager = self->_pasteboardManager;

  [(CUIKPasteboardManager *)pasteboardManager pasteEventsWithDateMode:0 delegate:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [[EKUIPopupTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  if (EKUICatalyst())
  {
    v10 = [(EKUIConfirmMultiPasteViewController *)self popupMenu:systemBackgroundColor];
    [(EKUIPopupTableViewCell *)v8 setPopupMenu:v10];
  }

  else
  {
    v11 = [EKUICalendarMenu placeholderMenuForCalendar:self->_selectedCalendar backgroundColor:systemBackgroundColor];
    [(EKUIPopupTableViewCell *)v8 setPopupMenu:v11];

    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__21;
    v23[4] = __Block_byref_object_dispose__21;
    v24 = 0;
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__EKUIConfirmMultiPasteViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v18[3] = &unk_1E84401A8;
    objc_copyWeak(&v21, &location);
    v20 = v23;
    v19 = systemBackgroundColor;
    [(EKUIPopupTableViewCell *)v8 setPopupMenuProvider:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    _Block_object_dispose(v23, 8);
  }

  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Calendar" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUIPopupTableViewCell *)v8 textLabel];
  [textLabel setText:v13];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel2 = [(EKUIPopupTableViewCell *)v8 textLabel];
  [textLabel2 setTextColor:labelColor];

  return v8;
}

void *__71__EKUIConfirmMultiPasteViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && !*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [WeakRetained popupMenu:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = v7;

  return v7;
}

- (id)popupMenu:(id)menu
{
  menuCopy = menu;
  v5 = [MEMORY[0x1E69933B0] calendarsLimitedToSource:0 writability:2 onlyUnmanagedAccounts:0 forEvent:0 entityType:0 inEventStore:self->_eventStore];
  objc_initWeak(&location, self);
  eventStore = self->_eventStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__EKUIConfirmMultiPasteViewController_popupMenu___block_invoke;
  v11[3] = &unk_1E84401D0;
  objc_copyWeak(&v12, &location);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__EKUIConfirmMultiPasteViewController_popupMenu___block_invoke_2;
  v9[3] = &unk_1E84401F8;
  objc_copyWeak(&v10, &location);
  v7 = [EKUICalendarMenu calendarMenuWithCalendars:v5 eventStore:eventStore backgroundColor:menuCopy setupActionHandler:v11 selectionHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

void __49__EKUIConfirmMultiPasteViewController_popupMenu___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && [v5 isEqual:*(WeakRetained + 129)])
  {
    [v8 setState:1];
  }
}

void __49__EKUIConfirmMultiPasteViewController_popupMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[129] != v6)
  {
    objc_storeStrong(WeakRetained + 129, a2);
    [v5[125] reloadData];
  }
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result)
  {
    v11 = v5;
    v12 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __97__EKUIConfirmMultiPasteViewController_pasteboardManager_didFinishPasteWithResult_willOpenEditor___block_invoke;
    v9[3] = &unk_1E84407B0;
    editorCopy = editor;
    v9[4] = self;
    [(EKUIConfirmMultiPasteViewController *)self dismissViewControllerAnimated:1 completion:v9];
    delegate = [(EKUIConfirmMultiPasteViewController *)self delegate];
    [delegate confirmMultiPasteViewController:self finishedWithCancel:0];
  }
}

void __97__EKUIConfirmMultiPasteViewController_pasteboardManager_didFinishPasteWithResult_willOpenEditor___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 attemptDisplayReviewPrompt];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(EKUIConfirmMultiPasteViewController *)self delegate];
  [delegate confirmMultiPasteViewController:self finishedWithCancel:1];
}

- (EKUIConfirmMultiPasteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end