@interface RAPReportComposerPlaceClosureIssueSection
- (RAPReportComposerPlaceClosureIssueSection)initWithQuestion:(id)a3 selection:(id)a4;
- (id)cellForRowAtIndex:(int64_t)a3;
- (int64_t)rowsCount;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
@end

@implementation RAPReportComposerPlaceClosureIssueSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v6 = [(RAPPlaceClosureQuestion *)self->_question selectableIssues:a3];
  v8 = [v6 objectAtIndexedSubscript:a3];

  [(RAPPlaceClosureQuestion *)self->_question setSelectedIssue:v8];
  selection = self->_selection;
  if (selection)
  {
    selection[2]();
  }
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v5 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  v6 = [(RAPPlaceClosureQuestion *)self->_question selectableIssues];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [v7 localizedName];
  v9 = [v5 textLabel];
  [v9 setText:v8];

  v10 = [(RAPPlaceClosureQuestion *)self->_question selectedIssue];

  if (v10 == v7)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v5 setAccessoryType:v11];
  [v5 setSelectionStyle:0];

  return v5;
}

- (int64_t)rowsCount
{
  v2 = [(RAPPlaceClosureQuestion *)self->_question selectableIssues];
  v3 = [v2 count];

  return v3;
}

- (RAPReportComposerPlaceClosureIssueSection)initWithQuestion:(id)a3 selection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = RAPReportComposerPlaceClosureIssueSection;
  v9 = [(RAPTablePartSection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, a3);
    [(RAPQuestion *)v10->_question addObserver:v10 changeHandler:&stru_101622D80];
    v11 = [(RAPPlaceClosureQuestion *)v10->_question localizedSelectableIssueLabel];
    [(RAPTablePartSection *)v10 setHeaderTitle:v11];

    v12 = [v8 copy];
    selection = v10->_selection;
    v10->_selection = v12;
  }

  return v10;
}

@end