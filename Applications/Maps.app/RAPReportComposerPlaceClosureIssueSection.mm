@interface RAPReportComposerPlaceClosureIssueSection
- (RAPReportComposerPlaceClosureIssueSection)initWithQuestion:(id)question selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (int64_t)rowsCount;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerPlaceClosureIssueSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  v6 = [(RAPPlaceClosureQuestion *)self->_question selectableIssues:index];
  v8 = [v6 objectAtIndexedSubscript:index];

  [(RAPPlaceClosureQuestion *)self->_question setSelectedIssue:v8];
  selection = self->_selection;
  if (selection)
  {
    selection[2]();
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  selectableIssues = [(RAPPlaceClosureQuestion *)self->_question selectableIssues];
  v7 = [selectableIssues objectAtIndexedSubscript:index];

  localizedName = [v7 localizedName];
  textLabel = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel setText:localizedName];

  selectedIssue = [(RAPPlaceClosureQuestion *)self->_question selectedIssue];

  if (selectedIssue == v7)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [dequeueDefaultSingleLineTableViewCell setAccessoryType:v11];
  [dequeueDefaultSingleLineTableViewCell setSelectionStyle:0];

  return dequeueDefaultSingleLineTableViewCell;
}

- (int64_t)rowsCount
{
  selectableIssues = [(RAPPlaceClosureQuestion *)self->_question selectableIssues];
  v3 = [selectableIssues count];

  return v3;
}

- (RAPReportComposerPlaceClosureIssueSection)initWithQuestion:(id)question selection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v15.receiver = self;
  v15.super_class = RAPReportComposerPlaceClosureIssueSection;
  v9 = [(RAPTablePartSection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, question);
    [(RAPQuestion *)v10->_question addObserver:v10 changeHandler:&stru_101622D80];
    localizedSelectableIssueLabel = [(RAPPlaceClosureQuestion *)v10->_question localizedSelectableIssueLabel];
    [(RAPTablePartSection *)v10 setHeaderTitle:localizedSelectableIssueLabel];

    v12 = [selectionCopy copy];
    selection = v10->_selection;
    v10->_selection = v12;
  }

  return v10;
}

@end