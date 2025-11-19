@interface RemindersListAddPersonController
- (RemindersContactEditorDelegate)delegate;
- (RemindersListAddPersonController)initWithAllowsPhoneNumbers:(BOOL)a3;
- (double)_maxScrollerHeight;
- (id)_searchManager;
- (id)_searchResultsView;
- (id)_shadowView;
- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4;
- (id)recipientFromContact:(id)a3;
- (int64_t)_interfaceIdiomToUse;
- (void)_hideSearchFieldAndCancelOutstandingSearches:(BOOL)a3;
- (void)_showSearchField;
- (void)addContact:(id)a3;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)commit;
- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4;
- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4;
- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4;
- (void)composeRecipientView:(id)a3 textDidChange:(id)a4;
- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3;
- (void)composeRecipientViewRequestAddRecipient:(id)a3;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)finishedSearchingForAutocompleteResults;
- (void)finishedTaskWithID:(id)a3;
- (void)loadView;
- (void)searchWithText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation RemindersListAddPersonController

- (RemindersListAddPersonController)initWithAllowsPhoneNumbers:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = RemindersListAddPersonController;
  v4 = [(RemindersListAddPersonController *)&v13 init];
  if (v4)
  {
    v5 = [objc_opt_class() titleString];
    v6 = [(RemindersListAddPersonController *)v4 navigationItem];
    [v6 setTitle:v5];

    v7 = [[CNComposeRecipientTextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    composeView = v4->_composeView;
    v4->_composeView = v7;

    v9 = +[NSArray array];
    [(CNComposeRecipientTextView *)v4->_composeView setAddresses:v9];

    v10 = objc_alloc_init(CNAutocompleteResultsTableViewController);
    searchResultsViewController = v4->_searchResultsViewController;
    v4->_searchResultsViewController = v10;

    [(CNAutocompleteResultsTableViewController *)v4->_searchResultsViewController setDelegate:v4];
    v4->_allowsPhoneNumbers = a3;
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
  v6 = [objc_opt_class() composeLabel];
  [(CNComposeRecipientTextView *)self->_composeView setLabel:v6];

  [(CNComposeRecipientTextView *)self->_composeView setDelegate:self];
  v7 = [[UIScrollView alloc] initWithFrame:{0.0, 0.0, 0.0, v5}];
  composeScrollView = self->_composeScrollView;
  self->_composeScrollView = v7;

  [(UIScrollView *)self->_composeScrollView setAutoresizingMask:2];
  [(UIScrollView *)self->_composeScrollView addSubview:self->_composeView];
  [v9 addSubview:self->_composeScrollView];
  [(RemindersListAddPersonController *)self setView:v9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RemindersListAddPersonController;
  [(RemindersListAddPersonController *)&v4 viewDidAppear:a3];
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
  v9 = [(RemindersListAddPersonController *)self view];
  [v9 safeAreaInsets];
  v11 = v10;

  [(UIScrollView *)self->_composeScrollView setFrame:v4, v11, v6, v8];
}

- (int64_t)_interfaceIdiomToUse
{
  v2 = [(RemindersListAddPersonController *)self view];
  v3 = [v2 window];
  v4 = [v3 traitCollection];

  v5 = [v4 horizontalSizeClass];
  v6 = [v4 verticalSizeClass];
  v7 = 1;
  if (v5 != 2)
  {
    v7 = -1;
  }

  if (v6 == 2 && v5 == 1)
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
  v3 = [(RemindersListAddPersonController *)self view];
  [v3 bounds];
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
  v3 = [(RemindersListAddPersonController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (!self->_searchResultsView)
  {
    v12 = [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController tableView];
    searchResultsView = self->_searchResultsView;
    self->_searchResultsView = v12;

    [(UITableView *)self->_searchResultsView setAutoresizingMask:34];
  }

  v14 = [(RemindersListAddPersonController *)self view];
  v15 = [v14 window];
  v16 = [(RemindersListAddPersonController *)self view];
  v53 = v5;
  v54 = v9;
  [v15 convertRect:v16 fromView:{v5, v7, v9, v11}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(RemindersListAddPersonController *)self view];
  v26 = [v25 window];
  [(UIScrollView *)self->_composeScrollView bounds];
  [v26 convertRect:self->_composeScrollView fromView:?];
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
    v39 = [v37 window];
    [v38 bounds];
    [v39 convertRect:v38 fromView:?];
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
  v8 = [(RemindersListAddPersonController *)self _searchResultsView];
  v3 = [v8 superview];

  if (!v3)
  {
    v4 = [(RemindersListAddPersonController *)self view];
    [v4 addSubview:self->_searchResultsView];
  }

  v5 = [(RemindersListAddPersonController *)self _shadowView];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(RemindersListAddPersonController *)self view];
    [v7 addSubview:self->_shadowView];
  }

  [(CNComposeRecipientTextView *)self->_composeView setSeparatorHidden:1];
}

- (void)_hideSearchFieldAndCancelOutstandingSearches:(BOOL)a3
{
  v3 = a3;
  self->_showingSearchField = 0;
  searchResults = self->_searchResults;
  self->_searchResults = 0;

  displayedResults = self->_displayedResults;
  self->_displayedResults = 0;

  [(CNAutocompleteResultsTableViewController *)self->_searchResultsViewController setRecipients:self->_displayedResults];
  if (v3 && self->_lastSearchId)
  {
    v7 = [(RemindersListAddPersonController *)self _searchManager];
    [v7 cancelTaskWithID:self->_lastSearchId];

    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }

  [(UIScrollView *)self->_composeScrollView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = -v15;
  v17 = [(RemindersListAddPersonController *)self view];
  [v17 safeAreaInsets];
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
  v3 = [(RemindersListAddPersonController *)self _interfaceIdiomToUse];
  v4 = [(RemindersListAddPersonController *)self view];
  [v4 bounds];
  v6 = v5;
  if (v3 != 1)
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

- (void)searchWithText:(id)a3
{
  v8 = a3;
  if (self->_lastSearchId)
  {
    v4 = [(RemindersListAddPersonController *)self _searchManager];
    [v4 cancelTaskWithID:self->_lastSearchId];
  }

  [(NSMutableArray *)self->_searchResults removeAllObjects];
  v5 = [(RemindersListAddPersonController *)self _searchManager];
  v6 = [v5 searchForText:v8 withAutocompleteFetchContext:0 consumer:self];
  lastSearchId = self->_lastSearchId;
  self->_lastSearchId = v6;
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  v9 = a3;
  if ([a4 isEqual:self->_lastSearchId] && objc_msgSend(v9, "count"))
  {
    searchResults = self->_searchResults;
    if (!searchResults)
    {
      v7 = +[NSMutableArray array];
      v8 = self->_searchResults;
      self->_searchResults = v7;

      searchResults = self->_searchResults;
    }

    [(NSMutableArray *)searchResults addObjectsFromArray:v9];
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

- (void)finishedTaskWithID:(id)a3
{
  if ([a3 isEqual:self->_lastSearchId])
  {
    lastSearchId = self->_lastSearchId;
    self->_lastSearchId = 0;
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)a3
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
  v13 = [(RemindersListAddPersonController *)self navigationController];
  [v13 presentModalViewController:v4 withTransition:8];
}

- (void)composeRecipientViewDidFinishPickingRecipient:(id)a3
{
  v4 = [(RemindersListAddPersonController *)self navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  composeView = self->_composeView;

  [(CNComposeRecipientTextView *)composeView becomeFirstResponder];
}

- (id)composeRecipientView:(id)a3 composeRecipientForAddress:(id)a4
{
  v5 = a4;
  if ([(RemindersListAddPersonController *)self allowPhoneNumbers])
  {
    v6 = [v5 cal_isPhoneNumber];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:v5 kind:v6];

  return v7;
}

- (void)composeRecipientView:(id)a3 didRemoveRecipient:(id)a4
{
  [a3 removeRecipient:a4];
  v6 = [(RemindersListAddPersonController *)self delegate];
  v5 = [(CNComposeRecipientTextView *)self->_composeView recipients];
  [v6 controller:self didUpdateRecipients:v5];
}

- (void)composeRecipientView:(id)a3 didFinishEnteringAddress:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (([(UITableView *)self->_searchResultsView isDragging]& 1) == 0)
  {
    [v7 clearText];
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
    [v7 addAddress:v6];
  }
}

- (void)composeRecipientView:(id)a3 didAddRecipient:(id)a4
{
  [a3 invalidateAtomPresentationOptionsForRecipient:a4];
  v6 = [(RemindersListAddPersonController *)self delegate];
  v5 = [(CNComposeRecipientTextView *)self->_composeView recipients];
  [v6 controller:self didUpdateRecipients:v5];
}

- (void)composeRecipientView:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    [(RemindersListAddPersonController *)self searchWithText:v5];
  }

  else
  {
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
  }
}

- (void)composeHeaderView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if (!self->_showingSearchField)
  {
    [(CNComposeRecipientTextView *)self->_composeView frame];
    if (v11 != height)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = [(CNComposeRecipientTextView *)self->_composeView addButton];
      [v15 setAlpha:0.0];

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

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  if (a4)
  {
    composeView = self->_composeView;
    v7 = a4;
    [(CNComposeRecipientTextView *)composeView clearText];
    [(RemindersListAddPersonController *)self _hideSearchFieldAndCancelOutstandingSearches:1];
    [(CNComposeRecipientTextView *)self->_composeView addRecipient:v7];
  }
}

- (id)recipientFromContact:(id)a3
{
  v3 = a3;
  v4 = [v3 emailAddresses];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 emailAddresses];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 value];
  }

  else
  {
    v9 = [v3 phoneNumbers];
    v8 = [v9 count];

    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = [v3 phoneNumbers];
    v11 = [v10 objectAtIndexedSubscript:0];
    v6 = [v11 value];

    v8 = [v6 stringValue];
  }

LABEL_6:
  v12 = [[CNComposeRecipient alloc] initWithContact:v3 address:v8 kind:v5 == 0];

  return v12;
}

- (void)addContact:(id)a3
{
  v4 = [(RemindersListAddPersonController *)self recipientFromContact:a3];
  [(CNComposeRecipientTextView *)self->_composeView addRecipient:v4];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  [(RemindersListAddPersonController *)self addContact:a4];
  composeView = self->_composeView;

  [(RemindersListAddPersonController *)self composeRecipientViewDidFinishPickingRecipient:composeView];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v13 = a4;
  v5 = [v13 key];
  v6 = [v5 isEqualToString:CNContactEmailAddressesKey];

  v7 = [v13 value];
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = [v7 stringValue];

    v8 = v9;
  }

  v10 = [CNComposeRecipient alloc];
  v11 = [v13 contact];
  v12 = [v10 initWithContact:v11 address:v8 kind:v6 ^ 1];

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