@interface RAPReportComposerIncidentsEditorViewController
- (RAPReportComposerIncidentsEditorViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
- (void)_presentMapPicker;
- (void)inlineMapViewModelUpdatedSelectedCoordinate:(id)coordinate;
@end

@implementation RAPReportComposerIncidentsEditorViewController

- (void)_presentMapPicker
{
  incidentLayoutItem = [(RAPIncidentsQuestion *)self->_question incidentLayoutItem];
  v4 = +[TrafficIncidentLayoutItem styleAttributesForType:](TrafficIncidentLayoutItem, "styleAttributesForType:", [incidentLayoutItem incidentType]);

  v5 = [[RAPMarkerViewAttributes alloc] initWithTitle:0 styleAttributes:v4];
  objc_initWeak(&location, self);
  v6 = [RAPEditLocationViewController alloc];
  [(RAPIncidentsQuestion *)self->_question selectedCoordinate];
  v8 = v7;
  v10 = v9;
  [(RAPIncidentsQuestion *)self->_question coordinatePickingMapRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [[RAPCorrectableEntryPoints alloc] initWithGEORoadAccessPoints:&__NSArray0__struct];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_100AF69C4;
  v27 = &unk_101637DB0;
  objc_copyWeak(&v28, &location);
  v20 = [(RAPEditLocationViewController *)v6 initWithInitialCoordinates:1158 inMapRect:v5 analyticsTarget:0 markerViewAttributes:v19 allowEditingEntryPoints:&v24 correctableEntryPoints:0 selectionHandler:v8 cancelSelectionHandler:v10, v12, v14, v16, v18];
  mapPicker = self->_mapPicker;
  self->_mapPicker = v20;

  v22 = [(RAPIncidentsQuestion *)self->_question localizedTitle:v24];
  [(RAPEditLocationViewController *)self->_mapPicker setNavigationTitle:v22];

  navigationController = [(RAPReportComposerIncidentsEditorViewController *)self navigationController];
  [navigationController pushViewController:self->_mapPicker animated:1];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)inlineMapViewModelUpdatedSelectedCoordinate:(id)coordinate
{
  [coordinate selectedCoordinate];
  latitude = v10.latitude;
  longitude = v10.longitude;
  if (CLLocationCoordinate2DIsValid(v10))
  {
    [(RAPIncidentsQuestion *)self->_question selectedCoordinate];
    if (vabdd_f64(latitude, v7) >= 0.00000000999999994 || vabdd_f64(longitude, v6) >= 0.00000000999999994)
    {
      question = self->_question;

      [(RAPIncidentsQuestion *)question setSelectedCoordinate:latitude, longitude];
    }
  }
}

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  labelMarkerPickerPart = self->_labelMarkerPickerPart;
  if (!labelMarkerPickerPart)
  {
    incidentLayoutItem = [(RAPIncidentsQuestion *)self->_question incidentLayoutItem];
    v6 = +[TrafficIncidentLayoutItem styleAttributesForType:](TrafficIncidentLayoutItem, "styleAttributesForType:", [incidentLayoutItem incidentType]);

    v7 = [[RAPMarkerViewAttributes alloc] initWithTitle:0 styleAttributes:v6];
    v8 = [RAPReportComposerMapFeaturePickerPart alloc];
    report = [(RAPQuestion *)self->_question report];
    _context = [report _context];
    mapCamera = [_context mapCamera];
    report2 = [(RAPQuestion *)self->_question report];
    v13 = [(RAPReportComposerMapFeaturePickerPart *)v8 initWithFeatureKind:1 camera:mapCamera report:report2 delegate:self markerViewAttributes:v7];
    v14 = self->_labelMarkerPickerPart;
    self->_labelMarkerPickerPart = v13;

    labelMarkerPickerPart = self->_labelMarkerPickerPart;
  }

  [v3 addObject:labelMarkerPickerPart];
  commentPart = self->_commentPart;
  if (!commentPart)
  {
    v16 = [RAPReportComposerCommentPart alloc];
    commentQuestion = [(RAPIncidentsQuestion *)self->_question commentQuestion];
    v18 = [(RAPReportComposerCommentPart *)v16 initWithCommentQuestion:commentQuestion];
    v19 = self->_commentPart;
    self->_commentPart = v18;

    commentPart = self->_commentPart;
  }

  [v3 addObject:commentPart];

  return v3;
}

- (RAPReportComposerIncidentsEditorViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v15.receiver = self;
  v15.super_class = RAPReportComposerIncidentsEditorViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    sendButtonItem = [(RAPReportTableViewController *)v11 sendButtonItem];
    navigationItem = [(RAPReportComposerIncidentsEditorViewController *)v11 navigationItem];
    [navigationItem setRightBarButtonItem:sendButtonItem];
  }

  return v11;
}

@end