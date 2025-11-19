@interface RAPReportComposerDirectionsSubcategorySection
- (RAPReportComposerDirectionsSubcategorySection)initWithQuestion:(id)a3 selection:(id)a4;
- (id)cellForRowAtIndex:(int64_t)a3;
- (int64_t)rowsCount;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
@end

@implementation RAPReportComposerDirectionsSubcategorySection

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v6 = [(RAPMenu *)self->_question allMenuItems:a3];
  v8 = [v6 objectAtIndexedSubscript:a3];

  [(RAPMenu *)self->_question setSelectedMenuItem:v8];
  selection = self->_selection;
  if (selection)
  {
    selection[2](selection, v8);
  }
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  v5 = [(RAPTablePartSection *)self dequeueDefaultSingleLineTableViewCell];
  v6 = [(RAPMenu *)self->_question allMenuItems];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [v7 localizedTitle];
  v9 = [v5 textLabel];
  [v9 setText:v8];

  [v5 setAccessoryType:1];

  return v5;
}

- (int64_t)rowsCount
{
  v2 = [(RAPMenu *)self->_question allMenuItems];
  v3 = [v2 count];

  return v3;
}

- (RAPReportComposerDirectionsSubcategorySection)initWithQuestion:(id)a3 selection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RAPReportComposerDirectionsSubcategorySection;
  v9 = [(RAPTablePartSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_question, a3);
    v11 = objc_retainBlock(v8);
    selection = v10->_selection;
    v10->_selection = v11;

    [(RAPMenu *)v10->_question addObserver:v10 changeHandler:&stru_101650B88];
  }

  return v10;
}

@end