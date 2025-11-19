@interface RAPDirectionsWhichOneQuestion
+ (BOOL)_canDisplayForContext:(id)a3 transportMode:(unint64_t)a4;
+ (id)localizedTransitTitle;
- (BOOL)_followupQuestionsAreDirectionsRelated;
- (BOOL)_isRecursivelyComplete;
- (GEOComposedRoute)routeFromRecording;
- (NSArray)selectableDirectionsRequests;
- (NSString)localizedDescription;
- (NSString)localizedSelectDirectionsRequestPrompt;
- (NSString)localizedTitle;
- (RAPDirectionsCategoryQuestion)followUpQuestion;
- (RAPDirectionsWhichOneQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 transportType:(unint64_t)a5 selectableRequests:(id)a6;
- (id)_alternateAuxiliaryControlsRecording;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setSelectedValue:(id)a3;
@end

@implementation RAPDirectionsWhichOneQuestion

- (BOOL)_followupQuestionsAreDirectionsRelated
{
  v2 = [(RAPMenuQuestion *)self->_followUpQuestion selectedMenuItem];
  v3 = [v2 questionCategory];

  return (v3 - 1) < 7;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v30 = a3;
  v4 = [v30 commonContext];
  if (!v4)
  {
    v4 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v30 setCommonContext:v4];
  }

  if (self->_isInitialQuestion)
  {
    v5 = [(RAPQuestion *)self _context];
    v6 = [v5 displayedDirectionsPlan];

    if (v6)
    {
      [v4 addUserPath:55];
    }
  }

  [v4 addUserPath:14];
  v7 = [v30 details];

  if (!v7)
  {
    v8 = objc_alloc_init(GEORPFeedbackDetails);
    [v30 setDetails:v8];
  }

  if ([(RAPDirectionsWhichOneQuestion *)self _followupQuestionsAreDirectionsRelated])
  {
    [v30 setType:8];
    v9 = [(RAPQuestion *)self report];
    v10 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    v11 = [v10 recording];
    [v30 addDirectionsContextWithReport:v9 recording:v11];

    v12 = [v30 details];
    v13 = [v12 directionsFeedback];

    if (!v13)
    {
      v14 = objc_alloc_init(GEORPDirectionsFeedback);
      v15 = [v30 details];
      [v15 setDirectionsFeedback:v14];
    }

    v16 = [v30 details];
    v17 = [v16 directionsFeedback];
    [v17 setCorrectionType:3];
  }

  else
  {
    v18 = objc_alloc_init(GEORPTransitPoiFeedback);
    v19 = [v30 details];
    [v19 setTransitPoiFeedback:v18];

    v20 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    v21 = [v20 recording];
    v22 = [v21 directionsRequests];
    v23 = [v30 details];
    v24 = [v23 transitPoiFeedback];
    [v24 setDirectionsRequests:v22];

    v25 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    v26 = [v25 recording];
    v27 = [v26 directionsResponses];
    v28 = [v30 details];
    v29 = [v28 transitPoiFeedback];
    [v29 setDirectionsResponses:v27];

    [v30 setType:3];
  }

  [(RAPMenuQuestion *)self->_followUpQuestion _fillSubmissionParameters:v30];
}

- (id)_alternateAuxiliaryControlsRecording
{
  v2 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
  v3 = [v2 recording];

  return v3;
}

- (RAPDirectionsCategoryQuestion)followUpQuestion
{
  followUpQuestion = self->_followUpQuestion;
  if (!followUpQuestion)
  {
    v4 = [RAPDirectionsCategoryQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = [(RAPDirectionsCategoryQuestion *)v4 initWithReport:v5 parentQuestion:self directions:self->_selectedValue];
    v7 = self->_followUpQuestion;
    self->_followUpQuestion = v6;

    followUpQuestion = self->_followUpQuestion;
  }

  return followUpQuestion;
}

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPMenuQuestion *)self->_followUpQuestion _isRecursivelyComplete];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = RAPDirectionsWhichOneQuestion;
    LOBYTE(v3) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return v3;
}

- (GEOComposedRoute)routeFromRecording
{
  if (self->_selectedValue)
  {
    v3 = self->_route;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectedValue:(id)a3
{
  v5 = a3;
  if (self->_selectedValue != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_selectedValue, a3);
    followUpQuestion = self->_followUpQuestion;
    self->_followUpQuestion = 0;

    route = self->_route;
    self->_route = 0;

    [(RAPQuestion *)self _didChange];
    v5 = v8;
  }
}

- (NSArray)selectableDirectionsRequests
{
  selectableDirectionsRequests = self->_selectableDirectionsRequests;
  if (!selectableDirectionsRequests)
  {
    v4 = [(RAPQuestion *)self report];
    v5 = [v4 _context];

    v6 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v5 directionsHistory];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = [v12 recording];

        if (v13)
        {
          transportType = self->_transportType;
          v15 = [v12 requestedTransportType];
          if (v15 > 5)
          {
            v16 = 1;
          }

          else
          {
            v16 = qword_1012160D0[v15];
          }

          if ((v16 & transportType) != 0)
          {
            [v6 addObject:v12];
          }

          if ([v6 count] > 0xE)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v17 = [v6 copy];
    v18 = self->_selectableDirectionsRequests;
    self->_selectableDirectionsRequests = v17;

    selectableDirectionsRequests = self->_selectableDirectionsRequests;
  }

  return selectableDirectionsRequests;
}

- (NSString)localizedSelectDirectionsRequestPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route [Report a Problem prompt]" value:@"localized string not found" table:0];

  return v3;
}

- (RAPDirectionsWhichOneQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 transportType:(unint64_t)a5 selectableRequests:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = RAPDirectionsWhichOneQuestion;
  v12 = [(RAPQuestion *)&v15 initWithReport:a3 parentQuestion:v10];
  v13 = v12;
  if (v12)
  {
    v12->_isInitialQuestion = v10 == 0;
    v12->_transportType = a5;
    objc_storeStrong(&v12->_selectableDirectionsRequests, a6);
  }

  return v13;
}

- (NSString)localizedDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Navigation description [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Navigation [Report a Problem category]" value:@"localized string not found" table:0];

  return v3;
}

+ (BOOL)_canDisplayForContext:(id)a3 transportMode:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [a3 directionsHistory];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 recording];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 requestedTransportType];
          v14 = v13 > 5 ? 1 : qword_1012160D0[v13];
          v15 = v14 & a4;

          if (v15)
          {
            v16 = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  return v16;
}

+ (id)localizedTransitTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"bad directions [Report a Problem category]" value:@"localized string not found" table:0];

  return v3;
}

@end