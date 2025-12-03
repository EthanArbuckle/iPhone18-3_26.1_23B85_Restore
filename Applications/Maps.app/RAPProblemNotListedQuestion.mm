@interface RAPProblemNotListedQuestion
- (NSString)localizedDescription;
- (RAPProblemNotListedQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (RAPProblemNotListedQuestion)initWithReport:(id)report parentQuestion:(id)question localizedTitle:(id)title;
- (UIImage)image;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPProblemNotListedQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy setFeedbackType];
  v5.receiver = self;
  v5.super_class = RAPProblemNotListedQuestion;
  [(RAPCommentQuestion *)&v5 _fillSubmissionParameters:parametersCopy];
}

- (RAPProblemNotListedQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  questionCopy = question;
  reportCopy = report;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Other Issue [Report an Issue category]" value:@"localized string not found" table:0];
  v10 = [(RAPProblemNotListedQuestion *)self initWithReport:reportCopy parentQuestion:questionCopy localizedTitle:v9];

  return v10;
}

- (RAPProblemNotListedQuestion)initWithReport:(id)report parentQuestion:(id)question localizedTitle:(id)title
{
  titleCopy = title;
  questionCopy = question;
  reportCopy = report;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Information [Report a Problem]" value:@"localized string not found" table:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Describe the issue [Report an Issue]" value:@"localized string not found" table:0];
  v18.receiver = self;
  v18.super_class = RAPProblemNotListedQuestion;
  v16 = [(RAPCommentQuestion *)&v18 initWithReport:reportCopy parentQuestion:questionCopy title:v13 placeholderText:v15 emphasis:2];

  if (v16)
  {
    objc_storeStrong(&v16->_localizedTitle, title);
  }

  return v16;
}

- (UIImage)image
{
  v2 = +[UIColor systemBlueColor];
  v10[0] = v2;
  v3 = +[UIColor systemLightGrayColor];
  v10[1] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [UIImageSymbolConfiguration configurationWithPaletteColors:v4];
  v6 = [UIImage systemImageNamed:@"ellipsis.circle.fill" withConfiguration:v5];

  v7 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:26.0];
  v8 = [v6 imageByApplyingSymbolConfiguration:v7];

  return v8;
}

- (NSString)localizedDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Other Issue description [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end