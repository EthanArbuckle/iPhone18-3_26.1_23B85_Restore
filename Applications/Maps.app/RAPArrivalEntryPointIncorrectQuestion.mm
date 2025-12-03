@interface RAPArrivalEntryPointIncorrectQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)_isRecursivelyComplete;
- (BOOL)isComplete;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)originalCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (NSString)localizedCoordinatePickingPrompt;
- (NSString)localizedTitle;
- (RAPArrivalEntryPointIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question arrivalPoint:(CLLocationCoordinate2D)point;
- (RAPCommentQuestion)commentQuestion;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation RAPArrivalEntryPointIncorrectQuestion

- (CLLocationCoordinate2D)selectedCoordinate
{
  latitude = self->_selectedCoordinate.latitude;
  longitude = self->_selectedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)originalCoordinate
{
  latitude = self->_originalCoordinate.latitude;
  longitude = self->_originalCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy setType:8];
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v5];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:46];

  commentQuestion = [(RAPArrivalEntryPointIncorrectQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:parametersCopy];

  p_selectedCoordinate = &self->_selectedCoordinate;
  if (CLLocationCoordinate2DIsValid(self->_selectedCoordinate))
  {
    p_originalCoordinate = &self->_originalCoordinate;
    if (vabdd_f64(self->_originalCoordinate.latitude, p_selectedCoordinate->latitude) >= 0.00000000999999994 || vabdd_f64(self->_originalCoordinate.longitude, self->_selectedCoordinate.longitude) >= 0.00000000999999994)
    {
      details = [parametersCopy details];

      if (!details)
      {
        v11 = objc_alloc_init(GEORPFeedbackDetails);
        [parametersCopy setDetails:v11];
      }

      details2 = [parametersCopy details];
      directionsFeedback = [details2 directionsFeedback];

      if (!directionsFeedback)
      {
        directionsFeedback = objc_alloc_init(GEORPDirectionsFeedback);
        details3 = [parametersCopy details];
        [details3 setDirectionsFeedback:directionsFeedback];
      }

      [directionsFeedback setCorrectionType:2];
      details4 = [parametersCopy details];
      directionsFeedback2 = [details4 directionsFeedback];
      directionsCorrections = [directionsFeedback2 directionsCorrections];

      if (!directionsCorrections)
      {
        directionsCorrections = objc_alloc_init(GEORPDirectionsCorrections);
        details5 = [parametersCopy details];
        directionsFeedback3 = [details5 directionsFeedback];
        [directionsFeedback3 setDirectionsCorrections:directionsCorrections];
      }

      v20 = objc_alloc_init(GEORPCorrectedCoordinate);
      v21 = [[GEOLatLng alloc] initWithLatitude:p_selectedCoordinate->latitude longitude:p_selectedCoordinate->longitude];
      [v20 setCorrectedCoordinate:v21];

      v22 = [[GEOLatLng alloc] initWithLatitude:p_originalCoordinate->latitude longitude:p_originalCoordinate->longitude];
      [v20 setOriginalCoordinate:v22];

      [directionsCorrections setArrivalCoordinate:v20];
    }
  }
}

- (BOOL)_isRecursivelyComplete
{
  _isRecursivelyComplete = [(RAPQuestion *)self->_commentQuestion _isRecursivelyComplete];
  if (_isRecursivelyComplete)
  {
    v5.receiver = self;
    v5.super_class = RAPArrivalEntryPointIncorrectQuestion;
    LOBYTE(_isRecursivelyComplete) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return _isRecursivelyComplete;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedMoreInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Add more details about the incorrect arrival entrance" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:2];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (NSString)localizedCoordinatePickingPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Pan the map to position the entrance [Report a Problem]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Arrival Entrance [Report a Problem category]" value:@"localized string not found" table:0];

  return v3;
}

- (BOOL)isComplete
{
  selectedCoordinate = self->_selectedCoordinate;
  v2 = (vabdd_f64(selectedCoordinate.latitude, self->_originalCoordinate.latitude) >= 0.00000000999999994) | (vabdd_f64(selectedCoordinate.longitude, self->_originalCoordinate.longitude) >= 0.00000000999999994);
  return CLLocationCoordinate2DIsValid(selectedCoordinate) & v2;
}

- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate
{
  if (vabdd_f64(coordinate.latitude, self->_selectedCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(coordinate.longitude, self->_selectedCoordinate.longitude) >= 0.00000000999999994)
  {
    self->_selectedCoordinate = coordinate;
    [(RAPQuestion *)self _didChange];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_selectedCoordinate.latitude;
  longitude = self->_selectedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect
{
  MKCoordinateRegionMakeWithDistance(self->_selectedCoordinate, 50.0, 50.0);

  MKMapRectForCoordinateRegion();
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (RAPArrivalEntryPointIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question arrivalPoint:(CLLocationCoordinate2D)point
{
  longitude = point.longitude;
  latitude = point.latitude;
  v8.receiver = self;
  v8.super_class = RAPArrivalEntryPointIncorrectQuestion;
  result = [(RAPQuestion *)&v8 initWithReport:report parentQuestion:question];
  if (result)
  {
    result->_originalCoordinate.latitude = latitude;
    result->_originalCoordinate.longitude = longitude;
    result->_selectedCoordinate = result->_originalCoordinate;
    result->_mapType = 0;
    result->_showPin = 1;
  }

  return result;
}

@end