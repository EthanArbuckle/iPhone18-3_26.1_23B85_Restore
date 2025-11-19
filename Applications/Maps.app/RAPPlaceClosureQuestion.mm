@interface RAPPlaceClosureQuestion
- (BOOL)isComplete;
- (NSArray)selectableIssues;
- (NSString)localizedSelectableIssueLabel;
- (NSString)localizedTitle;
- (RAPCommentQuestion)commentQuestion;
- (id)_geoBusinessHours;
- (int)closureTypeAction;
- (void)_captureAnalytics;
- (void)_fillSubmissionParameters:(id)a3;
- (void)_setupSubmissionParameters:(id)a3;
- (void)setSelectedIssue:(id)a3;
@end

@implementation RAPPlaceClosureQuestion

- (id)_geoBusinessHours
{
  v3 = objc_alloc_init(GEORPFeedbackBusinessHours);
  v4 = [(RAPPlaceClosureQuestion *)self selectedIssue];
  v5 = [v4 kind];

  if (v5 <= 2)
  {
    [v3 setHoursType:(4 - v5)];
  }

  return v3;
}

- (void)_setupSubmissionParameters:(id)a3
{
  v10 = a3;
  v4 = [v10 commonContext];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v10 setCommonContext:v5];
  }

  v6 = [v10 commonContext];
  [v6 addUserPath:9];

  v7 = [v10 details];

  if (!v7)
  {
    v8 = objc_opt_new();
    [v10 setDetails:v8];
  }

  v9 = [(RAPPlaceClosureQuestion *)self commentQuestion];
  [v9 _fillSubmissionParameters:v10];
}

- (void)_fillSubmissionParameters:(id)a3
{
  v12 = a3;
  [(RAPPlaceClosureQuestion *)self _setupSubmissionParameters:v12];
  v4 = [v12 details];
  v5 = [v4 poiFeedback];

  if (!v5)
  {
    v5 = objc_alloc_init(GEORPPoiFeedback);
    v6 = [v12 details];
    [v6 setPoiFeedback:v5];
  }

  v7 = [v5 corrections];

  if (!v7)
  {
    v8 = objc_opt_new();
    [v5 setCorrections:v8];
  }

  [v5 setCorrectionType:2];
  v9 = [v5 corrections];
  v10 = [(RAPPlaceClosureQuestion *)self _geoBusinessHours];
  [v9 addBusinessHours:v10];

  v11 = [(RAPPlaceClosureQuestion *)self commentQuestion];
  [v11 _fillSubmissionParameters:v12];
}

- (BOOL)isComplete
{
  v2 = [(RAPPlaceClosureQuestion *)self selectedIssue];
  v3 = v2 != 0;

  return v3;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedOptionalInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tell us more about this closure" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v6 placeholderText:v8 emphasis:5];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (int)closureTypeAction
{
  v2 = [(RAPPlaceClosureQuestion *)self selectedIssue];
  v3 = [v2 kind];

  if (v3 == 1)
  {
    v4 = 10135;
  }

  else
  {
    v4 = 10134;
  }

  if (v3 == 2)
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

- (void)setSelectedIssue:(id)a3
{
  v5 = a3;
  if (self->_selectedIssue != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_selectedIssue, a3);
    v6 = [(RAPPlaceClosureIssue *)v12 kind];
    commentQuestion = self->_commentQuestion;
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v6 == 2)
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
    v5 = v12;
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