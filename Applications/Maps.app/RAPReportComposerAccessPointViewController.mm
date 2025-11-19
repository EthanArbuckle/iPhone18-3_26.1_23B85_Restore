@interface RAPReportComposerAccessPointViewController
- (RAPReportComposerAccessPointViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)_doneBarItem;
- (id)tableParts;
- (int)_analyticTargetForMapPicker;
- (void)_mapPickerDone;
- (void)_updateDoneBarItem;
- (void)presentLocationPicker;
- (void)reloadLocationRow;
@end

@implementation RAPReportComposerAccessPointViewController

- (void)reloadLocationRow
{
  [(RAPAccessPointQuestion *)self->_question originalCoordinate];
  v4 = v3;
  v6 = v5;
  [(RAPAccessPointQuestion *)self->_question selectedCoordinate];
  if (vabdd_f64(v4, v8) >= 0.00000000999999994 || vabdd_f64(v6, v7) >= 0.00000000999999994)
  {
    locationPart = self->_locationPart;
    [(RAPAccessPointQuestion *)self->_question selectedCoordinate];

    [(RAPReportComposerMapFeaturePickerPart *)locationPart updateCoordinate:?];
  }
}

- (void)_updateDoneBarItem
{
  [(RAPAccessPointQuestion *)self->_question originalCoordinate];
  doneBarItem = self->_doneBarItem;
  v6 = (vabdd_f64(v3, self->_selectedCoordinate.latitude) >= 0.00000000999999994) | (vabdd_f64(v4, self->_selectedCoordinate.longitude) >= 0.00000000999999994);

  [(UIBarButtonItem *)doneBarItem setEnabled:v6];
}

- (void)_mapPickerDone
{
  [(RAPAccessPointQuestion *)self->_question setSelectedCoordinate:self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude];
  [(RAPReportComposerAccessPointViewController *)self reloadLocationRow];
  v4 = [(RAPReportComposerAccessPointViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (id)_doneBarItem
{
  doneBarItem = self->_doneBarItem;
  if (!doneBarItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_mapPickerDone"];
    v5 = self->_doneBarItem;
    self->_doneBarItem = v4;

    [(RAPReportComposerAccessPointViewController *)self _updateDoneBarItem];
    doneBarItem = self->_doneBarItem;
  }

  return doneBarItem;
}

- (void)presentLocationPicker
{
  objc_initWeak(&location, self);
  v3 = [RAPMapFeaturePickerViewController alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Pan the map to position the entrance [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPAccessPointQuestion *)self->_question selectedCoordinate];
  v7 = v6;
  v9 = v8;
  [(RAPAccessPointQuestion *)self->_question visibleMapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(RAPReportComposerAccessPointViewController *)self _analyticTargetForMapPicker];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100CB62C4;
  v29 = &unk_101650248;
  objc_copyWeak(&v30, &location);
  v19 = [(RAPMapFeaturePickerViewController *)v3 initForPickingFeatureOfKind:3 withPrompt:v5 title:0 initialFeatureCoordinate:0 inMapRect:v18 withCamera:&v26 analyticsTarget:v7 selection:v9, v11, v13, v15, v17];

  v20 = [(RAPReportComposerAccessPointViewController *)self _doneBarItem:v26];
  v21 = [v19 navigationItem];
  [v21 setRightBarButtonItem:v20];

  v22 = [(RAPReportComposerAccessPointViewController *)self navigationItem];
  v23 = [v22 title];
  v24 = [v19 navigationItem];
  [v24 setTitle:v23];

  v25 = [(RAPReportComposerAccessPointViewController *)self navigationController];
  [v25 pushViewController:v19 animated:1];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (int)_analyticTargetForMapPicker
{
  v2 = [(RAPAccessPointQuestion *)self->_question analyticTarget];
  if (v2 == 1105)
  {
    v3 = 1142;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1110)
  {
    return 1109;
  }

  else
  {
    return v3;
  }
}

- (id)tableParts
{
  v3 = +[NSMutableArray array];
  v4 = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:v4];

  locationPart = self->_locationPart;
  if (!locationPart)
  {
    v6 = [RAPReportComposerMapFeaturePickerPart alloc];
    [(RAPAccessPointQuestion *)self->_question selectedCoordinate];
    v8 = v7;
    v10 = v9;
    v11 = [(RAPReportTableViewController *)self report];
    v12 = [(RAPReportComposerMapFeaturePickerPart *)v6 initWithFeatureKind:3 centerCoordinate:v11 report:self delegate:0 markerViewAttributes:v8, v10];
    v13 = self->_locationPart;
    self->_locationPart = v12;

    locationPart = self->_locationPart;
  }

  [v3 addObject:locationPart];
  if (objc_opt_respondsToSelector())
  {
    entranceDetailsPart = self->_entranceDetailsPart;
    if (!entranceDetailsPart)
    {
      v15 = [RAPReportComposerEntranceDetailsPart alloc];
      v16 = [(RAPAccessPointQuestion *)self->_question accessPointName];
      v17 = [(RAPReportComposerEntranceDetailsPart *)v15 initWithCorrectableString:v16];
      v18 = self->_entranceDetailsPart;
      self->_entranceDetailsPart = v17;

      entranceDetailsPart = self->_entranceDetailsPart;
    }

    [v3 addObject:entranceDetailsPart];
  }

  commentPart = self->_commentPart;
  if (!commentPart)
  {
    v20 = [RAPReportComposerCommentPart alloc];
    v21 = [(RAPAccessPointQuestion *)self->_question commentQuestion];
    v22 = [(RAPReportComposerCommentPart *)v20 initWithCommentQuestion:v21];
    v23 = self->_commentPart;
    self->_commentPart = v22;

    commentPart = self->_commentPart;
  }

  [v3 addObject:commentPart];

  return v3;
}

- (RAPReportComposerAccessPointViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = RAPReportComposerAccessPointViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [(RAPReportTableViewController *)v11 sendButtonItem];
    v13 = [(RAPReportComposerAccessPointViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  return v11;
}

@end