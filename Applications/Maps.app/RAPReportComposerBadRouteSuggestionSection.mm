@interface RAPReportComposerBadRouteSuggestionSection
- (RAPReportComposerBadRouteSuggestionSection)initWithQuestion:(id)a3 selection:(id)a4;
- (id)cellForRowAtIndex:(int64_t)a3;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
@end

@implementation RAPReportComposerBadRouteSuggestionSection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v6 = [(RAPDirectionsCategoryQuestion *)self->_question betterRouteAvailableMenuItem:a3];
  [(RAPMenuQuestion *)self->_question setSelectedMenuItem:?];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, v6);
  }
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v4 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  v5 = [(RAPDirectionsCategoryQuestion *)self->_question betterRouteAvailableMenuItem];
  v6 = [v5 localizedTitle];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  [v4 setAccessoryType:1];

  return v4;
}

- (RAPReportComposerBadRouteSuggestionSection)initWithQuestion:(id)a3 selection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RAPReportComposerBadRouteSuggestionSection;
  v9 = [(RAPTablePartSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, a3);
    v11 = objc_retainBlock(v8);
    selection = v10->_selection;
    v10->_selection = v11;

    [(RAPQuestion *)v10->_question addObserver:v10 changeHandler:&stru_101650B48];
  }

  return v10;
}

@end