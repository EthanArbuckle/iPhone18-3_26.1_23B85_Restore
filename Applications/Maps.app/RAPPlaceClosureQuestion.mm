@interface RAPPlaceClosureQuestion
- (BOOL)isComplete;
- (NSArray)selectableIssues;
- (NSString)localizedSelectableIssueLabel;
- (NSString)localizedTitle;
- (RAPCommentQuestion)commentQuestion;
- (id)_geoBusinessHours;
- (int)closureTypeAction;
- (void)_captureAnalytics;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)_setupSubmissionParameters:(id)parameters;
- (void)setSelectedIssue:(id)issue;
@end

@implementation RAPPlaceClosureQuestion

- (id)_geoBusinessHours
{
  v3 = objc_alloc_init(GEORPFeedbackBusinessHours);
  selectedIssue = [(RAPPlaceClosureQuestion *)self selectedIssue];
  kind = [selectedIssue kind];

  if (kind <= 2)
  {
    [v3 setHoursType:(4 - kind)];
  }

  return v3;
}

- (void)_setupSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v5];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:9];

  details = [parametersCopy details];

  if (!details)
  {
    v8 = objc_opt_new();
    [parametersCopy setDetails:v8];
  }

  commentQuestion = [(RAPPlaceClosureQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [(RAPPlaceClosureQuestion *)self _setupSubmissionParameters:parametersCopy];
  details = [parametersCopy details];
  poiFeedback = [details poiFeedback];

  if (!poiFeedback)
  {
    poiFeedback = objc_alloc_init(GEORPPoiFeedback);
    details2 = [parametersCopy details];
    [details2 setPoiFeedback:poiFeedback];
  }

  corrections = [poiFeedback corrections];

  if (!corrections)
  {
    v8 = objc_opt_new();
    [poiFeedback setCorrections:v8];
  }

  [poiFeedback setCorrectionType:2];
  corrections2 = [poiFeedback corrections];
  _geoBusinessHours = [(RAPPlaceClosureQuestion *)self _geoBusinessHours];
  [corrections2 addBusinessHours:_geoBusinessHours];

  commentQuestion = [(RAPPlaceClosureQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (BOOL)isComplete
{
  selectedIssue = [(RAPPlaceClosureQuestion *)self selectedIssue];
  v3 = selectedIssue != 0;

  return v3;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedOptionalInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tell us more about this closure" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:5];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (int)closureTypeAction
{
  selectedIssue = [(RAPPlaceClosureQuestion *)self selectedIssue];
  kind = [selectedIssue kind];

  if (kind == 1)
  {
    v4 = 10135;
  }

  else
  {
    v4 = 10134;
  }

  if (kind == 2)
  {
    return 10136;
  }

  else
  {
    return v4;
  }
}

- (void)_captureAnalytics
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:-[RAPPlaceClosureQuestion closureTypeAction](self onTarget:"closureTypeAction") eventValue:{-[RAPPlaceClosureQuestion analyticTarget](self, "analyticTarget"), 0}];
}

- (void)setSelectedIssue:(id)issue
{
  issueCopy = issue;
  if (self->_selectedIssue != issueCopy)
  {
    v12 = issueCopy;
    objc_storeStrong(&self->_selectedIssue, issue);
    kind = [(RAPPlaceClosureIssue *)v12 kind];
    commentQuestion = self->_commentQuestion;
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (kind == 2)
    {
      v10 = @"Tell us more about the new hours";
    }

    else
    {
      v10 = @"Tell us more about this closure";
    }

    v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
    [(RAPCommentQuestion *)commentQuestion _setPlaceholderText:v11];

    [(RAPQuestion *)self _didChange];
    [(RAPPlaceClosureQuestion *)self _captureAnalytics];
    issueCopy = v12;
  }
}

- (NSArray)selectableIssues
{
  selectableIssues = self->_selectableIssues;
  if (!selectableIssues)
  {
    v4 = [RAPPlaceClosureIssue alloc];
    v18 = +[NSBundle mainBundle];
    v5 = [v18 localizedStringForKey:@"Closed Permanently [Report an Issue]" value:@"localized string not found" table:0];
    v6 = [(RAPPlaceClosureIssue *)v4 _initWithKind:0 localizedName:v5];
    v19[0] = v6;
    v7 = [RAPPlaceClosureIssue alloc];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Closed Temporarily [Report an Issue]" value:@"localized string not found" table:0];
    v10 = [(RAPPlaceClosureIssue *)v7 _initWithKind:1 localizedName:v9];
    v19[1] = v10;
    v11 = [RAPPlaceClosureIssue alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Hours Changed [Report an Issue]" value:@"localized string not found" table:0];
    v14 = [(RAPPlaceClosureIssue *)v11 _initWithKind:2 localizedName:v13];
    v19[2] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:3];
    v16 = self->_selectableIssues;
    self->_selectableIssues = v15;

    selectableIssues = self->_selectableIssues;
  }

  return selectableIssues;
}

- (NSString)localizedSelectableIssueLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Issue [Report an Issue]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Place Closed [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end