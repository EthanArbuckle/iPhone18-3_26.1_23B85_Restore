@interface RAPReportComposerBadRouteSelectionSection
- (RAPReportComposerBadRouteSelectionSection)initWithQuestion:(id)question willChangeQuestionRequiringNoScroll:(id)scroll;
- (UIEdgeInsets)_separatorInset;
- (id)cellForRowAtIndex:(int64_t)index;
- (int64_t)rowsCount;
- (void)_noteWillSelectWithoutScroll;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerBadRouteSelectionSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(RAPTablePartSection *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  if ([(RAPReportComposerBadRouteSelectionSection *)self _isNoGoodCellIndex:index])
  {
    [(RAPBadRouteSuggestionsQuestion *)self->_question setNoGoodRoutesShown:[(RAPBadRouteSuggestionsQuestion *)self->_question noGoodRoutesShown]^ 1];
    [(RAPReportComposerBadRouteSelectionSection *)self _noteWillSelectWithoutScroll];
  }

  else if ([(RAPReportComposerBadRouteSelectionSection *)self _isExpansionCellIndex:index])
  {
    tableView2 = [(RAPTablePartSection *)self tableView];
    [tableView2 beginUpdates];

    self->_collapsed = 0;
    tableView3 = [(RAPTablePartSection *)self tableView];
    v10 = [NSIndexPath indexPathForRow:[(RAPReportComposerBadRouteSelectionSection *)self _expansionCellIndex] inSection:[(RAPTablePartSection *)self sectionIndex]];
    v22 = v10;
    v11 = [NSArray arrayWithObjects:&v22 count:1];
    [tableView3 deleteRowsAtIndexPaths:v11 withRowAnimation:4];

    v12 = objc_alloc_init(NSMutableArray);
    for (i = [(RAPReportComposerBadRouteSelectionSection *)self _expansionCellIndex]; i < [(RAPReportComposerBadRouteSelectionSection *)self rowsCount]; ++i)
    {
      v14 = [NSIndexPath indexPathForRow:i inSection:[(RAPTablePartSection *)self sectionIndex]];
      [v12 addObject:v14];
    }

    tableView4 = [(RAPTablePartSection *)self tableView];
    [tableView4 insertRowsAtIndexPaths:v12 withRowAnimation:3];

    tableView5 = [(RAPTablePartSection *)self tableView];
    [tableView5 endUpdates];
  }

  else
  {
    selectedRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self->_question selectedRouteSuggestions];
    v18 = [selectedRouteSuggestions mutableCopy];

    if (!v18)
    {
      v18 = objc_alloc_init(NSMutableSet);
    }

    v19 = [(RAPReportComposerBadRouteSelectionSection *)self _selectableRouteSuggestionIndexForCellIndex:index];
    selectableRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self->_question selectableRouteSuggestions];
    v21 = [selectableRouteSuggestions objectAtIndexedSubscript:v19];

    if (v21)
    {
      if ([v18 containsObject:v21])
      {
        [v18 removeObject:v21];
      }

      else
      {
        [v18 addObject:v21];
      }
    }

    [(RAPReportComposerBadRouteSelectionSection *)self _noteWillSelectWithoutScroll];
    [(RAPBadRouteSuggestionsQuestion *)self->_question setSelectedRouteSuggestions:v18];
  }
}

- (void)_noteWillSelectWithoutScroll
{
  willChangeQuestionRequiringNoScroll = self->_willChangeQuestionRequiringNoScroll;
  if (willChangeQuestionRequiringNoScroll)
  {
    willChangeQuestionRequiringNoScroll[2]();
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  if ([(RAPReportComposerBadRouteSelectionSection *)self _isNoGoodCellIndex:?])
  {
    v5 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"NoGoodCell" creationBlock:&stru_101632110];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"No good routes shown" value:@"localized string not found" table:0];
    textLabel = [v5 textLabel];
    [textLabel setText:v7];

    [v5 setChecked:{-[RAPBadRouteSuggestionsQuestion noGoodRoutesShown](self->_question, "noGoodRoutesShown")}];
  }

  else if ([(RAPReportComposerBadRouteSelectionSection *)self _isExpansionCellIndex:index])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100A2A060;
    v19[3] = &unk_101632138;
    v19[4] = self;
    v5 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"ExpandCell" creationBlock:v19];
    tableView = [(RAPTablePartSection *)self tableView];
    tintColor = [tableView tintColor];
    textLabel2 = [v5 textLabel];
    [textLabel2 setTextColor:tintColor];
  }

  else
  {
    v12 = [(RAPReportComposerBadRouteSelectionSection *)self _selectableRouteSuggestionIndexForCellIndex:index];
    selectableRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self->_question selectableRouteSuggestions];
    v14 = [selectableRouteSuggestions objectAtIndexedSubscript:v12];

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v5 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:v16 creationBlock:&stru_101632158];

    [v5 setRoute:v14];
    selectedRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self->_question selectedRouteSuggestions];
    [v5 setChecked:{objc_msgSend(selectedRouteSuggestions, "containsObject:", v14)}];
  }

  return v5;
}

- (UIEdgeInsets)_separatorInset
{
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  +[TransitRouteRAPTableViewCell leadingTextAlignmentMargin];
  v5 = v4;
  v6 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v6 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection)
  {
    left = UIEdgeInsetsZero.left;
    v9 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection2 = [v9 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection2 == 1)
    {
      right = v5;
    }

    v5 = left;
  }

  top = UIEdgeInsetsZero.top;
  v12 = v5;
  v13 = bottom;
  v14 = right;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = top;
  return result;
}

- (int64_t)rowsCount
{
  collapsed = self->_collapsed;
  if (collapsed)
  {
    v3 = 6;
  }

  else
  {
    selectableRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self->_question selectableRouteSuggestions];
    v6 = [selectableRouteSuggestions count];

    v3 = v6 + 1;
    collapsed = self->_collapsed;
  }

  return v3 + collapsed;
}

- (RAPReportComposerBadRouteSelectionSection)initWithQuestion:(id)question willChangeQuestionRequiringNoScroll:(id)scroll
{
  questionCopy = question;
  scrollCopy = scroll;
  v17.receiver = self;
  v17.super_class = RAPReportComposerBadRouteSelectionSection;
  v9 = [(RAPTablePartSection *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, question);
    selectableRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)v10->_question selectableRouteSuggestions];
    v10->_collapsed = [selectableRouteSuggestions count] > 5;

    v12 = [scrollCopy copy];
    willChangeQuestionRequiringNoScroll = v10->_willChangeQuestionRequiringNoScroll;
    v10->_willChangeQuestionRequiringNoScroll = v12;

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Route" value:@"localized string not found" table:0];
    [(RAPTablePartSection *)v10 setHeaderTitle:v15];

    [(RAPQuestion *)v10->_question addObserver:v10 changeHandler:&stru_1016320D0];
  }

  return v10;
}

@end