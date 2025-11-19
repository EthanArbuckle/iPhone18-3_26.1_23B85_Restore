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
  v4 = [(SALocation *)self latitude];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(SALocation *)self longitude];
  [v7 doubleValue];
  v9 = [v3 initWithLatitude:v6 longitude:v8];

  return v9;
}

- (NSDictionary)locationActivityMetaData
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SALocation *)self label];

  if (v4)
  {
    v5 = [(SALocation *)self label];
    v6 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v3 setValue:v5 forKey:v6];
  }

  v7 = [(SALocation *)self city];

  if (v7)
  {
    v8 = [(SALocation *)self city];
    v9 = +[_DKLocationApplicationActivityMetadataKey city];
    [v3 setValue:v8 forKey:v9];
  }

  v10 = [(SALocation *)self postalCode];

  if (v10)
  {
    v11 = [(SALocation *)self postalCode];
    v12 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v3 setValue:v11 forKey:v12];
  }

  v13 = [(SALocation *)self street];

  if (v13)
  {
    v14 = [(SALocation *)self street];
    v15 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v3 setValue:v14 forKey:v15];
  }

  v16 = [(SALocation *)self stateCode];

  if (v16)
  {
    v17 = [(SALocation *)self stateCode];
    v18 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v3 setValue:v17 forKey:v18];
  }

  v19 = [(SALocation *)self countryCode];

  if (v19)
  {
    v20 = [(SALocation *)self countryCode];
    v21 = +[_DKLocationApplicationActivityMetadataKey country];
    [v3 setValue:v20 forKey:v21];
  }

  v22 = [(SALocation *)self longitude];

  if (v22)
  {
    v23 = [(SALocation *)self longitude];
    v24 = +[_DKLocationApplicationActivityMetadataKey longitude];
    [v3 setValue:v23 forKey:v24];
  }

  v25 = [(SALocation *)self latitude];

  if (v25)
  {
    v26 = [(SALocation *)self latitude];
    v27 = +[_DKLocationApplicationActivityMetadataKey latitude];
    [v3 setValue:v26 forKey:v27];
  }

  return v3;
}

- (BOOL)isRegionCity
{
  v2 = [(SALocation *)self regionType];
  v3 = [v2 isEqualToString:SARegionTypeCityValue];

  return v3;
}

- (BOOL)isRegionCounty
{
  v2 = [(SALocation *)self regionType];
  v3 = [v2 isEqualToString:SARegionTypeCountyValue];

  return v3;
}

- (BOOL)isRegionState
{
  v2 = [(SALocation *)self regionType];
  v3 = [v2 isEqualToString:SARegionTypeStateValue];

  return v3;
}

- (BOOL)isRegionCountry
{
  v2 = [(SALocation *)self regionType];
  v3 = [v2 isEqualToString:SARegionTypeCountryValue];

  return v3;
}

@end