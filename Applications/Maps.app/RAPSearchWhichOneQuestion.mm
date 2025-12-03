@interface RAPSearchWhichOneQuestion
- (BOOL)_hasSearchRelatedFollowupQuestion;
- (BOOL)_isRecursivelyComplete;
- (NSArray)selectableSearches;
- (NSString)localizedDescription;
- (NSString)localizedSelectSearchRequestPrompt;
- (NSString)localizedTitle;
- (RAPMenu)followUpQuestion;
- (id)_alternateAuxiliaryControlsRecording;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setSelectedValue:(id)value;
@end

@implementation RAPSearchWhichOneQuestion

- (BOOL)_hasSearchRelatedFollowupQuestion
{
  selectedMenuItem = [(RAPMenu *)self->_followUpQuestion selectedMenuItem];
  questionCategory = [selectedMenuItem questionCategory];

  return questionCategory == 10 || questionCategory == 1;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v5];
  }

  if ([(RAPSearchWhichOneQuestion *)self _hasSearchRelatedFollowupQuestion])
  {
    v6 = objc_alloc_init(GEORPCorrectedSearch);
    selectedValue = [(RAPSearchWhichOneQuestion *)self selectedValue];
    [selectedValue applyToCorrectedSearch:v6];
    details = [parametersCopy details];

    if (!details)
    {
      v9 = objc_alloc_init(GEORPFeedbackDetails);
      [parametersCopy setDetails:v9];
    }

    details2 = [parametersCopy details];
    searchFeedback = [details2 searchFeedback];

    if (!searchFeedback)
    {
      v12 = objc_alloc_init(GEORPSearchFeedback);
      details3 = [parametersCopy details];
      [details3 setSearchFeedback:v12];
    }

    details4 = [parametersCopy details];
    searchFeedback2 = [details4 searchFeedback];
    context = [searchFeedback2 context];

    if (!context)
    {
      context = objc_alloc_init(GEORPSearchFeedbackContext);
      details5 = [parametersCopy details];
      searchFeedback3 = [details5 searchFeedback];
      [searchFeedback3 setContext:context];
    }

    requestContext = [context requestContext];

    if (!requestContext)
    {
      v20 = objc_alloc_init(GEORPPlaceRequestResponse);
      [context setRequestContext:v20];
    }

    placeRequest = [v6 placeRequest];
    requestContext2 = [context requestContext];
    [requestContext2 setPlaceRequest:placeRequest];

    placeResponse = [v6 placeResponse];
    requestContext3 = [context requestContext];
    [requestContext3 setPlaceResponse:placeResponse];

    selectedMenuItem = [(RAPMenu *)self->_followUpQuestion selectedMenuItem];
    questionCategory = [selectedMenuItem questionCategory];

    if (questionCategory == 1)
    {
      v27 = 7;
    }

    else
    {
      v27 = 0;
    }

    if (questionCategory == 10)
    {
      v28 = 6;
    }

    else
    {
      v28 = v27;
    }

    details6 = [parametersCopy details];
    searchFeedback4 = [details6 searchFeedback];
    corrections = [searchFeedback4 corrections];

    if (!corrections)
    {
      v32 = objc_alloc_init(GEORPSearchFeedbackCorrections);
      details7 = [parametersCopy details];
      searchFeedback5 = [details7 searchFeedback];
      [searchFeedback5 setCorrections:v32];
    }

    details8 = [parametersCopy details];
    searchFeedback6 = [details8 searchFeedback];
    corrections2 = [searchFeedback6 corrections];
    [corrections2 setCorrectionType:v28];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:11];

  [(RAPMenu *)self->_followUpQuestion _fillSubmissionParameters:parametersCopy];
}

- (id)_alternateAuxiliaryControlsRecording
{
  selectedValue = [(RAPSearchWhichOneQuestion *)self selectedValue];
  auxiliaryControlsRecording = [selectedValue auxiliaryControlsRecording];

  return auxiliaryControlsRecording;
}

- (BOOL)_isRecursivelyComplete
{
  _isRecursivelyComplete = [(RAPMenu *)self->_followUpQuestion _isRecursivelyComplete];
  if (_isRecursivelyComplete)
  {
    v5.receiver = self;
    v5.super_class = RAPSearchWhichOneQuestion;
    LOBYTE(_isRecursivelyComplete) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return _isRecursivelyComplete;
}

- (RAPMenu)followUpQuestion
{
  followUpQuestion = self->_followUpQuestion;
  if (!followUpQuestion)
  {
    v4 = [RAPSearchResultCategoryQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = [(RAPSearchResultCategoryQuestion *)v4 initWithReport:report parentQuestion:self search:self->_selectedValue];
    v7 = self->_followUpQuestion;
    self->_followUpQuestion = v6;

    followUpQuestion = self->_followUpQuestion;
  }

  return followUpQuestion;
}

- (void)setSelectedValue:(id)value
{
  valueCopy = value;
  if (self->_selectedValue != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_selectedValue, value);
    [(RAPQuestion *)self _didChange];
    valueCopy = v6;
  }
}

- (NSArray)selectableSearches
{
  selectableSearches = self->_selectableSearches;
  if (!selectableSearches)
  {
    report = [(RAPQuestion *)self report];
    _context = [report _context];
    searchesHistory = [_context searchesHistory];

    if ([searchesHistory count] >= 6)
    {
      v7 = [searchesHistory subarrayWithRange:{0, 5}];

      searchesHistory = v7;
    }

    v8 = [searchesHistory copy];
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