@interface RAPReportComposerCategoryPart
- (RAPReportComposerCategoryPart)initWithCategoryQuestion:(id)a3 selection:(id)a4;
- (void)_createSectionsForQuestion:(id)a3 withSelection:(id)a4;
- (void)_setTableView:(id)a3;
@end

@implementation RAPReportComposerCategoryPart

- (void)_setTableView:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = RAPReportComposerCategoryPart;
  [(RAPTablePart *)&v5 _setTableView:v4];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    [v4 setSeparatorInset:{0.0, 58.0, 0.0, 0.0}];
  }
}

- (void)_createSectionsForQuestion:(id)a3 withSelection:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = [v15 numberOfSections];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (i)
      {
        v12 = 0;
      }

      else
      {
        v12 = [objc_opt_class() localizedHeaderText];
      }

      v13 = [[RAPReportComposerMenuSection alloc] initWithMenu:v15 headerText:v12 menuSectionIndex:i selection:v6];
      [v7 addObject:v13];

      v10 = v12;
    }
  }

  v14 = [v7 copy];
  [(RAPTablePart *)self setSections:v14];
}

- (RAPReportComposerCategoryPart)initWithCategoryQuestion:(id)a3 selection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RAPReportComposerCategoryPart;
  v8 = [(RAPTablePart *)&v11 initWithSections:&__NSArray0__struct];
  v9 = v8;
  if (v8)
  {
    [(RAPReportComposerCategoryPart *)v8 _createSectionsForQuestion:v6 withSelection:v7];
  }

  return v9;
}

@end