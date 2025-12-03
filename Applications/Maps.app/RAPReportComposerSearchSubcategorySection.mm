@interface RAPReportComposerSearchSubcategorySection
- (RAPReportComposerSearchSubcategorySection)initWithQuestion:(id)question selection:(id)selection;
- (id)cellForRowAtIndex:(int64_t)index;
- (int64_t)rowsCount;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
@end

@implementation RAPReportComposerSearchSubcategorySection

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

- (RAPReportComposerSearchSubcategorySection)initWithQuestion:(id)question selection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v15.receiver = self;
  v15.super_class = RAPReportComposerSearchSubcategorySection;
  v9 = [(RAPTablePartSection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, question);
    v11 = objc_retainBlock(selectionCopy);
    selection = v10->_selection;
    v10->_selection = v11;

    localizedHeaderText = [objc_opt_class() localizedHeaderText];
    [(RAPTablePartSection *)v10 setHeaderTitle:localizedHeaderText];

    [(RAPMenu *)v10->_question addObserver:v10 changeHandler:&stru_10165CF28];
  }

  return v10;
}

@end