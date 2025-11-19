@interface RAPArrivalEntryPointIncorrectQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)visibleMapRect;
- (BOOL)_isRecursivelyComplete;
- (BOOL)isComplete;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)originalCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (NSString)localizedCoordinatePickingPrompt;
- (NSString)localizedTitle;
- (RAPArrivalEntryPointIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 arrivalPoint:(CLLocationCoordinate2D)a5;
- (RAPCommentQuestion)commentQuestion;
- (void)_fillSubmissionParameters:(id)a3;
- (void)setSelectedCoordinate:(CLLocationCoordinate2D)a3;
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

- (void)_fillSubmissionParameters:(id)a3
{
  v23 = a3;
  [v23 setType:8];
  v4 = [v23 commonContext];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v23 setCommonContext:v5];
  }

  v6 = [v23 commonContext];
  [v6 addUserPath:46];

  v7 = [(RAPArrivalEntryPointIncorrectQuestion *)self commentQuestion];
  [v7 _fillSubmissionParameters:v23];

  p_selectedCoordinate = &self->_selectedCoordinate;
  if (CLLocationCoordinate2DIsValid(self->_selectedCoordinate))
  {
    p_originalCoordinate = &self->_originalCoordinate;
    if (vabdd_f64(self->_originalCoordinate.latitude, p_selectedCoordinate->latitude) >= 0.00000000999999994 || vabdd_f64(self->_originalCoordinate.longitude, self->_selectedCoordinate.longitude) >= 0.00000000999999994)
    {
      v10 = [v23 details];

      if (!v10)
      {
        v11 = objc_alloc_init(GEORPFeedbackDetails);
        [v23 setDetails:v11];
      }

      v12 = [v23 details];
      v13 = [v12 directionsFeedback];

      if (!v13)
      {
        v13 = objc_alloc_init(GEORPDirectionsFeedback);
        v14 = [v23 details];
        [v14 setDirectionsFeedback:v13];
      }

      [v13 setCorrectionType:2];
      v15 = [v23 details];
      v16 = [v15 directionsFeedback];
      v17 = [v16 directionsCorrections];

      if (!v17)
      {
        v17 = objc_alloc_init(GEORPDirectionsCorrections);
        v18 = [v23 details];
        v19 = [v18 directionsFeedback];
        [v19 setDirectionsCorrections:v17];
      }

      v20 = objc_alloc_init(GEORPCorrectedCoordinate);
      v21 = [[GEOLatLng alloc] initWithLatitude:p_selectedCoordinate->latitude longitude:p_selectedCoordinate->longitude];
      [v20 setCorrectedCoordinate:v21];

      v22 = [[GEOLatLng alloc] initWithLatitude:p_originalCoordinate->latitude longitude:p_originalCoordinate->longitude];
      [v20 setOriginalCoordinate:v22];

      [v17 setArrivalCoordinate:v20];
    }
  }
}

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPQuestion *)self->_commentQuestion _isRecursivelyComplete];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = RAPArrivalEntryPointIncorrectQuestion;
    LOBYTE(v3) = [(RAPQuestion *)&v5 _isRecursivelyComplete];
  }

  return v3;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedMoreInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Add more details about the incorrect arrival entrance" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v6 placeholderText:v8 emphasis:2];
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

- (void)setSelectedCoordinate:(CLLocationCoordinate2D)a3
{
  if (vabdd_f64(a3.latitude, self->_selectedCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(a3.longitude, self->_selectedCoordinate.longitude) >= 0.00000000999999994)
  {
    self->_selectedCoordinate = a3;
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

- (RAPArrivalEntryPointIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 arrivalPoint:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v8.receiver = self;
  v8.super_class = RAPArrivalEntryPointIncorrectQuestion;
  result = [(RAPQuestion *)&v8 initWithReport:a3 parentQuestion:a4];
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