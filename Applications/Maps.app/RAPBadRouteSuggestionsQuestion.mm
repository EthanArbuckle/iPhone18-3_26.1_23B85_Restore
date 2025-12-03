@interface RAPBadRouteSuggestionsQuestion
+ (BOOL)_canDisplayForContext:(id)context selection:(id)selection;
- (BOOL)_areAllSuggestionsSelectableInSet:(id)set;
- (BOOL)_isRecursivelyComplete;
- (BOOL)_routeSuggestionsCanBeSubmitted;
- (NSArray)selectableRouteSuggestions;
- (NSString)localizedSelectableRoutesPrompt;
- (NSString)localizedTitle;
- (RAPBadRouteSuggestionsQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (RAPCommentQuestion)commentQuestion;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setNoGoodRoutesShown:(BOOL)shown;
- (void)setSelectedRouteSuggestions:(id)suggestions;
@end

@implementation RAPBadRouteSuggestionsQuestion

- (NSString)localizedSelectableRoutesPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy setType:8];
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v6];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:44];

  report = [(RAPQuestion *)self report];
  report2 = [(RAPQuestion *)self report];
  _context = [report2 _context];
  displayedDirectionsPlan = [_context displayedDirectionsPlan];
  recording = [displayedDirectionsPlan recording];
  [parametersCopy addDirectionsContextWithReport:report recording:recording];

  details = [parametersCopy details];
  if (!details)
  {
    details = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:details];
  }

  directionsFeedback = [details directionsFeedback];
  if (!directionsFeedback)
  {
    directionsFeedback = objc_alloc_init(GEORPDirectionsFeedback);
    [details setDirectionsFeedback:directionsFeedback];
  }

  v34 = details;
  v35 = parametersCopy;
  [directionsFeedback setCorrectionType:4];
  directionsContext = [directionsFeedback directionsContext];
  if (!directionsContext)
  {
    directionsContext = objc_alloc_init(GEORPDirectionsFeedbackContext);
    [directionsFeedback setDirectionsContext:directionsContext];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(RAPBadRouteSuggestionsQuestion *)self selectedRouteSuggestions];
  v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v37 = 0;
        v38 = 0;
        selfCopy = self;
        report3 = [(RAPQuestion *)self report];
        _context2 = [report3 _context];
        displayedDirectionsPlan2 = [_context2 displayedDirectionsPlan];
        v25 = [displayedDirectionsPlan2 getRoutesIndex:&v37 directionsResponseIndex:&v38 forRouteSuggestion:v20];

        if (v25)
        {
          v26 = objc_alloc_init(GEORPSuggestedRouteIndex);
          [v26 setDirectionsResponseIndex:v38];
          [v26 setDirectionsResponseSuggestedRoutesIndex:v37];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            rideSelections = [v20 rideSelections];
            [v26 setRideSelections:rideSelections];
          }

          directionsCorrections = [directionsFeedback directionsCorrections];

          if (!directionsCorrections)
          {
            v29 = objc_alloc_init(GEORPDirectionsCorrections);
            [directionsFeedback setDirectionsCorrections:v29];
          }

          directionsCorrections2 = [directionsFeedback directionsCorrections];
          [directionsCorrections2 addProblematicRouteIndex:v26];
        }

        self = selfCopy;
      }

      v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v17);
  }

  if ([(RAPBadRouteSuggestionsQuestion *)self noGoodRoutesShown])
  {
    directionsCorrections3 = [directionsFeedback directionsCorrections];
    if (!directionsCorrections3)
    {
      directionsCorrections3 = objc_alloc_init(GEORPDirectionsCorrections);
      [directionsFeedback setDirectionsCorrections:directionsCorrections3];
    }

    [directionsCorrections3 setNoGoodRoutesShown:1];
  }

  commentQuestion = [(RAPBadRouteSuggestionsQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:v35];
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tell us more about the better route" value:@"localized string not found" table:0];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Take a photo to help Apple verify the better route." value:@"localized string not found" table:0];
    v11 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:0 localizedPhotosPickerExplanation:v10];
    v12 = self->_commentQuestion;
    self->_commentQuestion = v11;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (BOOL)_isRecursivelyComplete
{
  commentQuestion = [(RAPBadRouteSuggestionsQuestion *)self commentQuestion];
  if ([commentQuestion _isRecursivelyComplete])
  {
    v6.receiver = self;
    v6.super_class = RAPBadRouteSuggestionsQuestion;
    _isRecursivelyComplete = [(RAPQuestion *)&v6 _isRecursivelyComplete];
  }

  else
  {
    _isRecursivelyComplete = 0;
  }

  return _isRecursivelyComplete;
}

- (BOOL)_routeSuggestionsCanBeSubmitted
{
  selectedRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self selectedRouteSuggestions];
  if ([selectedRouteSuggestions count])
  {
    noGoodRoutesShown = 1;
  }

  else
  {
    noGoodRoutesShown = [(RAPBadRouteSuggestionsQuestion *)self noGoodRoutesShown];
  }

  return noGoodRoutesShown;
}

- (void)setNoGoodRoutesShown:(BOOL)shown
{
  selectedRouteSuggestions = self->_selectedRouteSuggestions;
  if (shown)
  {
    self->_selectedRouteSuggestions = 0;
  }

  else
  {
    if (selectedRouteSuggestions)
    {
      return;
    }

    v5 = +[NSSet set];
    selectedRouteSuggestions = self->_selectedRouteSuggestions;
    self->_selectedRouteSuggestions = v5;
  }

  [(RAPQuestion *)self _didChange];
}

- (void)setSelectedRouteSuggestions:(id)suggestions
{
  if (self->_selectedRouteSuggestions != suggestions)
  {
    v4 = [suggestions copy];
    selectedRouteSuggestions = self->_selectedRouteSuggestions;
    self->_selectedRouteSuggestions = v4;

    [(RAPQuestion *)self _didChange];
  }
}

- (BOOL)_areAllSuggestionsSelectableInSet:(id)set
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  setCopy = set;
  v5 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(setCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        selectableRouteSuggestions = [(RAPBadRouteSuggestionsQuestion *)self selectableRouteSuggestions];
        LODWORD(v9) = [selectableRouteSuggestions containsObject:v9];

        if (!v9)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v6 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (NSArray)selectableRouteSuggestions
{
  report = [(RAPQuestion *)self report];
  _context = [report _context];
  displayedDirectionsPlan = [_context displayedDirectionsPlan];
  displayedRouteSuggestions = [displayedDirectionsPlan displayedRouteSuggestions];

  return displayedRouteSuggestions;
}

- (RAPBadRouteSuggestionsQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  v8.receiver = self;
  v8.super_class = RAPBadRouteSuggestionsQuestion;
  v4 = [(RAPQuestion *)&v8 initWithReport:report parentQuestion:question];
  if (v4)
  {
    v5 = +[NSSet set];
    selectedRouteSuggestions = v4->_selectedRouteSuggestions;
    v4->_selectedRouteSuggestions = v5;
  }

  return v4;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Better Route Available [Report a Problem category]" value:@"localized string not found" table:0];

  return v3;
}

+ (BOOL)_canDisplayForContext:(id)context selection:(id)selection
{
  contextCopy = context;
  selectionCopy = selection;
  displayedDirectionsPlan = [contextCopy displayedDirectionsPlan];
  displayedRouteSuggestions = [displayedDirectionsPlan displayedRouteSuggestions];
  if ([displayedRouteSuggestions count])
  {
    directionsHistory = [contextCopy directionsHistory];
    firstObject = [directionsHistory firstObject];
    v11 = firstObject == selectionCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end