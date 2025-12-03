@interface ReportASearchAutocompleteResult
- (CLLocationCoordinate2D)coordinate;
- (ReportASearchAutocompleteResult)initWithTitle:(id)title;
@end

@implementation ReportASearchAutocompleteResult

- (CLLocationCoordinate2D)coordinate
{
  latitude = kCLLocationCoordinate2DInvalid.latitude;
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (ReportASearchAutocompleteResult)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = ReportASearchAutocompleteResult;
  v6 = [(ReportASearchAutocompleteResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userVisibleTitle, title);
  }

  return v7;
}

@end