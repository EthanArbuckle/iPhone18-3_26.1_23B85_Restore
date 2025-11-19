@interface RAPSearchResultCategoryQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3;
- (RAPSearchResultCategoryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 search:(id)a5;
- (id)followUpQuestionForCategory:(int64_t)a3;
- (id)mainMenuQuestionCategories;
- (id)selectedPlace;
- (void)resetCachedMenuItems;
@end

@implementation RAPSearchResultCategoryQuestion

- (id)selectedPlace
{
  v2 = [(RAPQuestion *)self parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 selectedValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 geoMapItemForSearchResultAtIndex:0];

  v9 = [[SearchResult alloc] initWithGEOMapItem:v8];

  return v9;
}

- (id)followUpQuestionForCategory:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      v12 = [RAPProblemNotListedQuestion alloc];
      v8 = [(RAPQuestion *)self report];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Other [Report an Issue subcategory]" value:@"localized string not found" table:0];
      v10 = [(RAPProblemNotListedQuestion *)v12 initWithReport:v8 parentQuestion:self localizedTitle:v14];

      goto LABEL_10;
    case 9:
      v11 = [RAPPlaceClosureQuestion alloc];
      v8 = [(RAPQuestion *)self report];
      v10 = [(RAPQuestion *)v11 initWithReport:v8 parentQuestion:self];
LABEL_10:

      goto LABEL_12;
    case 10:
      v4 = [(RAPQuestion *)self parentQuestion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;

      v7 = [RAPSearchResultIncorrectQuestion alloc];
      v8 = [(RAPQuestion *)self report];
      v9 = [v6 selectedValue];

      v10 = -[RAPSearchResultIncorrectQuestion initWithReport:parentQuestion:searchResultsCount:](v7, "initWithReport:parentQuestion:searchResultsCount:", v8, self, [v9 searchResultsCount]);
      goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3
{
  v5 = [(RAPQuestion *)self parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 selectedValue];

  if (v8)
  {
    if (a3 == 9)
    {
      v12 = [v7 selectedValue];
      v13 = [v12 searchResultsCount];

      v11 = v13 == 1;
    }

    else if (a3 == 10)
    {
      v9 = [v7 selectedValue];
      v10 = [v9 searchResultsCount];

      v11 = v10 != 0;
    }

    else
    {
      v14 = [(RAPSearchResultCategoryQuestion *)self mainMenuQuestionCategories];
      v15 = [NSNumber numberWithInteger:a3];
      v11 = [v14 containsObject:v15];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)mainMenuQuestionCategories
{
  mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  if (!mainMenuQuestionCategories)
  {
    self->super._mainMenuQuestionCategories = &off_1016EC800;
    mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  }

  return mainMenuQuestionCategories;
}

- (void)resetCachedMenuItems
{
  [(RAPMenuQuestion *)self removeMenuItemForFollowUpQuestionCategory:10];
  [(RAPMenuQuestion *)self removeMenuItemForFollowUpQuestionCategory:9];

  [(RAPMenuQuestion *)self resetMenu];
}

- (RAPSearchResultCategoryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 search:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RAPSearchResultCategoryQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, a5);
    [v8 addObserver:v11 changeHandler:&stru_101623DE8];
  }

  return v11;
}

+ (id)localizedHeaderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search issue [Report a Problem prompt]" value:@"localized string not found" table:0];

  return v3;
}

@end