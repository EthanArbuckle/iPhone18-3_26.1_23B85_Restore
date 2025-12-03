@interface RAPReportComposerBadRouteSuggestionSection
- (RAPReportComposerBadRouteSuggestionSection)initWithQuestion:(id)question selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerBadRouteSuggestionSection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  v6 = [(RAPDirectionsCategoryQuestion *)self->_question betterRouteAvailableMenuItem:index];
  [(RAPMenuQuestion *)self->_question setSelectedMenuItem:?];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, v6);
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  betterRouteAvailableMenuItem = [(RAPDirectionsCategoryQuestion *)self->_question betterRouteAvailableMenuItem];
  localizedTitle = [betterRouteAvailableMenuItem localizedTitle];
  textLabel = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel setText:localizedTitle];

  [dequeueDefaultSingleLineTableViewCell setAccessoryType:1];

  return dequeueDefaultSingleLineTableViewCell;
}

- (RAPReportComposerBadRouteSuggestionSection)initWithQuestion:(id)question selection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v14.receiver = self;
  v14.super_class = RAPReportComposerBadRouteSuggestionSection;
  v9 = [(RAPTablePartSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, question);
    v11 = objc_retainBlock(selectionCopy);
    selection = v10->_selection;
    v10->_selection = v11;

    [(RAPQuestion *)v10->_question addObserver:v10 changeHandler:&stru_101650B48];
  }

  return v10;
}

@end