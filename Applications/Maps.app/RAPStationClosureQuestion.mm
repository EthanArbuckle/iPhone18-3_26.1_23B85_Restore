@interface RAPStationClosureQuestion
- (BOOL)_isRecursivelyComplete;
- (id)commentQuestion;
- (id)localizedTitle;
- (id)selectableIssues;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPStationClosureQuestion

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [(RAPPlaceClosureQuestion *)self _setupSubmissionParameters:parametersCopy];
  details = [parametersCopy details];
  transitPoiFeedback = [details transitPoiFeedback];

  if (!transitPoiFeedback)
  {
    v6 = objc_opt_new();
    details2 = [parametersCopy details];
    [details2 setTransitPoiFeedback:v6];
  }

  details3 = [parametersCopy details];
  transitPoiFeedback2 = [details3 transitPoiFeedback];
  corrections = [transitPoiFeedback2 corrections];

  if (!corrections)
  {
    v11 = objc_opt_new();
    details4 = [parametersCopy details];
    transitPoiFeedback3 = [details4 transitPoiFeedback];
    [transitPoiFeedback3 setCorrections:v11];
  }

  details5 = [parametersCopy details];
  transitPoiFeedback4 = [details5 transitPoiFeedback];
  [transitPoiFeedback4 setCorrectionType:1];

  details6 = [parametersCopy details];
  transitPoiFeedback5 = [details6 transitPoiFeedback];
  corrections2 = [transitPoiFeedback5 corrections];
  _geoBusinessHours = [(RAPPlaceClosureQuestion *)self _geoBusinessHours];
  [corrections2 addBusinessHours:_geoBusinessHours];
}

- (BOOL)_isRecursivelyComplete
{
  v5.receiver = self;
  v5.super_class = RAPStationClosureQuestion;
  _isRecursivelyComplete = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  if (_isRecursivelyComplete)
  {
    LOBYTE(_isRecursivelyComplete) = [(RAPQuestion *)self->super._commentQuestion _isRecursivelyComplete];
  }

  return _isRecursivelyComplete;
}

- (id)commentQuestion
{
  commentQuestion = self->super._commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tell us more about this station closure" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:2];
    v10 = self->super._commentQuestion;
    self->super._commentQuestion = v9;

    commentQuestion = self->super._commentQuestion;
  }

  return commentQuestion;
}

- (id)selectableIssues
{
  selectableIssues = self->super._selectableIssues;
  if (!selectableIssues)
  {
    v4 = [RAPPlaceClosureIssue alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Closed Permanently [Report an Issue]" value:@"localized string not found" table:0];
    v7 = [(RAPPlaceClosureIssue *)v4 _initWithKind:0 localizedName:v6];
    v15[0] = v7;
    v8 = [RAPPlaceClosureIssue alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Closed Temporarily [Report an Issue]" value:@"localized string not found" table:0];
    v11 = [(RAPPlaceClosureIssue *)v8 _initWithKind:1 localizedName:v10];
    v15[1] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:2];
    v13 = self->super._selectableIssues;
    self->super._selectableIssues = v12;

    selectableIssues = self->super._selectableIssues;
  }

  return selectableIssues;
}

- (id)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Station Closed [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end