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
  v3 = [(MKPlacemark *)&v8 thoroughfare];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MKPlacemark *)self fullThoroughfare];
  }

  v6 = v5;

  return v6;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(MKPlacemark *)self location];
  if (v3)
  {
    v4 = [(MKPlacemark *)self location];
    [v4 coordinate];
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
  v3 = [(MKPlacemark *)self formattedAddressLines];
  if ([v3 count])
  {
    v4 = [v3 _mapkit_joinedAddressComponents];
  }

  else
  {
    v5 = [(MKPlacemark *)self mkPostalAddressDictionary];
    v4 = MKAddressStringForAddressDictionary(v5, 1u);
  }

  return v4;
}

- (MKPlacemark)initWithCoordinate:(CLLocationCoordinate2D)coordinate postalAddress:(CNPostalAddress *)postalAddress
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = MKAddressDictionaryFromPostalAddress(postalAddress);
  v8 = [(MKPlacemark *)self initWithCoordinate:v7 addressDictionary:latitude, longitude];

  return v8;
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