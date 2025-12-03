@interface RAPIncidentsQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)_initialCoordinatePickingMapRect;
- ($873BFAB23BBB6E2F0B0288ED2F935688)coordinatePickingMapRect;
- (BOOL)isComplete;
- (CLLocationCoordinate2D)originalCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (RAPCommentQuestion)commentQuestion;
- (RAPIncidentsQuestion)initWithReport:(id)report parentQuestion:(id)question incidentLayoutItem:(id)item;
- (void)_fillSubmissionParameters:(id)parameters;
@end

@implementation RAPIncidentsQuestion

- (CLLocationCoordinate2D)originalCoordinate
{
  latitude = self->_originalCoordinate.latitude;
  longitude = self->_originalCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  latitude = self->_selectedCoordinate.latitude;
  longitude = self->_selectedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isComplete
{
  commentQuestion = [(RAPIncidentsQuestion *)self commentQuestion];
  isComplete = [commentQuestion isComplete];

  return isComplete;
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
    v8 = [v7 localizedStringForKey:@"Add more information about the Incident" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:5];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_initialCoordinatePickingMapRect
{
  _context = [(RAPQuestion *)self _context];
  v3 = sub_1007A39B4(_context);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.var1.var1 = v13;
  result.var1.var0 = v12;
  result.var0.var1 = v11;
  result.var0.var0 = v10;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)coordinatePickingMapRect
{
  [(RAPIncidentsQuestion *)self selectedCoordinate];
  if (fabs(v4) > 180.0 || v3 < -90.0 || v3 > 90.0)
  {
    [(RAPIncidentsQuestion *)self _initialCoordinatePickingMapRect];
  }

  else
  {
    [(RAPIncidentsQuestion *)self selectedCoordinate];
    MKCoordinateRegionMakeWithDistance(v9, 200.0, 200.0);
    MKMapRectForCoordinateRegion();
  }

  result.var1.var1 = v8;
  result.var1.var0 = v7;
  result.var0.var1 = v6;
  result.var0.var0 = v5;
  return result;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  Current = CFAbsoluteTimeGetCurrent();
  commonContext = [parametersCopy commonContext];
  [commonContext setClientCreatedAt:Current];

  v7 = objc_alloc_init(GEORPFeedbackDetails);
  [parametersCopy setDetails:v7];

  v8 = objc_alloc_init(GEORPIncidentFeedback);
  details = [parametersCopy details];
  [details setIncidentFeedback:v8];

  v16 = objc_alloc_init(GEORPNewIncidentDetails);
  v10 = objc_alloc_init(GEORPIncidentLocation);
  [v16 setIncidentLocation:v10];

  v11 = [[GEOLatLng alloc] initWithLatitude:self->_selectedCoordinate.latitude longitude:self->_selectedCoordinate.longitude];
  incidentLocation = [v16 incidentLocation];
  [incidentLocation setLatLng:v11];

  [v16 setType:{-[TrafficIncidentLayoutItem incidentType](self->_incidentLayoutItem, "incidentType")}];
  details2 = [parametersCopy details];
  incidentFeedback = [details2 incidentFeedback];
  [incidentFeedback setNewIncidentDetails:v16];

  commentQuestion = [(RAPIncidentsQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (RAPIncidentsQuestion)initWithReport:(id)report parentQuestion:(id)question incidentLayoutItem:(id)item
{
  reportCopy = report;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = RAPIncidentsQuestion;
  v10 = [(RAPQuestion *)&v17 initWithReport:reportCopy parentQuestion:question];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_incidentLayoutItem, item);
    _context = [reportCopy _context];
    mapCamera = [_context mapCamera];
    [mapCamera centerCoordinate];
    v11->_selectedCoordinate.latitude = v14;
    v11->_selectedCoordinate.longitude = v15;

    v11->_originalCoordinate = CLLocationCoordinate2DMake(v11->_selectedCoordinate.latitude, v11->_selectedCoordinate.longitude);
  }

  return v11;
}

@end