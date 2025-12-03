@interface SALocation
- (BOOL)isRegionCity;
- (BOOL)isRegionCountry;
- (BOOL)isRegionCounty;
- (BOOL)isRegionState;
- (CLLocation)clRepresentation;
- (NSDictionary)locationActivityMetaData;
@end

@implementation SALocation

- (CLLocation)clRepresentation
{
  v3 = [CLLocation alloc];
  latitude = [(SALocation *)self latitude];
  [latitude doubleValue];
  v6 = v5;
  longitude = [(SALocation *)self longitude];
  [longitude doubleValue];
  v9 = [v3 initWithLatitude:v6 longitude:v8];

  return v9;
}

- (NSDictionary)locationActivityMetaData
{
  v3 = +[NSMutableDictionary dictionary];
  label = [(SALocation *)self label];

  if (label)
  {
    label2 = [(SALocation *)self label];
    v6 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v3 setValue:label2 forKey:v6];
  }

  city = [(SALocation *)self city];

  if (city)
  {
    city2 = [(SALocation *)self city];
    v9 = +[_DKLocationApplicationActivityMetadataKey city];
    [v3 setValue:city2 forKey:v9];
  }

  postalCode = [(SALocation *)self postalCode];

  if (postalCode)
  {
    postalCode2 = [(SALocation *)self postalCode];
    v12 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v3 setValue:postalCode2 forKey:v12];
  }

  street = [(SALocation *)self street];

  if (street)
  {
    street2 = [(SALocation *)self street];
    v15 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v3 setValue:street2 forKey:v15];
  }

  stateCode = [(SALocation *)self stateCode];

  if (stateCode)
  {
    stateCode2 = [(SALocation *)self stateCode];
    v18 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v3 setValue:stateCode2 forKey:v18];
  }

  countryCode = [(SALocation *)self countryCode];

  if (countryCode)
  {
    countryCode2 = [(SALocation *)self countryCode];
    v21 = +[_DKLocationApplicationActivityMetadataKey country];
    [v3 setValue:countryCode2 forKey:v21];
  }

  longitude = [(SALocation *)self longitude];

  if (longitude)
  {
    longitude2 = [(SALocation *)self longitude];
    v24 = +[_DKLocationApplicationActivityMetadataKey longitude];
    [v3 setValue:longitude2 forKey:v24];
  }

  latitude = [(SALocation *)self latitude];

  if (latitude)
  {
    latitude2 = [(SALocation *)self latitude];
    v27 = +[_DKLocationApplicationActivityMetadataKey latitude];
    [v3 setValue:latitude2 forKey:v27];
  }

  return v3;
}

- (BOOL)isRegionCity
{
  regionType = [(SALocation *)self regionType];
  v3 = [regionType isEqualToString:SARegionTypeCityValue];

  return v3;
}

- (BOOL)isRegionCounty
{
  regionType = [(SALocation *)self regionType];
  v3 = [regionType isEqualToString:SARegionTypeCountyValue];

  return v3;
}

- (BOOL)isRegionState
{
  regionType = [(SALocation *)self regionType];
  v3 = [regionType isEqualToString:SARegionTypeStateValue];

  return v3;
}

- (BOOL)isRegionCountry
{
  regionType = [(SALocation *)self regionType];
  v3 = [regionType isEqualToString:SARegionTypeCountryValue];

  return v3;
}

@end