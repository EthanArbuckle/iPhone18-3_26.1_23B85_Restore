@interface MKPlacemark
- (CLLocationCoordinate2D)coordinate;
- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate addressDictionary:(NSDictionary *)addressDictionary;
- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate postalAddress:(CNPostalAddress *)postalAddress;
- (NSString)title;
- (id)thoroughfare;
@end

@implementation MKPlacemark

- (id)thoroughfare
{
  v8.receiver = self;
  v8.super_class = MKPlacemark;
  thoroughfare = [(MKPlacemark *)&v8 thoroughfare];
  v4 = thoroughfare;
  if (thoroughfare)
  {
    fullThoroughfare = thoroughfare;
  }

  else
  {
    fullThoroughfare = [(MKPlacemark *)self fullThoroughfare];
  }

  v6 = fullThoroughfare;

  return v6;
}

- (CLLocationCoordinate2D)coordinate
{
  location = [(MKPlacemark *)self location];
  if (location)
  {
    location2 = [(MKPlacemark *)self location];
    [location2 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0xC066800000000000;
    v6 = 0xC066800000000000;
  }

  v9 = *&v6;
  v10 = *&v8;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (NSString)title
{
  formattedAddressLines = [(MKPlacemark *)self formattedAddressLines];
  if ([formattedAddressLines count])
  {
    _mapkit_joinedAddressComponents = [formattedAddressLines _mapkit_joinedAddressComponents];
  }

  else
  {
    mkPostalAddressDictionary = [(MKPlacemark *)self mkPostalAddressDictionary];
    _mapkit_joinedAddressComponents = MKAddressStringForAddressDictionary(mkPostalAddressDictionary, 1u);
  }

  return _mapkit_joinedAddressComponents;
}

- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate postalAddress:(CNPostalAddress *)postalAddress
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = MKAddressDictionaryFromPostalAddress(postalAddress);
  longitude = [(MKPlacemark *)self initWithCoordinate:v7 addressDictionary:latitude, longitude];

  return longitude;
}

- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate addressDictionary:(NSDictionary *)addressDictionary
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = MKAddressDictionaryFromContactsDictionary(addressDictionary);
  v8 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  v9 = [(MKPlacemark *)self initWithLocation:v8 addressDictionary:v7 region:0 areasOfInterest:0];

  return v9;
}

- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  v4 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:coordinate.latitude longitude:coordinate.longitude];
  v5 = [(MKPlacemark *)self initWithLocation:v4 addressDictionary:0 region:0 areasOfInterest:0];

  return v5;
}

@end