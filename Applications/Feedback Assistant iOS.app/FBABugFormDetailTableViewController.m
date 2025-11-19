@interface FBABugFormDetailTableViewController
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (FBABugFormEditorDelegate)delegate;
- (id)getPathToScrollTo;
- (id)keyCommands;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)beginSearch;
- (void)commitSelection;
- (void)dealloc;
- (void)didGetClientSideResolvedNotification:(id)a3;
- (void)recordCheckboxAnswers;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)selectNext;
- (void)selectPrevious;
- (void)setQuestion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCheckboxDelegateIfNeeded;
- (void)updateChoices;
- (void)updateSearchBar;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBABugFormDetailTableViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBABugFormDetailTableViewController;
  [(FBABugFormDetailTableViewController *)&v11 viewDidLoad];
  v3 = [(FBABugFormDetailTableViewController *)self tableView];
  [v3 setEstimatedSectionHeaderHeight:44.0];

  v4 = [(FBABugFormDetailTableViewController *)self tableView];
  [v4 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v5 = [(FBABugFormDetailTableViewController *)self tableView];
  [v5 setEstimatedRowHeight:44.0];

  v6 = [(FBABugFormDetailTableViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(FBABugFormDetailTableViewController *)self tableView];
  [v7 setEstimatedSectionFooterHeight:0.0];

  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  v9 = [(FBABugFormDetailTableViewController *)self tableView];
  [v9 setBackgroundColor:v8];

  v10 = [(FBABugFormDetailTableViewController *)self tableView];
  [v10 _setHeaderAndFooterViewsFloat:0];

  [(FBABugFormDetailTableViewController *)self updateSearchBar];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:FBKClientSideResolvedChoicesDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = FBABugFormDetailTableViewController;
  [(FBABugFormDetailTableViewController *)&v4 dealloc];
}

- (void)setQuestion:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_question, a3);
  v5 = [v8 choiceSetResolver];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = v6;
  if (v5)
  {
    [v6 addObserver:self selector:"didGetClientSideResolvedNotification:" name:FBKClientSideResolvedChoicesDidChangeNotification object:0];
  }

  else
  {
    [v6 removeObserver:self name:FBKClientSideResolvedChoicesDidChangeNotification object:0];
  }

  [(FBABugFormDetailTableViewController *)self updateChoices];
}

- (void)updateChoices
{
  v3 = [(FBABugFormDetailTableViewController *)self question];
  v4 = [v3 allChoices];
  v5 = [NSPredicate predicateWithFormat:@"isPrompt = NO"];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  [(FBABugFormDetailTableViewController *)self setVisibleChoices:v6];

  v7 = [(FBABugFormDetailTableViewController *)self visibleChoices];
  [(FBABugFormDetailTableViewController *)self setSearchResultChoices:v7];

  [(FBABugFormDetailTableViewController *)self updateSearchBar];
  v8 = [(FBABugFormDetailTableViewController *)self tableView];
  [v8 reloadData];
}

- (void)updateSearchBar
{
  v22 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  [v22 frame];
  v4 = v3;
  v5 = [(FBABugFormDetailTableViewController *)self visibleChoices];
  v6 = [v5 count];

  v7 = [(FBABugFormDetailTableViewController *)self question];
  if ([v7 answerType] != 2)
  {
    goto LABEL_6;
  }

  v8 = v4 * v6;
  v9 = [(FBABugFormDetailTableViewController *)self tableView];
  [v9 frame];
  if (v8 <= v10)
  {

LABEL_6:
    goto LABEL_7;
  }

  searchController = self->_searchController;

  if (!searchController)
  {
    v12 = [[UISearchController alloc] initWithSearchResultsController:0];
    v13 = self->_searchController;
    self->_searchController = v12;

    v14 = [(FBABugFormDetailTableViewController *)self searchController];
    [v14 setSearchResultsUpdater:self];

    v15 = self->_searchController;
    v16 = [(FBABugFormDetailTableViewController *)self navigationItem];
    [v16 setSearchController:v15];

    v17 = [(FBABugFormDetailTableViewController *)self searchController];
    [v17 setDelegate:self];

    v18 = [(FBABugFormDetailTableViewController *)self searchController];
    [v18 setObscuresBackgroundDuringPresentation:0];

    v19 = [(FBABugFormDetailTableViewController *)self searchController];
    v20 = [v19 searchBar];
    [v20 setDelegate:self];

    v21 = [(FBABugFormDetailTableViewController *)self searchController];
    [v21 setHidesNavigationBarDuringPresentation:0];

    [(FBABugFormDetailTableViewController *)self setDefinesPresentationContext:1];
  }

LABEL_7:
}

- (void)updateCheckboxDelegateIfNeeded
{
  v3 = [(FBABugFormDetailTableViewController *)self question];
  v4 = [v3 answerType];

  if (v4 == 4)
  {
    v5 = [(FBABugFormDetailTableViewController *)self checkboxAnswersAtStart];
    v6 = [(FBABugFormDetailTableViewController *)self answer];
    v7 = [v6 values];
    v8 = [NSSet setWithArray:v7];
    v9 = [v5 isEqualToSet:v8];

    if ((v9 & 1) == 0)
    {
      v10 = +[FBALog appHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(FBABugFormDetailTableViewController *)self question];
        v12 = [v11 role];
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checkbox answers changed for question [%{public}@]", &v15, 0xCu);
      }

      v13 = [(FBABugFormDetailTableViewController *)self delegate];
      v14 = [(FBABugFormDetailTableViewController *)self question];
      [v13 answerDidChangeForQuestion:v14];
    }
  }
}

- (void)recordCheckboxAnswers
{
  v3 = [(FBABugFormDetailTableViewController *)self question];
  v4 = [v3 answerType];

  if (v4 == 4)
  {
    v7 = [(FBABugFormDetailTableViewController *)self answer];
    v5 = [v7 values];
    v6 = [NSSet setWithArray:v5];
    [(FBABugFormDetailTableViewController *)self setCheckboxAnswersAtStart:v6];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(FBABugFormDetailTableViewController *)self tableView];
  v8 = [v7 dequeueReusableCellWithIdentifier:@"FBADetailTableViewHeaderCell"];

  v9 = [v8 contentView];
  v10 = [v9 backgroundColor];
  [v8 setBackgroundColor:v10];

  v11 = +[UIColor labelColor];
  v12 = [v8 textLabel];
  [v12 setTextColor:v11];

  v13 = [(FBABugFormDetailTableViewController *)self tableView:v6 titleForHeaderInSection:a4];

  v14 = [v8 textLabel];
  [v14 setText:v13];

  v15 = [(FBABugFormDetailTableViewController *)self question];
  v16 = [v15 answerType];
  if (v16 == 4)
  {
    v14 = +[NSBundle mainBundle];
    v17 = [v14 localizedStringForKey:@"CHECKBOX_FOOTER_TITLE" value:&stru_1000E2210 table:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v8 detailTextLabel];
  [v18 setText:v17];

  if (v16 == 4)
  {
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBABugFormDetailTableViewController *)self searchController:a3];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(FBABugFormDetailTableViewController *)self searchResultChoices];
    if (v7)
    {
      v8 = [(FBABugFormDetailTableViewController *)self searchResultChoices];
      v9 = [v8 count];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v9 = [v7 count];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(FBABugFormDetailTableViewController *)self question:a3];
  v5 = [v4 text];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Choice" forIndexPath:v6];
  if (!v7)
  {
    v7 = [[FBAChoiceCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  }

  v8 = [(FBABugFormDetailTableViewController *)self searchController];
  if ([v8 isActive])
  {
    [(FBABugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBABugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  [(FBAChoiceCell *)v7 updateWithChoice:v10];
  v11 = [(FBABugFormDetailTableViewController *)self question];
  v12 = [v11 answerType];

  if ((v12 - 2) >= 2)
  {
    if (v12 != 4)
    {
      goto LABEL_11;
    }

    v13 = [(FBABugFormDetailTableViewController *)self answer];
    v14 = [v13 values];
    [(FBAChoiceCell *)v7 evaluateSelectionWithValues:v14];
  }

  else
  {
    v13 = [(FBABugFormDetailTableViewController *)self answer];
    v14 = [v13 value];
    [(FBAChoiceCell *)v7 evaluateSelectionWithValue:v14];
  }

LABEL_11:

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v14 = [v4 text];

  if ([v14 length])
  {
    v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v6 = [v14 stringByTrimmingCharactersInSet:v5];

    v7 = [NSPredicate predicateWithFormat:@"title CONTAINS[cd] %@", v6];
    v8 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v9 = [v8 filteredArrayUsingPredicate:v7];
    v10 = [v9 mutableCopy];
    searchResultChoices = self->_searchResultChoices;
    self->_searchResultChoices = v10;
  }

  else
  {
    v12 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v6 = self->_searchResultChoices;
    self->_searchResultChoices = v12;
  }

  v13 = [(FBABugFormDetailTableViewController *)self tableView];
  [v13 reloadData];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = [(FBABugFormDetailTableViewController *)self tableView];
  v6 = [v4 indexPathForSelectedRow];

  if (v6)
  {
    v5 = [(FBABugFormDetailTableViewController *)self tableView];
    [v5 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = a3;
  v8 = [a5 isEqualToString:@"\t"];
  if (v8)
  {
    [v7 endEditing:1];
    [(FBABugFormDetailTableViewController *)self becomeFirstResponder];
    [(FBABugFormDetailTableViewController *)self selectNext];
  }

  return v8 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(FBABugFormDetailTableViewController *)self searchController];
  if ([v8 isActive])
  {
    [(FBABugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBABugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

  v11 = [(FBABugFormDetailTableViewController *)self question];
  v12 = [v11 answerType];

  if ((v12 - 2) >= 2)
  {
    if (v12 == 4)
    {
      v22 = [(FBKAnswer *)self->_answer values];
      v23 = [v10 value];
      v24 = [v22 containsObject:v23];

      v25 = [(FBKAnswer *)self->_answer values];
      v26 = [v10 value];
      if (v24)
      {
        v27 = [NSPredicate predicateWithFormat:@"SELF != %@", v26];
        v28 = [v25 filteredArrayUsingPredicate:v27];
        [(FBKAnswer *)self->_answer setValues:v28];
      }

      else
      {
        v27 = [v25 arrayByAddingObject:v26];
        [(FBKAnswer *)self->_answer setValues:v27];
      }

      v16 = [v6 visibleCells];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100035470;
      v29[3] = &unk_1000DEC28;
      v29[4] = self;
      [v16 enumerateObjectsUsingBlock:v29];
    }

    else
    {
      v16 = +[FBALog appHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100094094(self, v16);
      }
    }
  }

  else
  {
    v13 = [v6 visibleCells];
    [v13 enumerateObjectsUsingBlock:&stru_1000DF818];

    v14 = [(FBABugFormDetailTableViewController *)self answer];
    v15 = [v10 value];
    [v14 setValue:v15];

    v16 = [v6 cellForRowAtIndexPath:v7];
    v17 = [(FBABugFormDetailTableViewController *)self answer];
    v18 = [v17 value];
    [v16 evaluateSelectionWithValue:v18];

    v19 = [(FBABugFormDetailTableViewController *)self delegate];
    v20 = [(FBABugFormDetailTableViewController *)self question];
    [v19 answerDidChangeForQuestion:v20];

    v21 = [(FBABugFormDetailTableViewController *)self searchController];
    LODWORD(v20) = [v21 isActive];

    if (v20)
    {
      [(FBABugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(FBABugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didGetClientSideResolvedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(FBABugFormDetailTableViewController *)self question];
  v6 = [v5 choiceSetResolver];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(FBABugFormDetailTableViewController *)self question];
      v10 = [v9 allChoices];
      v11[0] = 67109120;
      v11[1] = [v10 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updating choice set with [%i] choices", v11, 8u);
    }

    [(FBABugFormDetailTableViewController *)self updateChoices];
  }
}

- (id)getPathToScrollTo
{
  v3 = [(FBABugFormDetailTableViewController *)self visibleChoices];
  v4 = [(FBKAnswer *)self->_answer value];
  v5 = [NSPredicate predicateWithFormat:@"value ==[c] %@", v4];
  v6 = [v3 filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    v7 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v8 = [v6 firstObject];
    v9 = [v7 indexOfObject:v8];

    v10 = [NSIndexPath indexPathForRow:v9 inSection:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)beginSearch
{
  v3 = [(FBABugFormDetailTableViewController *)self searchController];

  if (v3)
  {
    v5 = [(FBABugFormDetailTableViewController *)self searchController];
    v4 = [v5 searchBar];
    [v4 becomeFirstResponder];
  }
}

- (void)selectNext
{
  v3 = [(FBABugFormDetailTableViewController *)self tableView];
  v10 = [v3 indexPathForSelectedRow];

  v4 = [(FBABugFormDetailTableViewController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];

  v6 = [v10 row];
  if (!v10 && (v7 = 0, v5 > 0) || (v7 = v6 + 1, (v6 + 1) < v5))
  {
    v8 = [(FBABugFormDetailTableViewController *)self tableView];
    v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [v8 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
  }
}

- (void)selectPrevious
{
  v3 = [(FBABugFormDetailTableViewController *)self tableView];
  v11 = [v3 indexPathForSelectedRow];

  v4 = [(FBABugFormDetailTableViewController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];

  v6 = [v11 row];
  if (!v11 && (v7 = v5 < 1, v8 = v5 - 1, !v7) || (v8 = v6 - 1, v6 >= 1))
  {
    v9 = [(FBABugFormDetailTableViewController *)self tableView];
    v10 = [NSIndexPath indexPathForRow:v8 inSection:0];
    [v9 selectRowAtIndexPath:v10 animated:1 scrollPosition:2];
  }
}

- (void)commitSelection
{
  v3 = [(FBABugFormDetailTableViewController *)self tableView];
  v5 = [v3 indexPathForSelectedRow];

  if (v5)
  {
    v4 = [(FBABugFormDetailTableViewController *)self tableView];
    [(FBABugFormDetailTableViewController *)self tableView:v4 didSelectRowAtIndexPath:v5];
  }
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:@"f" modifierFlags:0x100000 action:"beginSearch"];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SEARCH" value:&stru_1000E2210 table:FBKCommonStrings];
  [v2 setDiscoverabilityTitle:v4];

  v5 = [UIKeyCommand keyCommandWithInput:UIKeyInputUpArrow modifierFlags:0 action:"selectPrevious"];
  v6 = [UIKeyCommand keyCommandWithInput:UIKeyInputDownArrow modifierFlags:0 action:"selectNext"];
  v7 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"commitSelection"];
  v10[0] = v2;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];

  return v8;
}

- (FBABugFormEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end