@interface RAPArrivalTimeIncorrectQuestion
- (NSString)localizedTitle;
- (RAPArrivalTimeIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPArrivalTimeIncorrectQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v6];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:45];

  [parametersCopy setType:8];
  details = [parametersCopy details];

  if (!details)
  {
    v9 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v9];
  }

  details2 = [parametersCopy details];
  directionsFeedback = [details2 directionsFeedback];

  if (!directionsFeedback)
  {
    v12 = objc_alloc_init(GEORPDirectionsFeedback);
    details3 = [parametersCopy details];
    [details3 setDirectionsFeedback:v12];
  }

  details4 = [parametersCopy details];
  directionsFeedback2 = [details4 directionsFeedback];
  [directionsFeedback2 setCorrectionType:5];

  v16.receiver = self;
  v16.super_class = RAPArrivalTimeIncorrectQuestion;
  [(RAPCommentQuestion *)&v16 _fillSubmissionParameters:parametersCopy];
}

- (RAPArrivalTimeIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  questionCopy = question;
  reportCopy = report;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Information [Report a Problem]" value:@"localized string not found" table:0];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Tell us more about how the arrival time was incorrect [Report an Issue]" value:@"localized string not found" table:0];
  v14.receiver = self;
  v14.super_class = RAPArrivalTimeIncorrectQuestion;
  v12 = [(RAPCommentQuestion *)&v14 initWithReport:reportCopy parentQuestion:questionCopy title:v9 placeholderText:v11 emphasis:3];

  return v12;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Estimated Time of Arrival [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end