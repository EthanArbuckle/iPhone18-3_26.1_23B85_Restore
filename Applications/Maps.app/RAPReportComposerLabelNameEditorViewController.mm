@interface RAPReportComposerLabelNameEditorViewController
- (RAPReportComposerLabelNameEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)_instrumentSelectingLabel;
- (void)_labelPickerFinishedSelectingMarker;
- (void)_presentMapPicker;
- (void)_updateLabelPickerDoneBarItem;
@end

@implementation RAPReportComposerLabelNameEditorViewController

- (void)_labelPickerFinishedSelectingMarker
{
  [(VKLabelMarker *)self->_editedLabelMarker coordinate];
  v4 = v3;
  [(VKLabelMarker *)self->_editedLabelMarker coordinate];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(RAPReportComposerMapFeaturePickerPart *)self->_labelMarkerPickerPart updateCoordinate:v6.latitude, v6.longitude];
  v7 = [(RAPMapFeaturePickerViewController *)self->_mapPicker selectedLabelMarker];
  [(RAPLabelCorrectionsQuestion *)self->_question setLabelMarker:v7];

  v8 = [(RAPMapFeaturePickerViewController *)self->_mapPicker mapViewReportContext];
  [(RAPLabelCorrectionsQuestion *)self->_question setLabelMarkerPickingMapContext:v8];

  v9 = [(RAPLabelCorrectionsQuestion *)self->_question correctableName];
  [(RAPReportComposerIncorrectNamePart *)self->_nameEditorPart setCorrectableString:v9];

  [(UIBarButtonItem *)self->_labelPickerDoneBarItem setEnabled:[(RAPLabelCorrectionsQuestion *)self->_question isComplete]];
  v11 = [(RAPReportComposerLabelNameEditorViewController *)self navigationController];
  v10 = [v11 popViewControllerAnimated:1];
}

- (void)_updateLabelPickerDoneBarItem
{
  [(VKLabelMarker *)self->_editedLabelMarker coordinate];
  v4 = v3;
  v6 = v5;
  v7 = [(RAPLabelCorrectionsQuestion *)self->_question labelMarker];
  [v7 coordinate];
  v9 = v8;
  v11 = v10;

  v12 = (vabdd_f64(v4, v9) >= 0.00000000999999994 || vabdd_f64(v6, v11) >= 0.00000000999999994) && self->_editedLabelMarker != 0;
  labelPickerDoneBarItem = self->_labelPickerDoneBarItem;

  [(UIBarButtonItem *)labelPickerDoneBarItem setEnabled:v12];
}

- (void)_instrumentSelectingLabel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10153 onTarget:-[RAPMapFeaturePickerViewController analyticTarget](self->_mapPicker eventValue:{"analyticTarget"), 0}];
}

- (void)_presentMapPicker
{
  v3 = [(RAPLabelCorrectionsQuestion *)self->_question labelMarker];
  editedLabelMarker = self->_editedLabelMarker;
  self->_editedLabelMarker = v3;

  v5 = [(RAPReportTableViewController *)self report];
  v6 = [v5 _context];
  v7 = [v6 mapCamera];

  v8 = self->_editedLabelMarker;
  if (v8)
  {
    [(VKLabelMarker *)v8 coordinate];
    v10 = v9;
    [(VKLabelMarker *)self->_editedLabelMarker coordinate];
    v12 = CLLocationCoordinate2DMake(v10, v11);
    [v7 setCenterCoordinate:{v12.latitude, v12.longitude}];
  }

  else
  {
    v13 = [(RAPQuestion *)self->_question _context];
    v14 = [v13 mapCamera];
    [v14 centerCoordinate];
    [v7 setCenterCoordinate:?];
  }

  objc_initWeak(&location, self);
  v15 = [RAPMapFeaturePickerViewController alloc];
  v16 = [(RAPLabelCorrectionsQuestion *)self->_question localizedLabelMarkerPickingPrompt];
  v17 = [(RAPLabelCorrectionsQuestion *)self->_question localizedTitle];
  [(RAPLabelCorrectionsQuestion *)self->_question initialLabelMarkerPickingMapRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(RAPLabelCorrectionsQuestion *)self->_question coordinatePickingMapType];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100A54600;
  v32[3] = &unk_101650248;
  objc_copyWeak(&v33, &location);
  v27 = [(RAPMapFeaturePickerViewController *)v15 initForPickingFeatureOfKind:0 withPrompt:v16 title:v17 inMapRect:v7 withCamera:1126 analyticsTarget:v26 preferredMapType:v19 selection:v21, v23, v25, v32];
  mapPicker = self->_mapPicker;
  self->_mapPicker = v27;

  if (self->_editedLabelMarker)
  {
    [(RAPMapFeaturePickerViewController *)self->_mapPicker setSelectedLabelMarker:?];
  }

  labelPickerDoneBarItem = self->_labelPickerDoneBarItem;
  v30 = [(RAPMapFeaturePickerViewController *)self->_mapPicker navigationItem];
  [v30 setRightBarButtonItem:labelPickerDoneBarItem];

  v31 = [(RAPReportComposerLabelNameEditorViewController *)self navigationController];
  [v31 pushViewController:self->_mapPicker animated:1];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:v4];

  labelMarkerPickerPart = self->_labelMarkerPickerPart;
  if (!labelMarkerPickerPart)
  {
    v6 = [RAPReportComposerMapFeaturePickerPart alloc];
    v7 = [(RAPQuestion *)self->_question report];
    v8 = [v7 _context];
    v9 = [v8 mapCamera];
    v10 = [(RAPReportTableViewController *)self report];
    v11 = [(RAPReportComposerMapFeaturePickerPart *)v6 initWithFeatureKind:0 camera:v9 report:v10 delegate:self markerViewAttributes:0];
    v12 = self->_labelMarkerPickerPart;
    self->_labelMarkerPickerPart = v11;

    labelMarkerPickerPart = self->_labelMarkerPickerPart;
  }

  [v3 addObject:labelMarkerPickerPart];
  nameEditorPart = self->_nameEditorPart;
  if (!nameEditorPart)
  {
    v14 = [RAPReportComposerIncorrectNamePart alloc];
    v15 = [(RAPLabelCorrectionsQuestion *)self->_question correctableName];
    v16 = [(RAPReportComposerIncorrectNamePart *)v14 initWithCorrectableString:v15];
    v17 = self->_nameEditorPart;
    self->_nameEditorPart = v16;

    nameEditorPart = self->_nameEditorPart;
  }

  [v3 addObject:nameEditorPart];
  labelStatusPart = self->_labelStatusPart;
  if (!labelStatusPart)
  {
    v19 = [RAPReportComposerLabelStatusPart alloc];
    v20 = [(RAPLabelCorrectionsQuestion *)self->_question removeLabelCorrectableFlag];
    v21 = [(RAPReportComposerLabelStatusPart *)v19 initWithCorrectableFlag:v20];
    v22 = self->_labelStatusPart;
    self->_labelStatusPart = v21;

    labelStatusPart = self->_labelStatusPart;
  }

  [v3 addObject:labelStatusPart];
  commentPart = self->_commentPart;
  if (!commentPart)
  {
    v24 = [RAPReportComposerCommentPart alloc];
    v25 = [(RAPLabelCorrectionsQuestion *)self->_question commentQuestion];
    v26 = [(RAPReportComposerCommentPart *)v24 initWithCommentQuestion:v25];
    v27 = self->_commentPart;
    self->_commentPart = v26;

    commentPart = self->_commentPart;
  }

  [v3 addObject:commentPart];

  return v3;
}

- (RAPReportComposerLabelNameEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = RAPReportComposerLabelNameEditorViewController;
  v10 = [(RAPReportTableViewController *)&v17 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [(RAPReportTableViewController *)v11 sendButtonItem];
    v13 = [(RAPReportComposerLabelNameEditorViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];

    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"_labelPickerFinishedSelectingMarker"];
    labelPickerDoneBarItem = v11->_labelPickerDoneBarItem;
    v11->_labelPickerDoneBarItem = v14;

    [(RAPReportComposerLabelNameEditorViewController *)v11 _updateLabelPickerDoneBarItem];
  }

  return v11;
}

@end