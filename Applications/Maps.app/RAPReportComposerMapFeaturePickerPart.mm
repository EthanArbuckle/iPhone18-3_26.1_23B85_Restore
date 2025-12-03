@interface RAPReportComposerMapFeaturePickerPart
- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)kind camera:(id)camera report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes;
- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes;
- (RAPReportComposerMapFeaturePickerPart)initWithMapPickerSection:(id)section;
@end

@implementation RAPReportComposerMapFeaturePickerPart

- (RAPReportComposerMapFeaturePickerPart)initWithMapPickerSection:(id)section
{
  sectionCopy = section;
  v10 = sectionCopy;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v9.receiver = self;
  v9.super_class = RAPReportComposerMapFeaturePickerPart;
  v7 = [(RAPTablePart *)&v9 initWithSections:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_mapCoordinatePickerSection, section);
    [(RAPTablePartSection *)v7->_mapCoordinatePickerSection setHeaderTitle:@"Test"];
  }

  return v7;
}

- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  attributesCopy = attributes;
  delegateCopy = delegate;
  reportCopy = report;
  longitude = [[RAPReportComposerMapPickerSection alloc] initWithFeatureKind:kind centerCoordinate:reportCopy report:delegateCopy delegate:attributesCopy markerViewAttributes:latitude, longitude];

  v17 = [(RAPReportComposerMapFeaturePickerPart *)self initWithMapPickerSection:longitude];
  return v17;
}

- (RAPReportComposerMapFeaturePickerPart)initWithFeatureKind:(int64_t)kind camera:(id)camera report:(id)report delegate:(id)delegate markerViewAttributes:(id)attributes
{
  attributesCopy = attributes;
  delegateCopy = delegate;
  reportCopy = report;
  cameraCopy = camera;
  v16 = [[RAPReportComposerMapPickerSection alloc] initWithFeatureKind:kind camera:cameraCopy report:reportCopy delegate:delegateCopy markerViewAttributes:attributesCopy];

  v17 = [(RAPReportComposerMapFeaturePickerPart *)self initWithMapPickerSection:v16];
  return v17;
}

@end