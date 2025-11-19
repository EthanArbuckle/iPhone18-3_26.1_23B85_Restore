@interface RAPReportComposerMapPickerSection
- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)a3 camera:(id)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7;
- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)a3 centerCoordinate:(CLLocationCoordinate2D)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7;
- (id)cellForRowAtIndex:(int64_t)a3;
- (id)footerTitle;
- (id)headerTitle;
- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4;
- (void)registerReuseIdentifiersForCells;
@end

@implementation RAPReportComposerMapPickerSection

- (void)registerReuseIdentifiersForCells
{
  MapsFeature_IsEnabled_MoreReportTypes();
  v3 = objc_opt_class();

  [(RAPTablePartSection *)self registerClass:v3 forNamespacedReuseIdentifier:@"MapViewTableViewCell"];
}

- (void)didSelectCellForRowAtIndex:(int64_t)a3 tableIndexPath:(id)a4
{
  v5 = [(RAPInlineMapViewModel *)self->_mapViewModel delegate:a3];
  [v5 inlineMapViewModelRequestsDisplayPowerActions:self->_mapViewModel];
}

- (id)footerTitle
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Report composer map picker location footer title [Report a Problem]" value:@"localized string not found" table:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RAPReportComposerMapPickerSection;
    v4 = [(RAPTablePartSection *)&v6 footerTitle];
  }

  return v4;
}

- (id)headerTitle
{
  kind = self->_kind;
  if (kind == 3)
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"Entrance [Report a Problem]";
  }

  else if (kind)
  {
    IsEnabled_MoreReportTypes = MapsFeature_IsEnabled_MoreReportTypes();
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (IsEnabled_MoreReportTypes)
    {
      v5 = @"Location On Map [Add Location Section]";
    }

    else
    {
      v5 = @"Location [Add Location Section]";
    }
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"Label [Report a Problem]";
  }

  v7 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v7;
}

- (id)cellForRowAtIndex:(int64_t)a3
{
  mapViewCell = self->_mapViewCell;
  if (!mapViewCell)
  {
    if (MapsFeature_IsEnabled_MoreReportTypes())
    {
      v5 = [[RAPInteractiveMapViewTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"MapViewTableViewCell" viewModel:self->_mapViewModel report:self->_report];
    }

    else
    {
      v5 = [[RAPMapViewTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"MapViewTableViewCell" viewModel:self->_mapViewModel];
    }

    v6 = self->_mapViewCell;
    self->_mapViewCell = &v5->super;

    mapViewCell = self->_mapViewCell;
  }

  return mapViewCell;
}

- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)a3 centerCoordinate:(CLLocationCoordinate2D)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = RAPReportComposerMapPickerSection;
  v17 = [(RAPTablePartSection *)&v23 init];
  if (v17)
  {
    if (!v16)
    {
      v18 = [RAPMarkerViewAttributes alloc];
      v19 = +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
      v16 = [(RAPMarkerViewAttributes *)v18 initWithTitle:0 styleAttributes:v19];
    }

    v20 = [[RAPInlineMapViewModel alloc] initForPickingFeatureOfKind:a3 centerCoordinate:v16 markerViewAttributes:0 accessPointsEnabled:v15 delegate:latitude, longitude];
    mapViewModel = v17->_mapViewModel;
    v17->_mapViewModel = v20;

    v17->_kind = a3;
    objc_storeStrong(&v17->_report, a5);
  }

  return v17;
}

- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)a3 camera:(id)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7
{
  v13 = a4;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  [v13 centerCoordinate];
  v17 = [(RAPReportComposerMapPickerSection *)self initWithFeatureKind:a3 centerCoordinate:v16 report:v15 delegate:v14 markerViewAttributes:?];

  if (v17)
  {
    objc_storeStrong(&v17->_camera, a4);
  }

  return v17;
}

@end