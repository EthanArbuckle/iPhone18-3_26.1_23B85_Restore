@interface EKEventAttendeeCommentsEditViewController
- (BOOL)_canEditAnyParticipantComment;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (EKEventAttendeeCommentsEditViewController)initWithEKEvent:(id)event;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancel;
- (void)_createTableData;
- (void)_done:(id)_done;
- (void)_edit;
- (void)_localeChanged;
- (void)_popViewControllerAnimated:(BOOL)animated;
- (void)_transitionTableViewOutOfEditingMode;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation EKEventAttendeeCommentsEditViewController

- (EKEventAttendeeCommentsEditViewController)initWithEKEvent:(id)event
{
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = EKEventAttendeeCommentsEditViewController;
  v6 = [(EKEventAttendeeCommentsEditViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    headerDateFormatter = v7->_headerDateFormatter;
    v7->_headerDateFormatter = v8;

    [(NSDateFormatter *)v7->_headerDateFormatter setTimeStyle:0];
    [(NSDateFormatter *)v7->_headerDateFormatter setDateStyle:2];
    [(NSDateFormatter *)v7->_headerDateFormatter setDoesRelativeDateFormatting:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];

    [(EKEventAttendeeCommentsEditViewController *)v7 _createTableData];
  }

  return v7;
}

- (void)_createTableData
{
  v42 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  tableData = self->_tableData;
  self->_tableData = array;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v29 = CUIKCalendar();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(EKEvent *)self->_event attendees];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        comment = [v10 comment];
        v12 = [MEMORY[0x1E6993410] stringWithAutoCommentRemoved:comment];

        if ([v12 length])
        {
          commentLastModifiedDate = [v10 commentLastModifiedDate];

          if (commentLastModifiedDate)
          {
            commentLastModifiedDate2 = [v10 commentLastModifiedDate];
            array3 = [v29 startOfDayForDate:commentLastModifiedDate2];

            array2 = [dictionary objectForKeyedSubscript:array3];
            if (!array2)
            {
              array2 = [MEMORY[0x1E695DF70] array];
              [dictionary setObject:array2 forKeyedSubscript:array3];
            }

            [array2 addObject:v10];
          }

          else
          {
            distantPast = [MEMORY[0x1E695DF00] distantPast];
            array3 = [dictionary objectForKeyedSubscript:distantPast];

            if (!array3)
            {
              array3 = [MEMORY[0x1E695DF70] array];
              distantPast2 = [MEMORY[0x1E695DF00] distantPast];
              [dictionary setObject:array3 forKeyedSubscript:distantPast2];
            }

            [array3 addObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  allKeys = [dictionary allKeys];
  v20 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:0 ascending:0];
  v40 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v22 = [allKeys sortedArrayUsingDescriptors:v21];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [dictionary objectForKeyedSubscript:*(*(&v31 + 1) + 8 * j)];
        [v28 sortUsingComparator:&__block_literal_global_43];
        [(NSMutableArray *)self->_tableData addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }
}

uint64_t __61__EKEventAttendeeCommentsEditViewController__createTableData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 commentLastModifiedDate];
  v7 = [v5 commentLastModifiedDate];
  v8 = v7;
  if (!(v6 | v7) || (v9 = [v7 compare:v6]) == 0)
  {
    v10 = [MEMORY[0x1E6993390] displayNameForIdentity:v4];
    v11 = [MEMORY[0x1E6993390] displayNameForIdentity:v5];
    v9 = [v10 caseInsensitiveCompare:v11];
  }

  return v9;
}

- (void)viewDidLoad
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = EKEventAttendeeCommentsEditViewController;
  [(EKEventAttendeeCommentsEditViewController *)&v30 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableView = self->_tableView;
  self->_tableView = v4;

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  view = [(EKEventAttendeeCommentsEditViewController *)self view];
  [view addSubview:self->_tableView];

  v22 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  view2 = [(EKEventAttendeeCommentsEditViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v26;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  view3 = [(EKEventAttendeeCommentsEditViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v21;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  view4 = [(EKEventAttendeeCommentsEditViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v10;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  view5 = [(EKEventAttendeeCommentsEditViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v22 activateConstraints:v15];

  if ([(EKEventAttendeeCommentsEditViewController *)self _canEditAnyParticipantComment])
  {
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel__edit];
    navigationItem = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v16];
  }

  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Comments" value:&stru_1F4EF6790 table:0];
  navigationItem2 = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
  [navigationItem2 setTitle:v19];
}

- (void)_localeChanged
{
  [(EKEventAttendeeCommentsEditViewController *)self _createTableData];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_edit
{
  [(UITableView *)self->_tableView setEditing:1 animated:1];
  [(UITableView *)self->_tableView beginUpdates];
  [(UITableView *)self->_tableView endUpdates];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  navigationItem2 = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v6];
}

- (void)_done:(id)_done
{
  _doneCopy = _done;
  if ([(EKEvent *)self->_event hasChanges])
  {
    eKUI_editor = [(UIResponder *)self EKUI_editor];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__EKEventAttendeeCommentsEditViewController__done___block_invoke;
    aBlock[3] = &unk_1E8441AD8;
    v6 = eKUI_editor;
    v21 = v6;
    selfCopy = self;
    v7 = _Block_copy(aBlock);
    if ([(EKEvent *)self->_event isOrWasPartOfRecurringSeries])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__15;
      v18 = __Block_byref_object_dispose__15;
      v19 = 0;
      event = self->_event;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__EKEventAttendeeCommentsEditViewController__done___block_invoke_37;
      v11[3] = &unk_1E8441B00;
      v11[4] = self;
      v12 = v7;
      v13 = &v14;
      v9 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:self barButtonItem:_doneCopy forEvent:event withCompletionHandler:v11];
      v10 = v15[5];
      v15[5] = v9;

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      (*(v7 + 2))(v7, self->_event, 0);
      [(EKEventAttendeeCommentsEditViewController *)self _transitionTableViewOutOfEditingMode];
      if (![(UITableView *)self->_tableView numberOfSections])
      {
        [(EKEventAttendeeCommentsEditViewController *)self _popViewControllerAnimated:1];
      }
    }
  }

  else
  {
    [(EKEventAttendeeCommentsEditViewController *)self _transitionTableViewOutOfEditingMode];
  }
}

uint64_t __51__EKEventAttendeeCommentsEditViewController__done___block_invoke_37(uint64_t result, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    v2 = result;
    (*(*(result + 40) + 16))();
    v3 = *(*(v2 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    [*(v2 + 32) _transitionTableViewOutOfEditingMode];
    result = [*(*(v2 + 32) + 1000) numberOfSections];
    if (!result)
    {
      v5 = *(v2 + 32);

      return [v5 _popViewControllerAnimated:1];
    }
  }

  return result;
}

- (void)_transitionTableViewOutOfEditingMode
{
  [(UITableView *)self->_tableView setEditing:0 animated:1];
  [(UITableView *)self->_tableView beginUpdates];
  [(UITableView *)self->_tableView endUpdates];
  if ([(EKEventAttendeeCommentsEditViewController *)self _canEditAnyParticipantComment])
  {
    navigationItem2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel__edit];
    navigationItem = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2];
  }

  else
  {
    navigationItem2 = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }

  navigationItem3 = [(EKEventAttendeeCommentsEditViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:0];
}

- (void)_cancel
{
  if ([(EKEvent *)self->_event hasChanges])
  {
    [(EKEvent *)self->_event rollback];
    [(EKEventAttendeeCommentsEditViewController *)self _createTableData];
    [(UITableView *)self->_tableView reloadData];
  }

  [(EKEventAttendeeCommentsEditViewController *)self _transitionTableViewOutOfEditingMode];
}

- (void)_popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationDelegate = [(EKEventAttendeeCommentsEditViewController *)self navigationDelegate];
  v6 = navigationDelegate;
  if (navigationDelegate)
  {
    navigationController = navigationDelegate;
  }

  else
  {
    navigationController = [(EKEventAttendeeCommentsEditViewController *)self navigationController];
  }

  v8 = navigationController;

  if (objc_opt_respondsToSelector())
  {
    [v8 popViewControllerAnimated:animatedCopy];
  }
}

- (BOOL)_canEditAnyParticipantComment
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(EKEvent *)self->_event isEditable])
  {
    if ((-[EKEvent allowsClearingCommentsAsOrganizer](self->_event, "allowsClearingCommentsAsOrganizer") & 1) != 0 || ([MEMORY[0x1E6993470] sharedPreferences], v3 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v3, "forceAllowClearComments"), v3, v4))
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = self->_tableData;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v4 = v10;
            v11 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v17;
              while (2)
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v17 != v13)
                  {
                    objc_enumerationMutation(v4);
                  }

                  if ([*(*(&v16 + 1) + 8 * j) participantType] == 2)
                  {

                    LOBYTE(v4) = 0;
                    goto LABEL_23;
                  }
                }

                v12 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
          LOBYTE(v4) = 1;
        }

        while (v7);
      }

      else
      {
        LOBYTE(v4) = 1;
      }

LABEL_23:
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_tableData objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  tableData = self->_tableData;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](tableData, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [[EKAttendeeCommentsTableViewCell alloc] initWithParticipant:v8];

  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__EKEventAttendeeCommentsEditViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  v11[3] = &unk_1E843EC38;
  v11[4] = self;
  v12 = pathCopy;
  v13 = viewCopy;
  v9 = viewCopy;
  v10 = pathCopy;
  [v9 performBatchUpdates:v11 completion:&__block_literal_global_47];
}

void __92__EKEventAttendeeCommentsEditViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1016) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "section")}];
  v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "row")}];

  [v3 setComment:0];
  v4 = [*(*(a1 + 32) + 1016) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "section")}];
  [v4 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v5 = *(a1 + 48);
  v9[0] = *(a1 + 40);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v5 deleteRowsAtIndexPaths:v6 withRowAnimation:100];

  if (![v4 count])
  {
    [*(*(a1 + 32) + 1016) removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "section")}];
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
    [v7 deleteSections:v8 withRowAnimation:100];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  tableData = self->_tableData;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](tableData, "objectAtIndexedSubscript:", [pathCopy section]);
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  if ([v9 participantType] == 2)
  {
    isEditable = 0;
  }

  else
  {
    isEditable = [(EKEvent *)self->_event isEditable];
  }

  return isEditable;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_tableData objectAtIndexedSubscript:section];
  v6 = [v5 objectAtIndexedSubscript:0];

  commentLastModifiedDate = [v6 commentLastModifiedDate];

  if (commentLastModifiedDate)
  {
    headerDateFormatter = self->_headerDateFormatter;
    commentLastModifiedDate2 = [v6 commentLastModifiedDate];
    v10 = [(NSDateFormatter *)headerDateFormatter stringFromDate:commentLastModifiedDate2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

@end