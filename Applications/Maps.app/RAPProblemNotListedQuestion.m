@interface RAPProblemNotListedQuestion
- (NSString)localizedDescription;
- (RAPProblemNotListedQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (RAPProblemNotListedQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 localizedTitle:(id)a5;
- (UIImage)image;
- (void)_fillSubmissionParameters:(id)a3;
@end

@implementation RAPProblemNotListedQuestion

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  [v4 setFeedbackType];
  v5.receiver = self;
  v5.super_class = RAPProblemNotListedQuestion;
  [(RAPCommentQuestion *)&v5 _fillSubmissionParameters:v4];
}

- (RAPProblemNotListedQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Other Issue [Report an Issue category]" value:@"localized string not found" table:0];
  v10 = [(RAPProblemNotListedQuestion *)self initWithReport:v7 parentQuestion:v6 localizedTitle:v9];

  return v10;
}

- (RAPProblemNotListedQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 localizedTitle:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Information [Report a Problem]" value:@"localized string not found" table:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Describe the issue [Report an Issue]" value:@"localized string not found" table:0];
  v18.receiver = self;
  v18.super_class = RAPProblemNotListedQuestion;
  v16 = [(RAPCommentQuestion *)&v18 initWithReport:v11 parentQuestion:v10 title:v13 placeholderText:v15 emphasis:2];

  if (v16)
  {
    objc_storeStrong(&v16->_localizedTitle, a5);
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