@interface RAPReportComposerCategoryPart
- (RAPReportComposerCategoryPart)initWithCategoryQuestion:(id)question selection:(id)selection;
- (void)_createSectionsForQuestion:(id)question withSelection:(id)selection;
- (void)_setTableView:(id)view;
@end

@implementation RAPReportComposerCategoryPart

- (void)_setTableView:(id)view
{
  viewCopy = view;
  v5.receiver = self;
  v5.super_class = RAPReportComposerCategoryPart;
  [(RAPTablePart *)&v5 _setTableView:viewCopy];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    [viewCopy setSeparatorInset:{0.0, 58.0, 0.0, 0.0}];
  }
}

- (void)_createSectionsForQuestion:(id)question withSelection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v7 = +[NSMutableArray array];
  numberOfSections = [questionCopy numberOfSections];
  if (numberOfSections)
  {
    v9 = numberOfSections;
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (i)
      {
        localizedHeaderText = 0;
      }

      else
      {
        localizedHeaderText = [objc_opt_class() localizedHeaderText];
      }

      v13 = [[RAPReportComposerMenuSection alloc] initWithMenu:questionCopy headerText:localizedHeaderText menuSectionIndex:i selection:selectionCopy];
      [v7 addObject:v13];

      v10 = localizedHeaderText;
    }
  }

  v14 = [v7 copy];
  [(RAPTablePart *)self setSections:v14];
}

- (RAPReportComposerCategoryPart)initWithCategoryQuestion:(id)question selection:(id)selection
{
  questionCopy = question;
  selectionCopy = selection;
  v11.receiver = self;
  v11.super_class = RAPReportComposerCategoryPart;
  v8 = [(RAPTablePart *)&v11 initWithSections:&__NSArray0__struct];
  v9 = v8;
  if (v8)
  {
    [(RAPReportComposerCategoryPart *)v8 _createSectionsForQuestion:questionCopy withSelection:selectionCopy];
  }

  return v9;
}

@end