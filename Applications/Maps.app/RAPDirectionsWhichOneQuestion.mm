@interface RAPDirectionsWhichOneQuestion
+ (BOOL)_canDisplayForContext:(id)context transportMode:(unint64_t)mode;
+ (id)localizedTransitTitle;
- (BOOL)_followupQuestionsAreDirectionsRelated;
- (BOOL)_isRecursivelyComplete;
- (GEOComposedRoute)routeFromRecording;
- (NSArray)selectableDirectionsRequests;
- (NSString)localizedDescription;
- (NSString)localizedSelectDirectionsRequestPrompt;
- (NSString)localizedTitle;
- (RAPDirectionsCategoryQuestion)followUpQuestion;
- (RAPDirectionsWhichOneQuestion)initWithReport:(id)report parentQuestion:(id)question transportType:(unint64_t)type selectableRequests:(id)requests;
- (id)_alternateAuxiliaryControlsRecording;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setSelectedValue:(id)value;
@end

@implementation RAPDirectionsWhichOneQuestion

- (BOOL)_followupQuestionsAreDirectionsRelated
{
  selectedMenuItem = [(RAPMenuQuestion *)self->_followUpQuestion selectedMenuItem];
  questionCategory = [selectedMenuItem questionCategory];

  return (questionCategory - 1) < 7;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];
  if (!commonContext)
  {
    commonContext = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:commonContext];
  }

  if (self->_isInitialQuestion)
  {
    _context = [(RAPQuestion *)self _context];
    displayedDirectionsPlan = [_context displayedDirectionsPlan];

    if (displayedDirectionsPlan)
    {
      [commonContext addUserPath:55];
    }
  }

  [commonContext addUserPath:14];
  details = [parametersCopy details];

  if (!details)
  {
    v8 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v8];
  }

  if ([(RAPDirectionsWhichOneQuestion *)self _followupQuestionsAreDirectionsRelated])
  {
    [parametersCopy setType:8];
    report = [(RAPQuestion *)self report];
    selectedValue = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    recording = [selectedValue recording];
    [parametersCopy addDirectionsContextWithReport:report recording:recording];

    details2 = [parametersCopy details];
    directionsFeedback = [details2 directionsFeedback];

    if (!directionsFeedback)
    {
      v14 = objc_alloc_init(GEORPDirectionsFeedback);
      details3 = [parametersCopy details];
      [details3 setDirectionsFeedback:v14];
    }

    details4 = [parametersCopy details];
    directionsFeedback2 = [details4 directionsFeedback];
    [directionsFeedback2 setCorrectionType:3];
  }

  else
  {
    v18 = objc_alloc_init(GEORPTransitPoiFeedback);
    details5 = [parametersCopy details];
    [details5 setTransitPoiFeedback:v18];

    selectedValue2 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    recording2 = [selectedValue2 recording];
    directionsRequests = [recording2 directionsRequests];
    details6 = [parametersCopy details];
    transitPoiFeedback = [details6 transitPoiFeedback];
    [transitPoiFeedback setDirectionsRequests:directionsRequests];

    selectedValue3 = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
    recording3 = [selectedValue3 recording];
    directionsResponses = [recording3 directionsResponses];
    details7 = [parametersCopy details];
    transitPoiFeedback2 = [details7 transitPoiFeedback];
    [transitPoiFeedback2 setDirectionsResponses:directionsResponses];

    [parametersCopy setType:3];
  }

  [(RAPMenuQuestion *)self->_followUpQuestion _fillSubmissionParameters:parametersCopy];
}

- (id)_alternateAuxiliaryControlsRecording
{
  selectedValue = [(RAPDirectionsWhichOneQuestion *)self selectedValue];
  recording = [selectedValue recording];

  return recording;
}

- (RAPDirectionsCategoryQuestion)followUpQuestion
{
  followUpQuestion = self->_followUpQuestion;
  if (!followUpQuestion)
  {
    v4 = [RAPDirectionsCategoryQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = [(RAPDirectionsCategoryQuestion *)v4 initWithReport:report parentQuestion:self directions:self->_selectedValue];
    v7 = self->_followUpQuestion;
    self->_followUpQuestion = v6;

    followUpQuestion = self->_followUpQuestion;
  }

  return followUpQuestion;
}

- (BOOL)_isRecursivelyComplete
{
  _isRecursivelyComplete = [(RAPMenuQuestion *)self->_followUpQuestion _isRecursivelyComplete];
  if (_isRecursivelyComplete)
  {
    v5.receiver = self;
    v5.super_class = RAPDirectionsWhichOneQuestion;
    LOBYTE(_isRecursivelyComplete) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return _isRecursivelyComplete;
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

- (void)setSelectedValue:(id)value
{
  valueCopy = value;
  if (self->_selectedValue != valueCopy)
  {
    v8 = valueCopy;
    objc_storeStrong(&self->_selectedValue, value);
    followUpQuestion = self->_followUpQuestion;
    self->_followUpQuestion = 0;

    route = self->_route;
    self->_route = 0;

    [(RAPQuestion *)self _didChange];
    valueCopy = v8;
  }
}

- (NSArray)selectableDirectionsRequests
{
  selectableDirectionsRequests = self->_selectableDirectionsRequests;
  if (!selectableDirectionsRequests)
  {
    report = [(RAPQuestion *)self report];
    _context = [report _context];

    v6 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    directionsHistory = [_context directionsHistory];
    v8 = [directionsHistory countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(directionsHistory);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        recording = [v12 recording];

        if (recording)
        {
          transportType = self->_transportType;
          requestedTransportType = [v12 requestedTransportType];
          if (requestedTransportType > 5)
          {
            v16 = 1;
          }

          else
          {
            v16 = qword_1012160D0[requestedTransportType];
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
          v9 = [directionsHistory countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (RAPDirectionsWhichOneQuestion)initWithReport:(id)report parentQuestion:(id)question transportType:(unint64_t)type selectableRequests:(id)requests
{
  questionCopy = question;
  requestsCopy = requests;
  v15.receiver = self;
  v15.super_class = RAPDirectionsWhichOneQuestion;
  v12 = [(RAPQuestion *)&v15 initWithReport:report parentQuestion:questionCopy];
  v13 = v12;
  if (v12)
  {
    v12->_isInitialQuestion = questionCopy == 0;
    v12->_transportType = type;
    objc_storeStrong(&v12->_selectableDirectionsRequests, requests);
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

+ (BOOL)_canDisplayForContext:(id)context transportMode:(unint64_t)mode
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  directionsHistory = [context directionsHistory];
  v6 = [directionsHistory countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(directionsHistory);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        recording = [v10 recording];
        if (recording)
        {
          v12 = recording;
          requestedTransportType = [v10 requestedTransportType];
          v14 = requestedTransportType > 5 ? 1 : qword_1012160D0[requestedTransportType];
          v15 = v14 & mode;

          if (v15)
          {
            v16 = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [directionsHistory countByEnumeratingWithState:&v18 objects:v22 count:16];
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