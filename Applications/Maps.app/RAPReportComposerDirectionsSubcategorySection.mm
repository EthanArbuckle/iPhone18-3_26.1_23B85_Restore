@interface RAPReportComposerDirectionsSubcategorySection
- (RAPReportComposerDirectionsSubcategorySection)initWithQuestion:(id)question selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (int64_t)rowsCount;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerDirectionsSubcategorySection

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  v6 = [(RAPMenu *)self->_question allMenuItems:index];
  v8 = [v6 objectAtIndexedSubscript:index];

  [(RAPMenu *)self->_question setSelectedMenuItem:v8];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, v8);
  }
}

- (id)cellForRowAtIndex:(int64_t)index
{
  dequeueDefaultSingleLineTableViewCell = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  allMenuItems = [(RAPMenu *)self->_question allMenuItems];
  v7 = [allMenuItems objectAtIndexedSubscript:index];

  localizedTitle = [v7 localizedTitle];
  textLabel = [dequeueDefaultSingleLineTableViewCell textLabel];
  [textLabel setText:localizedTitle];

  [dequeueDefaultSingleLineTableViewCell setAccessoryType:1];

  return dequeueDefaultSingleLineTableViewCell;
}

- (int64_t)rowsCount
{
  allMenuItems = [(RAPMenu *)self->_question allMenuItems];
  v3 = [allMenuItems count];

  return v3;
}

- (RAPReportComposerDirectionsSubcategorySection)initWithQuestion:(id)question selection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v14.receiver = self;
  v14.super_class = RAPReportComposerDirectionsSubcategorySection;
  v9 = [(RAPTablePartSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, question);
    v11 = objc_retainBlock(selectionCopy);
    selection = v10->_selection;
    v10->_selection = v11;

    [(RAPMenu *)v10->_question addObserver:v10 changeHandler:&stru_101650B88];
  }

  return v10;
}

@end