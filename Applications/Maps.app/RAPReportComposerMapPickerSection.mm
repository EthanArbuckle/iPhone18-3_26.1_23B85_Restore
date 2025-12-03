@interface RAPReportComposerMapPickerSection
- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)kind camera:(id)camera report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes;
- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes;
- (id)cellForRowAtIndex:(int64_t)index;
- (id)footerTitle;
- (id)headerTitle;
- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path;
- (void)registerReuseIdentifiersForCells;
@end

@implementation RAPReportComposerMapPickerSection

- (void)registerReuseIdentifiersForCells
{
  MapsFeature_IsEnabled_MoreReportTypes();
  v3 = objc_opt_class();

  [(RAPTablePartSection *)self registerClass:v3 forNamespacedReuseIdentifier:@"MapViewTableViewCell"];
}

- (void)didSelectCellForRowAtIndex:(int64_t)index tableIndexPath:(id)path
{
  v5 = [(RAPInlineMapViewModel *)self->_mapViewModel delegate:index];
  [v5 inlineMapViewModelRequestsDisplayPowerActions:self->_mapViewModel];
}

- (id)footerTitle
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v3 = +[NSBundle mainBundle];
    footerTitle = [v3 localizedStringForKey:@"Report composer map picker location footer title [Report a Problem]" value:@"localized string not found" table:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RAPReportComposerMapPickerSection;
    footerTitle = [(RAPTablePartSection *)&v6 footerTitle];
  }

  return footerTitle;
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

- (id)cellForRowAtIndex:(int64_t)index
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

- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  reportCopy = report;
  delegateCopy = delegate;
  attributesCopy = attributes;
  v23.receiver = self;
  v23.super_class = RAPReportComposerMapPickerSection;
  v17 = [(RAPTablePartSection *)&v23 init];
  if (v17)
  {
    if (!attributesCopy)
    {
      v18 = [RAPMarkerViewAttributes alloc];
      v19 = +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
      attributesCopy = [(RAPMarkerViewAttributes *)v18 initWithTitle:0 styleAttributes:v19];
    }

    longitude = [[RAPInlineMapViewModel alloc] initForPickingFeatureOfKind:kind centerCoordinate:attributesCopy markerViewAttributes:0 accessPointsEnabled:delegateCopy delegate:latitude, longitude];
    mapViewModel = v17->_mapViewModel;
    v17->_mapViewModel = longitude;

    v17->_kind = kind;
    objc_storeStrong(&v17->_report, report);
  }

  return v17;
}

- (RAPReportComposerMapPickerSection)initWithFeatureKind:(int64_t)kind camera:(id)camera report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes
{
  cameraCopy = camera;
  attributesCopy = attributes;
  delegateCopy = delegate;
  reportCopy = report;
  [cameraCopy centerCoordinate];
  v17 = [(RAPReportComposerMapPickerSection *)self initWithFeatureKind:kind centerCoordinate:reportCopy report:delegateCopy delegate:attributesCopy markerViewAttributes:?];

  if (v17)
  {
    objc_storeStrong(&v17->_camera, camera);
  }

  return v17;
}

@end