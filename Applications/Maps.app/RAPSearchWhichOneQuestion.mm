@interface RAPSearchWhichOneQuestion
- (BOOL)_hasSearchRelatedFollowupQuestion;
- (BOOL)_isRecursivelyComplete;
- (NSArray)selectableSearches;
- (NSString)localizedDescription;
- (NSString)localizedSelectSearchRequestPrompt;
- (NSString)localizedTitle;
- (RAPMenu)followUpQuestion;
- (id)_alternateAuxiliaryControlsRecording;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setSelectedValue:(id)a3;
@end

@implementation RAPSearchWhichOneQuestion

- (BOOL)_hasSearchRelatedFollowupQuestion
{
  v2 = [(RAPMenu *)self->_followUpQuestion selectedMenuItem];
  v3 = [v2 questionCategory];

  return v3 == 10 || v3 == 1;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v39 = a3;
  v4 = [v39 commonContext];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v39 setCommonContext:v5];
  }

  if ([(RAPSearchWhichOneQuestion *)self _hasSearchRelatedFollowupQuestion])
  {
    v6 = objc_alloc_init(GEORPCorrectedSearch);
    v7 = [(RAPSearchWhichOneQuestion *)self selectedValue];
    [v7 applyToCorrectedSearch:v6];
    v8 = [v39 details];

    if (!v8)
    {
      v9 = objc_alloc_init(GEORPFeedbackDetails);
      [v39 setDetails:v9];
    }

    v10 = [v39 details];
    v11 = [v10 searchFeedback];

    if (!v11)
    {
      v12 = objc_alloc_init(GEORPSearchFeedback);
      v13 = [v39 details];
      [v13 setSearchFeedback:v12];
    }

    v14 = [v39 details];
    v15 = [v14 searchFeedback];
    v16 = [v15 context];

    if (!v16)
    {
      v16 = objc_alloc_init(GEORPSearchFeedbackContext);
      v17 = [v39 details];
      v18 = [v17 searchFeedback];
      [v18 setContext:v16];
    }

    v19 = [v16 requestContext];

    if (!v19)
    {
      v20 = objc_alloc_init(GEORPPlaceRequestResponse);
      [v16 setRequestContext:v20];
    }

    v21 = [v6 placeRequest];
    v22 = [v16 requestContext];
    [v22 setPlaceRequest:v21];

    v23 = [v6 placeResponse];
    v24 = [v16 requestContext];
    [v24 setPlaceResponse:v23];

    v25 = [(RAPMenu *)self->_followUpQuestion selectedMenuItem];
    v26 = [v25 questionCategory];

    if (v26 == 1)
    {
      v27 = 7;
    }

    else
    {
      v27 = 0;
    }

    if (v26 == 10)
    {
      v28 = 6;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v39 details];
    v30 = [v29 searchFeedback];
    v31 = [v30 corrections];

    if (!v31)
    {
      v32 = objc_alloc_init(GEORPSearchFeedbackCorrections);
      v33 = [v39 details];
      v34 = [v33 searchFeedback];
      [v34 setCorrections:v32];
    }

    v35 = [v39 details];
    v36 = [v35 searchFeedback];
    v37 = [v36 corrections];
    [v37 setCorrectionType:v28];
  }

  v38 = [v39 commonContext];
  [v38 addUserPath:11];

  [(RAPMenu *)self->_followUpQuestion _fillSubmissionParameters:v39];
}

- (id)_alternateAuxiliaryControlsRecording
{
  v2 = [(RAPSearchWhichOneQuestion *)self selectedValue];
  v3 = [v2 auxiliaryControlsRecording];

  return v3;
}

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPMenu *)self->_followUpQuestion _isRecursivelyComplete];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = RAPSearchWhichOneQuestion;
    LOBYTE(v3) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return v3;
}

- (RAPMenu)followUpQuestion
{
  followUpQuestion = self->_followUpQuestion;
  if (!followUpQuestion)
  {
    v4 = [RAPSearchResultCategoryQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = [(RAPSearchResultCategoryQuestion *)v4 initWithReport:v5 parentQuestion:self search:self->_selectedValue];
    v7 = self->_followUpQuestion;
    self->_followUpQuestion = v6;

    followUpQuestion = self->_followUpQuestion;
  }

  return followUpQuestion;
}

- (void)setSelectedValue:(id)a3
{
  v5 = a3;
  if (self->_selectedValue != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedValue, a3);
    [(RAPQuestion *)self _didChange];
    v5 = v6;
  }
}

- (NSArray)selectableSearches
{
  selectableSearches = self->_selectableSearches;
  if (!selectableSearches)
  {
    v4 = [(RAPQuestion *)self report];
    v5 = [v4 _context];
    v6 = [v5 searchesHistory];

    if ([v6 count] >= 6)
    {
      v7 = [v6 subarrayWithRange:{0, 5}];

      v6 = v7;
    }

    v8 = [v6 copy];
    v9 = self->_selectableSearches;
    self->_selectableSearches = v8;

    selectableSearches = self->_selectableSearches;
  }

  return selectableSearches;
}

- (NSString)localizedSelectSearchRequestPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Result [Report a Problem prompt]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search issue description [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search [Report a Problem category]" value:@"localized string not found" table:0];

  return v3;
}

@end