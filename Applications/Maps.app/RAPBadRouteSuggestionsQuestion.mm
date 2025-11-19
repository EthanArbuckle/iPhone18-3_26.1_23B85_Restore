@interface RAPBadRouteSuggestionsQuestion
+ (BOOL)_canDisplayForContext:(id)a3 selection:(id)a4;
- (BOOL)_areAllSuggestionsSelectableInSet:(id)a3;
- (BOOL)_isRecursivelyComplete;
- (BOOL)_routeSuggestionsCanBeSubmitted;
- (NSArray)selectableRouteSuggestions;
- (NSString)localizedSelectableRoutesPrompt;
- (NSString)localizedTitle;
- (RAPBadRouteSuggestionsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (RAPCommentQuestion)commentQuestion;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setNoGoodRoutesShown:(BOOL)a3;
- (void)setSelectedRouteSuggestions:(id)a3;
@end

@implementation RAPBadRouteSuggestionsQuestion

- (NSString)localizedSelectableRoutesPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  [v4 setType:8];
  v5 = [v4 commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v4 setCommonContext:v6];
  }

  v7 = [v4 commonContext];
  [v7 addUserPath:44];

  v8 = [(RAPQuestion *)self report];
  v9 = [(RAPQuestion *)self report];
  v10 = [v9 _context];
  v11 = [v10 displayedDirectionsPlan];
  v12 = [v11 recording];
  [v4 addDirectionsContextWithReport:v8 recording:v12];

  v13 = [v4 details];
  if (!v13)
  {
    v13 = objc_alloc_init(GEORPFeedbackDetails);
    [v4 setDetails:v13];
  }

  v14 = [v13 directionsFeedback];
  if (!v14)
  {
    v14 = objc_alloc_init(GEORPDirectionsFeedback);
    [v13 setDirectionsFeedback:v14];
  }

  v34 = v13;
  v35 = v4;
  [v14 setCorrectionType:4];
  v15 = [v14 directionsContext];
  if (!v15)
  {
    v15 = objc_alloc_init(GEORPDirectionsFeedbackContext);
    [v14 setDirectionsContext:v15];
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
        v21 = self;
        v22 = [(RAPQuestion *)self report];
        v23 = [v22 _context];
        v24 = [v23 displayedDirectionsPlan];
        v25 = [v24 getRoutesIndex:&v37 directionsResponseIndex:&v38 forRouteSuggestion:v20];

        if (v25)
        {
          v26 = objc_alloc_init(GEORPSuggestedRouteIndex);
          [v26 setDirectionsResponseIndex:v38];
          [v26 setDirectionsResponseSuggestedRoutesIndex:v37];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v20 rideSelections];
            [v26 setRideSelections:v27];
          }

          v28 = [v14 directionsCorrections];

          if (!v28)
          {
            v29 = objc_alloc_init(GEORPDirectionsCorrections);
            [v14 setDirectionsCorrections:v29];
          }

          v30 = [v14 directionsCorrections];
          [v30 addProblematicRouteIndex:v26];
        }

        self = v21;
      }

      v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v17);
  }

  if ([(RAPBadRouteSuggestionsQuestion *)self noGoodRoutesShown])
  {
    v31 = [v14 directionsCorrections];
    if (!v31)
    {
      v31 = objc_alloc_init(GEORPDirectionsCorrections);
      [v14 setDirectionsCorrections:v31];
    }

    [v31 setNoGoodRoutesShown:1];
  }

  v32 = [(RAPBadRouteSuggestionsQuestion *)self commentQuestion];
  [v32 _fillSubmissionParameters:v35];
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Tell us more about the better route" value:@"localized string not found" table:0];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Take a photo to help Apple verify the better route." value:@"localized string not found" table:0];
    v11 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v6 placeholderText:v8 emphasis:0 localizedPhotosPickerExplanation:v10];
    v12 = self->_commentQuestion;
    self->_commentQuestion = v11;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPBadRouteSuggestionsQuestion *)self commentQuestion];
  if ([v3 _isRecursivelyComplete])
  {
    v6.receiver = self;
    v6.super_class = RAPBadRouteSuggestionsQuestion;
    v4 = [(RAPQuestion *)&v6 _isRecursivelyComplete];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_routeSuggestionsCanBeSubmitted
{
  v3 = [(RAPBadRouteSuggestionsQuestion *)self selectedRouteSuggestions];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(RAPBadRouteSuggestionsQuestion *)self noGoodRoutesShown];
  }

  return v4;
}

- (void)setNoGoodRoutesShown:(BOOL)a3
{
  selectedRouteSuggestions = self->_selectedRouteSuggestions;
  if (a3)
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

- (void)setSelectedRouteSuggestions:(id)a3
{
  if (self->_selectedRouteSuggestions != a3)
  {
    v4 = [a3 copy];
    selectedRouteSuggestions = self->_selectedRouteSuggestions;
    self->_selectedRouteSuggestions = v4;

    [(RAPQuestion *)self _didChange];
  }
}

- (BOOL)_areAllSuggestionsSelectableInSet:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(RAPBadRouteSuggestionsQuestion *)self selectableRouteSuggestions];
        LODWORD(v9) = [v10 containsObject:v9];

        if (!v9)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(RAPQuestion *)self report];
  v3 = [v2 _context];
  v4 = [v3 displayedDirectionsPlan];
  v5 = [v4 displayedRouteSuggestions];

  return v5;
}

- (RAPBadRouteSuggestionsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v8.receiver = self;
  v8.super_class = RAPBadRouteSuggestionsQuestion;
  v4 = [(RAPQuestion *)&v8 initWithReport:a3 parentQuestion:a4];
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

+ (BOOL)_canDisplayForContext:(id)a3 selection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 displayedDirectionsPlan];
  v8 = [v7 displayedRouteSuggestions];
  if ([v8 count])
  {
    v9 = [v5 directionsHistory];
    v10 = [v9 firstObject];
    v11 = v10 == v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end