@interface RAPIncidentsQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)_initialCoordinatePickingMapRect;
- ($873BFAB23BBB6E2F0B0288ED2F935688)coordinatePickingMapRect;
- (BOOL)isComplete;
- (CLLocationCoordinate2D)originalCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (RAPCommentQuestion)commentQuestion;
- (RAPIncidentsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 incidentLayoutItem:(id)a5;
- (void)_fillSubmissionParameters:(id)a3;
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
  v2 = [(RAPIncidentsQuestion *)self commentQuestion];
  v3 = [v2 isComplete];

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
    v8 = [v7 localizedStringForKey:@"Add more information about the Incident" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v6 placeholderText:v8 emphasis:5];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_initialCoordinatePickingMapRect
{
  v2 = [(RAPQuestion *)self _context];
  v3 = sub_1007A39B4(v2);
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

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [v4 commonContext];
  [v6 setClientCreatedAt:Current];

  v7 = objc_alloc_init(GEORPFeedbackDetails);
  [v4 setDetails:v7];

  v8 = objc_alloc_init(GEORPIncidentFeedback);
  v9 = [v4 details];
  [v9 setIncidentFeedback:v8];

  v16 = objc_alloc_init(GEORPNewIncidentDetails);
  v10 = objc_alloc_init(GEORPIncidentLocation);
  [v16 setIncidentLocation:v10];

  v11 = [[GEOLatLng alloc] initWithLatitude:self->_selectedCoordinate.latitude longitude:self->_selectedCoordinate.longitude];
  v12 = [v16 incidentLocation];
  [v12 setLatLng:v11];

  [v16 setType:{-[TrafficIncidentLayoutItem incidentType](self->_incidentLayoutItem, "incidentType")}];
  v13 = [v4 details];
  v14 = [v13 incidentFeedback];
  [v14 setNewIncidentDetails:v16];

  v15 = [(RAPIncidentsQuestion *)self commentQuestion];
  [v15 _fillSubmissionParameters:v4];
}

- (RAPIncidentsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 incidentLayoutItem:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = RAPIncidentsQuestion;
  v10 = [(RAPQuestion *)&v17 initWithReport:v8 parentQuestion:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_incidentLayoutItem, a5);
    v12 = [v8 _context];
    v13 = [v12 mapCamera];
    [v13 centerCoordinate];
    v11->_selectedCoordinate.latitude = v14;
    v11->_selectedCoordinate.longitude = v15;

    v11->_originalCoordinate = CLLocationCoordinate2DMake(v11->_selectedCoordinate.latitude, v11->_selectedCoordinate.longitude);
  }

  return v11;
}

@end