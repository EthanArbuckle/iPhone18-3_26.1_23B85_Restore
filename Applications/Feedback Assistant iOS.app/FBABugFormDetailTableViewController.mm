@interface FBABugFormDetailTableViewController
- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (FBABugFormEditorDelegate)delegate;
- (id)getPathToScrollTo;
- (id)keyCommands;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)beginSearch;
- (void)commitSelection;
- (void)dealloc;
- (void)didGetClientSideResolvedNotification:(id)notification;
- (void)recordCheckboxAnswers;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)selectNext;
- (void)selectPrevious;
- (void)setQuestion:(id)question;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCheckboxDelegateIfNeeded;
- (void)updateChoices;
- (void)updateSearchBar;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation FBABugFormDetailTableViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBABugFormDetailTableViewController;
  [(FBABugFormDetailTableViewController *)&v11 viewDidLoad];
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:44.0];

  tableView2 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView2 setSectionHeaderHeight:UITableViewAutomaticDimension];

  tableView3 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  tableView4 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView4 setRowHeight:UITableViewAutomaticDimension];

  tableView5 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView5 setEstimatedSectionFooterHeight:0.0];

  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  tableView6 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView6 setBackgroundColor:v8];

  tableView7 = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView7 _setHeaderAndFooterViewsFloat:0];

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

- (void)setQuestion:(id)question
{
  questionCopy = question;
  objc_storeStrong(&self->_question, question);
  choiceSetResolver = [questionCopy choiceSetResolver];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = v6;
  if (choiceSetResolver)
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
  question = [(FBABugFormDetailTableViewController *)self question];
  allChoices = [question allChoices];
  v5 = [NSPredicate predicateWithFormat:@"isPrompt = NO"];
  v6 = [allChoices filteredArrayUsingPredicate:v5];
  [(FBABugFormDetailTableViewController *)self setVisibleChoices:v6];

  visibleChoices = [(FBABugFormDetailTableViewController *)self visibleChoices];
  [(FBABugFormDetailTableViewController *)self setSearchResultChoices:visibleChoices];

  [(FBABugFormDetailTableViewController *)self updateSearchBar];
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateSearchBar
{
  v22 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  [v22 frame];
  v4 = v3;
  visibleChoices = [(FBABugFormDetailTableViewController *)self visibleChoices];
  v6 = [visibleChoices count];

  question = [(FBABugFormDetailTableViewController *)self question];
  if ([question answerType] != 2)
  {
    goto LABEL_6;
  }

  v8 = v4 * v6;
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView frame];
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

    searchController = [(FBABugFormDetailTableViewController *)self searchController];
    [searchController setSearchResultsUpdater:self];

    v15 = self->_searchController;
    navigationItem = [(FBABugFormDetailTableViewController *)self navigationItem];
    [navigationItem setSearchController:v15];

    searchController2 = [(FBABugFormDetailTableViewController *)self searchController];
    [searchController2 setDelegate:self];

    searchController3 = [(FBABugFormDetailTableViewController *)self searchController];
    [searchController3 setObscuresBackgroundDuringPresentation:0];

    searchController4 = [(FBABugFormDetailTableViewController *)self searchController];
    searchBar = [searchController4 searchBar];
    [searchBar setDelegate:self];

    searchController5 = [(FBABugFormDetailTableViewController *)self searchController];
    [searchController5 setHidesNavigationBarDuringPresentation:0];

    [(FBABugFormDetailTableViewController *)self setDefinesPresentationContext:1];
  }

LABEL_7:
}

- (void)updateCheckboxDelegateIfNeeded
{
  question = [(FBABugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if (answerType == 4)
  {
    checkboxAnswersAtStart = [(FBABugFormDetailTableViewController *)self checkboxAnswersAtStart];
    answer = [(FBABugFormDetailTableViewController *)self answer];
    values = [answer values];
    v8 = [NSSet setWithArray:values];
    v9 = [checkboxAnswersAtStart isEqualToSet:v8];

    if ((v9 & 1) == 0)
    {
      v10 = +[FBALog appHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        question2 = [(FBABugFormDetailTableViewController *)self question];
        role = [question2 role];
        v15 = 138543362;
        v16 = role;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checkbox answers changed for question [%{public}@]", &v15, 0xCu);
      }

      delegate = [(FBABugFormDetailTableViewController *)self delegate];
      question3 = [(FBABugFormDetailTableViewController *)self question];
      [delegate answerDidChangeForQuestion:question3];
    }
  }
}

- (void)recordCheckboxAnswers
{
  question = [(FBABugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if (answerType == 4)
  {
    answer = [(FBABugFormDetailTableViewController *)self answer];
    values = [answer values];
    v6 = [NSSet setWithArray:values];
    [(FBABugFormDetailTableViewController *)self setCheckboxAnswersAtStart:v6];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  v8 = [tableView dequeueReusableCellWithIdentifier:@"FBADetailTableViewHeaderCell"];

  contentView = [v8 contentView];
  backgroundColor = [contentView backgroundColor];
  [v8 setBackgroundColor:backgroundColor];

  v11 = +[UIColor labelColor];
  textLabel = [v8 textLabel];
  [textLabel setTextColor:v11];

  v13 = [(FBABugFormDetailTableViewController *)self tableView:viewCopy titleForHeaderInSection:section];

  textLabel2 = [v8 textLabel];
  [textLabel2 setText:v13];

  question = [(FBABugFormDetailTableViewController *)self question];
  answerType = [question answerType];
  if (answerType == 4)
  {
    textLabel2 = +[NSBundle mainBundle];
    v17 = [textLabel2 localizedStringForKey:@"CHECKBOX_FOOTER_TITLE" value:&stru_1000E2210 table:0];
  }

  else
  {
    v17 = 0;
  }

  detailTextLabel = [v8 detailTextLabel];
  [detailTextLabel setText:v17];

  if (answerType == 4)
  {
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBABugFormDetailTableViewController *)self searchController:view];
  isActive = [v5 isActive];

  if (isActive)
  {
    searchResultChoices = [(FBABugFormDetailTableViewController *)self searchResultChoices];
    if (searchResultChoices)
    {
      searchResultChoices2 = [(FBABugFormDetailTableViewController *)self searchResultChoices];
      v9 = [searchResultChoices2 count];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    searchResultChoices = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v9 = [searchResultChoices count];
  }

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(FBABugFormDetailTableViewController *)self question:view];
  text = [v4 text];

  return text;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Choice" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [[FBAChoiceCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  }

  searchController = [(FBABugFormDetailTableViewController *)self searchController];
  if ([searchController isActive])
  {
    [(FBABugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBABugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [(FBAChoiceCell *)v7 updateWithChoice:v10];
  question = [(FBABugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if ((answerType - 2) >= 2)
  {
    if (answerType != 4)
    {
      goto LABEL_11;
    }

    answer = [(FBABugFormDetailTableViewController *)self answer];
    values = [answer values];
    [(FBAChoiceCell *)v7 evaluateSelectionWithValues:values];
  }

  else
  {
    answer = [(FBABugFormDetailTableViewController *)self answer];
    values = [answer value];
    [(FBAChoiceCell *)v7 evaluateSelectionWithValue:values];
  }

LABEL_11:

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v6 = [text stringByTrimmingCharactersInSet:v5];

    v7 = [NSPredicate predicateWithFormat:@"title CONTAINS[cd] %@", v6];
    visibleChoices = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v9 = [visibleChoices filteredArrayUsingPredicate:v7];
    v10 = [v9 mutableCopy];
    searchResultChoices = self->_searchResultChoices;
    self->_searchResultChoices = v10;
  }

  else
  {
    visibleChoices2 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    v6 = self->_searchResultChoices;
    self->_searchResultChoices = visibleChoices2;
  }

  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(FBABugFormDetailTableViewController *)self tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  barCopy = bar;
  v8 = [text isEqualToString:@"\t"];
  if (v8)
  {
    [barCopy endEditing:1];
    [(FBABugFormDetailTableViewController *)self becomeFirstResponder];
    [(FBABugFormDetailTableViewController *)self selectNext];
  }

  return v8 ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  searchController = [(FBABugFormDetailTableViewController *)self searchController];
  if ([searchController isActive])
  {
    [(FBABugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBABugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  question = [(FBABugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if ((answerType - 2) >= 2)
  {
    if (answerType == 4)
    {
      values = [(FBKAnswer *)self->_answer values];
      value = [v10 value];
      v24 = [values containsObject:value];

      values2 = [(FBKAnswer *)self->_answer values];
      value2 = [v10 value];
      if (v24)
      {
        v27 = [NSPredicate predicateWithFormat:@"SELF != %@", value2];
        v28 = [values2 filteredArrayUsingPredicate:v27];
        [(FBKAnswer *)self->_answer setValues:v28];
      }

      else
      {
        v27 = [values2 arrayByAddingObject:value2];
        [(FBKAnswer *)self->_answer setValues:v27];
      }

      visibleCells = [viewCopy visibleCells];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100035470;
      v29[3] = &unk_1000DEC28;
      v29[4] = self;
      [visibleCells enumerateObjectsUsingBlock:v29];
    }

    else
    {
      visibleCells = +[FBALog appHandle];
      if (os_log_type_enabled(visibleCells, OS_LOG_TYPE_ERROR))
      {
        sub_100094094(self, visibleCells);
      }
    }
  }

  else
  {
    visibleCells2 = [viewCopy visibleCells];
    [visibleCells2 enumerateObjectsUsingBlock:&stru_1000DF818];

    answer = [(FBABugFormDetailTableViewController *)self answer];
    value3 = [v10 value];
    [answer setValue:value3];

    visibleCells = [viewCopy cellForRowAtIndexPath:pathCopy];
    answer2 = [(FBABugFormDetailTableViewController *)self answer];
    value4 = [answer2 value];
    [visibleCells evaluateSelectionWithValue:value4];

    delegate = [(FBABugFormDetailTableViewController *)self delegate];
    question2 = [(FBABugFormDetailTableViewController *)self question];
    [delegate answerDidChangeForQuestion:question2];

    searchController2 = [(FBABugFormDetailTableViewController *)self searchController];
    LODWORD(question2) = [searchController2 isActive];

    if (question2)
    {
      [(FBABugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(FBABugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didGetClientSideResolvedNotification:(id)notification
{
  object = [notification object];
  question = [(FBABugFormDetailTableViewController *)self question];
  choiceSetResolver = [question choiceSetResolver];
  v7 = [object isEqual:choiceSetResolver];

  if (v7)
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      question2 = [(FBABugFormDetailTableViewController *)self question];
      allChoices = [question2 allChoices];
      v11[0] = 67109120;
      v11[1] = [allChoices count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updating choice set with [%i] choices", v11, 8u);
    }

    [(FBABugFormDetailTableViewController *)self updateChoices];
  }
}

- (id)getPathToScrollTo
{
  visibleChoices = [(FBABugFormDetailTableViewController *)self visibleChoices];
  value = [(FBKAnswer *)self->_answer value];
  v5 = [NSPredicate predicateWithFormat:@"value ==[c] %@", value];
  v6 = [visibleChoices filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    visibleChoices2 = [(FBABugFormDetailTableViewController *)self visibleChoices];
    firstObject = [v6 firstObject];
    v9 = [visibleChoices2 indexOfObject:firstObject];

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
  searchController = [(FBABugFormDetailTableViewController *)self searchController];

  if (searchController)
  {
    searchController2 = [(FBABugFormDetailTableViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    [searchBar becomeFirstResponder];
  }
}

- (void)selectNext
{
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableView2 = [(FBABugFormDetailTableViewController *)self tableView];
  v5 = [tableView2 numberOfRowsInSection:0];

  v6 = [indexPathForSelectedRow row];
  if (!indexPathForSelectedRow && (v7 = 0, v5 > 0) || (v7 = v6 + 1, (v6 + 1) < v5))
  {
    tableView3 = [(FBABugFormDetailTableViewController *)self tableView];
    v9 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [tableView3 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
  }
}

- (void)selectPrevious
{
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableView2 = [(FBABugFormDetailTableViewController *)self tableView];
  v5 = [tableView2 numberOfRowsInSection:0];

  v6 = [indexPathForSelectedRow row];
  if (!indexPathForSelectedRow && (v7 = v5 < 1, v8 = v5 - 1, !v7) || (v8 = v6 - 1, v6 >= 1))
  {
    tableView3 = [(FBABugFormDetailTableViewController *)self tableView];
    v10 = [NSIndexPath indexPathForRow:v8 inSection:0];
    [tableView3 selectRowAtIndexPath:v10 animated:1 scrollPosition:2];
  }
}

- (void)commitSelection
{
  tableView = [(FBABugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(FBABugFormDetailTableViewController *)self tableView];
    [(FBABugFormDetailTableViewController *)self tableView:tableView2 didSelectRowAtIndexPath:indexPathForSelectedRow];
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