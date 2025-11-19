@interface RAPReportComposerMapFeaturePickerPart
- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)a3 camera:(id)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7;
- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)a3 centerCoordinate:(CLLocationCoordinate2D)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7;
- (RAPReportComposerMapFeaturePickerPart)initWithMapPickerSection:(id)a3;
@end

@implementation RAPReportComposerMapFeaturePickerPart

- (RAPReportComposerMapFeaturePickerPart)initWithMapPickerSection:(id)a3
{
  v5 = a3;
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v9.receiver = self;
  v9.super_class = RAPReportComposerMapFeaturePickerPart;
  v7 = [(RAPTablePart *)&v9 initWithSections:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_mapCoordinatePickerSection, a3);
    [(RAPTablePartSection *)v7->_mapCoordinatePickerSection setHeaderTitle:@"Test"];
  }

  return v7;
}

- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)a3 centerCoordinate:(CLLocationCoordinate2D)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [[RAPReportComposerMapPickerSection alloc] initWithFeatureKind:a3 centerCoordinate:v15 report:v14 delegate:v13 markerViewAttributes:latitude, longitude];

  v17 = [(RAPReportComposerMapFeaturePickerPart *)self initWithMapPickerSection:v16];
  return v17;
}

- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)a3 camera:(id)a4 report:(id)a5 delegate:(id)a6 markerViewAttributes:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[RAPReportComposerMapPickerSection alloc] initWithFeatureKind:a3 camera:v15 report:v14 delegate:v13 markerViewAttributes:v12];

  v17 = [(RAPReportComposerMapFeaturePickerPart *)self initWithMapPickerSection:v16];
  return v17;
}

@end