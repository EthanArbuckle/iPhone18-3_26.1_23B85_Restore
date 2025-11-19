@interface RAPArrivalTimeIncorrectQuestion
- (NSString)localizedTitle;
- (RAPArrivalTimeIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (void)_fillSubmissionParameters:(id)a3;
@end

@implementation RAPArrivalTimeIncorrectQuestion

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v4 setCommonContext:v6];
  }

  v7 = [v4 commonContext];
  [v7 addUserPath:45];

  [v4 setType:8];
  v8 = [v4 details];

  if (!v8)
  {
    v9 = objc_alloc_init(GEORPFeedbackDetails);
    [v4 setDetails:v9];
  }

  v10 = [v4 details];
  v11 = [v10 directionsFeedback];

  if (!v11)
  {
    v12 = objc_alloc_init(GEORPDirectionsFeedback);
    v13 = [v4 details];
    [v13 setDirectionsFeedback:v12];
  }

  v14 = [v4 details];
  v15 = [v14 directionsFeedback];
  [v15 setCorrectionType:5];

  v16.receiver = self;
  v16.super_class = RAPArrivalTimeIncorrectQuestion;
  [(RAPCommentQuestion *)&v16 _fillSubmissionParameters:v4];
}

- (RAPArrivalTimeIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Information [Report a Problem]" value:@"localized string not found" table:0];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Tell us more about how the arrival time was incorrect [Report an Issue]" value:@"localized string not found" table:0];
  v14.receiver = self;
  v14.super_class = RAPArrivalTimeIncorrectQuestion;
  v12 = [(RAPCommentQuestion *)&v14 initWithReport:v7 parentQuestion:v6 title:v9 placeholderText:v11 emphasis:3];

  return v12;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Estimated Time of Arrival [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end