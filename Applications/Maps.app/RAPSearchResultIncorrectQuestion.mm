@interface RAPSearchResultIncorrectQuestion
+ (id)localizedTitleForResultCount:(unint64_t)count;
- (RAPSearchResultIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question searchResultsCount:(unint64_t)count;
@end

@implementation RAPSearchResultIncorrectQuestion

- (RAPSearchResultIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question searchResultsCount:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = RAPSearchResultIncorrectQuestion;
  v6 = [(RAPCommentQuestion *)&v13 initWithReport:report parentQuestion:question];
  if (v6)
  {
    v7 = [objc_opt_class() localizedTitleForResultCount:count];
    localizedTitle = v6->_localizedTitle;
    v6->_localizedTitle = v7;

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Submit a Photo [Report a Search Issue photos]" value:@"localized string not found" table:0];
    localizedPhotosPickerExplanation = v6->_localizedPhotosPickerExplanation;
    v6->_localizedPhotosPickerExplanation = v10;
  }

  return v6;
}

+ (id)localizedTitleForResultCount:(unint64_t)count
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (count == 1)
  {
    v6 = @"Unexpected Result [Report a Problem category]";
  }

  else
  {
    v6 = @"Unexpected Results [Report a Problem category]";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

@end