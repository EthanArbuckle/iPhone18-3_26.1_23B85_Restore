@interface RAPSearchResultCategoryQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category;
- (RAPSearchResultCategoryQuestion)initWithReport:(id)report parentQuestion:(id)question search:(id)search;
- (id)followUpQuestionForCategory:(int64_t)category;
- (id)mainMenuQuestionCategories;
- (id)selectedPlace;
- (void)resetCachedMenuItems;
@end

@implementation RAPSearchResultCategoryQuestion

- (id)selectedPlace
{
  parentQuestion = [(RAPQuestion *)self parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentQuestion;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  selectedValue = [v4 selectedValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = selectedValue;
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

- (id)followUpQuestionForCategory:(int64_t)category
{
  switch(category)
  {
    case 1:
      v12 = [RAPProblemNotListedQuestion alloc];
      report = [(RAPQuestion *)self report];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Other [Report an Issue subcategory]" value:@"localized string not found" table:0];
      v10 = [(RAPProblemNotListedQuestion *)v12 initWithReport:report parentQuestion:self localizedTitle:v14];

      goto LABEL_10;
    case 9:
      v11 = [RAPPlaceClosureQuestion alloc];
      report = [(RAPQuestion *)self report];
      v10 = [(RAPQuestion *)v11 initWithReport:report parentQuestion:self];
LABEL_10:

      goto LABEL_12;
    case 10:
      parentQuestion = [(RAPQuestion *)self parentQuestion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = parentQuestion;
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;

      v7 = [RAPSearchResultIncorrectQuestion alloc];
      report = [(RAPQuestion *)self report];
      selectedValue = [v6 selectedValue];

      v10 = -[RAPSearchResultIncorrectQuestion initWithReport:parentQuestion:searchResultsCount:](v7, "initWithReport:parentQuestion:searchResultsCount:", report, self, [selectedValue searchResultsCount]);
      goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category
{
  parentQuestion = [(RAPQuestion *)self parentQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = parentQuestion;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  selectedValue = [v7 selectedValue];

  if (selectedValue)
  {
    if (category == 9)
    {
      selectedValue2 = [v7 selectedValue];
      searchResultsCount = [selectedValue2 searchResultsCount];

      v11 = searchResultsCount == 1;
    }

    else if (category == 10)
    {
      selectedValue3 = [v7 selectedValue];
      searchResultsCount2 = [selectedValue3 searchResultsCount];

      v11 = searchResultsCount2 != 0;
    }

    else
    {
      mainMenuQuestionCategories = [(RAPSearchResultCategoryQuestion *)self mainMenuQuestionCategories];
      v15 = [NSNumber numberWithInteger:category];
      v11 = [mainMenuQuestionCategories containsObject:v15];
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

- (RAPSearchResultCategoryQuestion)initWithReport:(id)report parentQuestion:(id)question search:(id)search
{
  questionCopy = question;
  searchCopy = search;
  v13.receiver = self;
  v13.super_class = RAPSearchResultCategoryQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:questionCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, search);
    [questionCopy addObserver:v11 changeHandler:&stru_101623DE8];
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