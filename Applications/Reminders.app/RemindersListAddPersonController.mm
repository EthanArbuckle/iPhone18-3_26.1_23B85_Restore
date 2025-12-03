@interface RemindersListAddPersonController
- (RemindersContactEditorDelegate)delegate;
- (RemindersListAddPersonController)initWithAllowsPhoneNumbers:(BOOL)numbers;
- (double)_maxScrollerHeight;
- (id)_searchManager;
- (id)_searchResultsView;
- (id)_shadowView;
- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address;
- (id)recipientFromContact:(id)contact;
- (int64_t)_interfaceIdiomToUse;
- (void)_hideSearchFieldAndCancelOutstandingSearches:(BOOL)searches;
- (void)_showSearchField;
- (void)addContact:(id)contact;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)commit;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)finishedSearchingForAutocompleteResults;
- (void)finishedTaskWithID:(id)d;
- (void)loadView;
- (void)searchWithText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation RemindersListAddPersonController

- (RemindersListAddPersonController)initWithAllowsPhoneNumbers:(BOOL)numbers
{
  v13.receiver = self;
  v13.super_class = RemindersListAddPersonController;
  v4 = [(RemindersListAddPersonController *)&v13 init];
  if (v4)
  {
    titleString = [objc_opt_class() titleString];
    navigationItem = [(RemindersListAddPersonController *)v4 navigationItem];
    [navigationItem setTitle:titleString];

    v7 = [[CNComposeRecipientTextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    composeView = v4->_composeView;
    v4->_composeView = v7;

    v9 = +[NSArray array];
    [(CNComposeRecipientTextView *)v4->_composeView setAddresses:v9];

    v10 = objc_alloc_init(CNAutocompleteResultsTableViewController);
    searchResultsViewController = v4->_searchResultsViewController;
    v4->_searchResultsViewController = v10;

    [(CNAutocompleteResultsTableViewController *)v4->_searchResultsViewController setDelegate:v4];
    v4->_allowsPhoneNumbers = numbers;
  }

  return v4;
}

- (void)loadView
{
  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v9 setAutoresizingMask:18];
  v3 = +[UIColor systemBackgroundColor];
  [v9 setBackgroundColor:v3];

  +[CNComposeRecipientTextView preferredHeight];
  v5 = v4;
  [(CNComposeRecipientTextView *)self->_composeView setFrame:0.0, 0.0, 0.0, v4];
  [(CNComposeRecipientTextView *)self->_composeView setAutoresizingMask:2];
  composeLabel = [objc_opt_class() composeLabel];
  [(CNComposeRecipientTextView *)self->_composeView setLabel:composeLabel];

  [(CNComposeRecipientTextView *)self->_composeView setDelegate:self];
  v7 = [[UIScrollView alloc] initWithFrame:{0.0, 0.0, 0.0, v5}];
  composeScrollView = self->_composeScrollView;
  self->_composeScrollView = v7;

  [(UIScrollView *)self->_composeScrollView setAutoresizingMask:2];
  [(UIScrollView *)self->_composeScrollView addSubview:self->_composeView];
  [v9 addSubview:self->_composeScrollView];
  [(RemindersListAddPersonController *)self setView:v9];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RemindersListAddPersonController;
  [(RemindersListAddPersonController *)&v4 viewDidAppear:appear];
  [(CNComposeRecipientTextView *)self->_composeView becomeFirstResponder];
}

- (void)viewSafeAreaInsetsDidChange
{
  v12.receiver = self;
  v12.super_class = RemindersListAddPersonController;
  [(RemindersListAddPersonController *)&v12 viewSafeAreaInsetsDidChange];
  [(UIScrollView *)self->_composeScrollView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  view = [(RemindersListAddPersonController *)self view];
  [view safeAreaInsets];
  v11 = v10;

  [(UIScrollView *)self->_composeScrollView setFrame:v4, v11, v6, v8];
}

- (int64_t)_interfaceIdiomToUse
{
  view = [(RemindersListAddPersonController *)self view];
  window = [view window];
  traitCollection = [window traitCollection];

  horizontalSizeClass = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];
  v7 = 1;
  if (horizontalSizeClass != 2)
  {
    v7 = -1;
  }

  if (verticalSizeClass == 2 && horizontalSizeClass == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (id)_shadowView
{
  view = [(RemindersListAddPersonController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(UIScrollView *)self->_composeScrollView frame];
  v8 = CGRectGetMaxY(v18) + -1.0;
  +[MFSearchShadowView defaultHeight];
  shadowView = self->_shadowView;
  if (shadowView)
  {
    [(MFSearchShadowView *)shadowView setFrame:v5, v8, v7, v9];
  }

  else
  {
    v11 = [[MFSearchShadowView alloc] initWithFrame:{v5, v8, v7, v9}];
    v12 = self->_shadowView;
    self->_shadowView = v11;

    [(MFSearchShadowView *)self->_shadowView setAutoresizingMask:2];
    v13 = self->_shadowView;
    v14 = +[UIColor clearColor];
    [(MFSearchShadowView *)v13 setBackgroundColor:v14];
  }

  v15 = self->_shadowView;

  return v15;
}

- (id)_searchResultsView
{
  view = [(RemindersListAddPersonController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (!self->_searchResultsView)
  {
    tableView = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    searchResultsView = self->_searchResultsView;
    self->_searchResultsView = tableView;

    [(UITableView *)self->_searchResultsView setAutoresizingMask:34];
  }

  view2 = [(RemindersListAddPersonController *)self view];
  window = [view2 window];
  view3 = [(RemindersListAddPersonController *)self view];
  v53 = v5;
  v54 = v9;
  [window convertRect:view3 fromView:{v5, v7, v9, v11}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  view4 = [(RemindersListAddPersonController *)self view];
  window2 = [view4 window];
  [(UIScrollView *)self->_composeScrollView bounds];
  [window2 convertRect:self->_composeScrollView fromView:?];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v55.origin.x = v28;
  v55.origin.y = v30;
  v55.size.width = v32;
  v55.size.height = v34;
  MaxY = CGRectGetMaxY(v55);
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v24;
  MinY = CGRectGetMaxY(v56);
  v37 = +[UIKeyboard activeKeyboard];
  v38 = v37;
  if (v37)
  {
    window3 = [v37 window];
    [v38 bounds];
    [window3 convertRect:v38 fromView:?];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v57.origin.x = v41;
    v57.origin.y = v43;
    v57.size.width = v45;
    v57.size.height = v47;
    MinY = CGRectGetMinY(v57);
  }

  [(UIScrollView *)self->_composeScrollView frame];
  v48 = CGRectGetMaxY(v58);
  if (MinY - MaxY >= 0.0)
  {
    v49 = MinY - MaxY;
  }

  else
  {
    v49 = 0.0;
  }

  [(UITableView *)self->_searchResultsView setFrame:v53, v48, v54, v49];
  v50 = self->_searchResultsView;
  v51 = v50;

  return v50;
}

- (void)_showSearchField
{
  self->_showingSearchField = 1;
  _searchResultsView = [(RemindersListAddPersonController *)self _searchResultsView];
  superview = [_searchResultsView superview];

  if (!superview)
  {
    view = [(RemindersListAddPersonController *)self view];
    [view addSubview:self->_searchResultsView];
  }

  _shadowView = [(RemindersListAddPersonController *)self _shadowView];
  superview2 = [_shadowView superview];

  if (!superview2)
  {
    view2 = [(RemindersListAddPersonController *)self view];
    [view2 addSubview:self->_shadowView];
  }

  [(CNComposeRecipientTextView *)self->_composeView setSeparatorHidden:1];
}

- (void)_hideSearchFieldAndCancelOutstandingSearches:(BOOL)searches
{
  searchesCopy = searches;
  self->_showingSearchField = 0;
  searchResults = self->_searchResults;
  self->_searchResults = 0;

  displayedResults = self->_displayedResults;
  self->_displayedResults = 0;

  [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setRecipients:self->_displayedResults];
  if (searchesCopy && self->_lastSearchId)
  {
    _searchManager = [(RemindersListAddPersonController *)self _searchManager];
    [_searchManager cancelTaskWithID:self->_lastSearchId];

    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }

  [(UIScrollView *)self->_composeScrollView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = -v15;
  view = [(RemindersListAddPersonController *)self view];
  [view safeAreaInsets];
  v19 = v18;

  if (v16)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005535C;
    v20[3] = &unk_1007120F8;
    v20[4] = self;
    v20[5] = v10;
    v20[6] = v19;
    v20[7] = v12;
    v20[8] = v14;
    [UIView animateWithDuration:v20 animations:0.2];
  }

  [(UITableView *)self->_searchResultsView removeFromSuperview];
  [(MFSearchShadowView *)self->_shadowView removeFromSuperview];
  [(CNComposeRecipientTextView *)self->_composeView setSeparatorHidden:0];
}

- (double)_maxScrollerHeight
{
  _interfaceIdiomToUse = [(RemindersListAddPersonController *)self _interfaceIdiomToUse];
  view = [(RemindersListAddPersonController *)self view];
  [view bounds];
  v6 = v5;
  if (_interfaceIdiomToUse != 1)
  {
    +[UIKeyboard defaultSize];
    v6 = v6 - v7;
  }

  return v6;
}

- (id)_searchManager
{
  if (!self->_searchManager)
  {
    v3 = [[CNAutocompleteSearchManager alloc] initWithAutocompleteSearchType:{-[RemindersListAddPersonController allowPhoneNumbers](self, "allowPhoneNumbers")}];
    searchManager = self->_searchManager;
    self->_searchManager = v3;

    v5 = self->_searchManager;
    if (self->_searchAccountID)
    {
      [(CNAutocompleteSearchManager *)v5 setSearchTypes:10];
      v6 = self->_searchManager;
      v7 = [NSArray arrayWithObject:self->_searchAccountID];
      [(CNAutocompleteSearchManager *)v6 setSearchAccountIDs:v7];
    }

    else
    {
      [(CNAutocompleteSearchManager *)v5 setSearchTypes:2];
    }
  }

  v8 = self->_searchManager;

  return v8;
}

- (void)searchWithText:(id)text
{
  textCopy = text;
  if (self->_lastSearchId)
  {
    _searchManager = [(RemindersListAddPersonController *)self _searchManager];
    [_searchManager cancelTaskWithID:self->_lastSearchId];
  }

  [(NSMutableArray *)self->_searchResults removeAllObjects];
  _searchManager2 = [(RemindersListAddPersonController *)self _searchManager];
  v6 = [_searchManager2 searchForText:textCopy withAutocompleteFetchContext:0 consumer:self];
  lastSearchId = self->_lastSearchId;
  self->_lastSearchId = v6;
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  if ([d isEqual:self->_lastSearchId] && objc_msgSend(resultsCopy, "count"))
  {
    searchResults = self->_searchResults;
    if (!searchResults)
    {
      v7 = +[NSMutableArray array];
      v8 = self->_searchResults;
      self->_searchResults = v7;

      searchResults = self->_searchResults;
    }

    [(NSMutableArray *)searchResults addObjectsFromArray:resultsCopy];
    if (!self->_showingSearchField)
    {
      [(RemindersListAddPersonController *)self _showSearchField];
    }
  }
}

- (void)finishedSearchingForAutocompleteResults
{
  if (self->_showingSearchField)
  {
    v4 = [(NSMutableArray *)self->_searchResults copy];
    displayedResults = self->_displayedResults;
    self->_displayedResults = v4;

    v6 = self->_displayedResults;
    searchResultsViewController = self->_searchResultsViewController;

    [(CNAutocompleteResultsTableViewController *)searchResultsViewController setRecipients:v6];
  }
}

- (void)finishedTaskWithID:(id)d
{
  if ([d isEqual:self->_lastSearchId])
  {
    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v4 = objc_opt_new();
  v14 = CNContactEmailAddressesKey;
  v5 = [NSArray arrayWithObjects:&v14 count:1];
  if ([(RemindersListAddPersonController *)self allowPhoneNumbers])
  {
    v6 = [@"emailAddresses.@count > 0" stringByAppendingString:@" || phoneNumbers.@count > 0"];
    v7 = [@"(key == 'emailAddresses')" stringByAppendingString:@" || (key == 'phoneNumbers')"];
    v8 = [v5 arrayByAddingObject:CNContactPhoneNumbersKey];

    v9 = @"(emailAddresses.@count + phoneNumbers.@count) == 1";
    v5 = v8;
  }

  else
  {
    v7 = @"(key == 'emailAddresses')";
    v9 = @"(emailAddresses.@count) == 1";
    v6 = @"emailAddresses.@count > 0";
  }

  [v4 setDelegate:self];
  v10 = [NSPredicate predicateWithFormat:v6];
  [v4 setPredicateForEnablingContact:v10];

  v11 = [NSPredicate predicateWithFormat:v9];
  [v4 setPredicateForSelectionOfContact:v11];

  v12 = [NSPredicate predicateWithFormat:v7];
  [v4 setPredicateForSelectionOfProperty:v12];

  [v4 setDisplayedPropertyKeys:v5];
  [v4 setModalPresentationStyle:18];
  navigationController = [(RemindersListAddPersonController *)self navigationController];
  [navigationController presentModalViewController:v4 withTransition:8];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)recipient
{
  navigationController = [(RemindersListAddPersonController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  composeView = self->_composeView;

  [(CNComposeRecipientTextView *)composeView becomeFirstResponder];
}

- (id)composeRecipientView:(id)view composeRecipientForAddress:(id)address
{
  addressCopy = address;
  if ([(RemindersListAddPersonController *)self allowPhoneNumbers])
  {
    cal_isPhoneNumber = [addressCopy cal_isPhoneNumber];
  }

  else
  {
    cal_isPhoneNumber = 0;
  }

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:addressCopy kind:cal_isPhoneNumber];

  return v7;
}

- (void)composeRecipientView:(id)view didRemoveRecipient:(id)recipient
{
  [view removeRecipient:recipient];
  delegate = [(RemindersListAddPersonController *)self delegate];
  recipients = [(CNComposeRecipientTextView *)self->_composeView recipients];
  [delegate controller:self didUpdateRecipients:recipients];
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  viewCopy = view;
  addressCopy = address;
  if (([(UITableView *)self->_searchResultsView isDragging]& 1) == 0)
  {
    [viewCopy clearText];
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
    [viewCopy addAddress:addressCopy];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  [view invalidateAtomPresentationOptionsForRecipient:recipient];
  delegate = [(RemindersListAddPersonController *)self delegate];
  recipients = [(CNComposeRecipientTextView *)self->_composeView recipients];
  [delegate controller:self didUpdateRecipients:recipients];
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy length])
  {
    [(RemindersListAddPersonController *)self searchWithText:changeCopy];
  }

  else
  {
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
  }
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  if (!self->_showingSearchField)
  {
    [(CNComposeRecipientTextView *)self->_composeView frame];
    if (v11 != height)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      addButton = [(CNComposeRecipientTextView *)self->_composeView addButton];
      [addButton setAlpha:0.0];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100055D38;
      v17[3] = &unk_100712120;
      v17[4] = self;
      v17[5] = v12;
      v17[6] = v13;
      v17[7] = v14;
      *&v17[8] = height;
      *&v17[9] = width;
      *&v17[10] = height;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100055E28;
      v16[3] = &unk_100712170;
      v16[4] = self;
      [UIView animateWithDuration:v17 animations:v16 completion:0.2];
    }
  }
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  if (recipient)
  {
    composeView = self->_composeView;
    recipientCopy = recipient;
    [(CNComposeRecipientTextView *)composeView clearText];
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
    [(CNComposeRecipientTextView *)self->_composeView addRecipient:recipientCopy];
  }
}

- (id)recipientFromContact:(id)contact
{
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  v5 = [emailAddresses count];

  if (v5)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    v7 = [emailAddresses2 objectAtIndexedSubscript:0];
    value = [v7 value];
  }

  else
  {
    phoneNumbers = [contactCopy phoneNumbers];
    value = [phoneNumbers count];

    if (!value)
    {
      goto LABEL_6;
    }

    phoneNumbers2 = [contactCopy phoneNumbers];
    v11 = [phoneNumbers2 objectAtIndexedSubscript:0];
    emailAddresses2 = [v11 value];

    value = [emailAddresses2 stringValue];
  }

LABEL_6:
  v12 = [[CNComposeRecipient alloc] initWithContact:contactCopy address:value kind:v5 == 0];

  return v12;
}

- (void)addContact:(id)contact
{
  v4 = [(RemindersListAddPersonController *)self recipientFromContact:contact];
  [(CNComposeRecipientTextView *)self->_composeView addRecipient:v4];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  [(RemindersListAddPersonController *)self addContact:contact];
  composeView = self->_composeView;

  [(RemindersListAddPersonController *)self composeRecipientViewDidFinishPickingRecipient:composeView];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  v5 = [propertyCopy key];
  v6 = [v5 isEqualToString:CNContactEmailAddressesKey];

  value = [propertyCopy value];
  v8 = value;
  if ((v6 & 1) == 0)
  {
    stringValue = [value stringValue];

    v8 = stringValue;
  }

  v10 = [CNComposeRecipient alloc];
  contact = [propertyCopy contact];
  v12 = [v10 initWithContact:contact address:v8 kind:v6 ^ 1];

  [(CNComposeRecipientTextView *)self->_composeView addRecipient:v12];
  [(RemindersListAddPersonController *)self composeRecipientViewDidFinishPickingRecipient:self->_composeView];
}

- (void)commit
{
  composeView = self->_composeView;
  if (composeView)
  {
    composeView = [composeView textView];
  }

  v3 = composeView;
  if ([composeView isFirstResponder])
  {
    [v3 resignFirstResponder];
  }
}

- (RemindersContactEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end