@interface STCity
- (STCity)initWithCoder:(id)coder;
- (id)_initWithName:(id)name unlocalizedName:(id)unlocalizedName countryName:(id)countryName unlocalizedCountryName:(id)unlocalizedCountryName timeZone:(id)zone latitude:(id)latitude longitude:(id)longitude alCityID:(id)self0;
- (id)alCityValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCity

- (STCity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnlocalizedName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnlocalizedCountryName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeZone"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Latitude"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Longitude"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ALCityID"];

  v13 = [(STCity *)self _initWithName:v5 unlocalizedName:v6 countryName:v7 unlocalizedCountryName:v8 timeZone:v9 latitude:v10 longitude:v11 alCityID:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"Name"];
  [coderCopy encodeObject:self->_unlocalizedName forKey:@"UnlocalizedName"];
  [coderCopy encodeObject:self->_countryName forKey:@"CountryName"];
  [coderCopy encodeObject:self->_unlocalizedCountryName forKey:@"UnlocalizedName"];
  [coderCopy encodeObject:self->_timeZone forKey:@"TimeZone"];
  [coderCopy encodeObject:self->_latitude forKey:@"Latitude"];
  [coderCopy encodeObject:self->_longitude forKey:@"Longitude"];
  [coderCopy encodeObject:self->_alCityID forKey:@"ALCityID"];
}

- (id)alCityValue
{
  v3 = objc_alloc_init(MEMORY[0x1E698B668]);
  alCityID = self->_alCityID;
  if (alCityID)
  {
    [v3 setIdentifier:{-[NSNumber intValue](alCityID, "intValue")}];
  }

  latitude = self->_latitude;
  if (latitude)
  {
    [(NSNumber *)latitude floatValue];
    [v3 setLatitude:?];
  }

  longitude = self->_longitude;
  if (longitude)
  {
    [(NSNumber *)longitude floatValue];
    [v3 setLongitude:?];
  }

  [v3 setName:self->_name];
  [v3 setUnlocalizedName:self->_unlocalizedName];
  [v3 setCountryName:self->_countryName];
  [v3 setUnlocalizedCountryName:self->_unlocalizedCountryName];
  [v3 setTimeZone:self->_timeZone];

  return v3;
}

- (id)_initWithName:(id)name unlocalizedName:(id)unlocalizedName countryName:(id)countryName unlocalizedCountryName:(id)unlocalizedCountryName timeZone:(id)zone latitude:(id)latitude longitude:(id)longitude alCityID:(id)self0
{
  nameCopy = name;
  unlocalizedNameCopy = unlocalizedName;
  countryNameCopy = countryName;
  unlocalizedCountryNameCopy = unlocalizedCountryName;
  zoneCopy = zone;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  dCopy = d;
  v36.receiver = self;
  v36.super_class = STCity;
  v22 = [(STCity *)&v36 init];
  if (v22)
  {
    v23 = [nameCopy copy];
    name = v22->_name;
    v22->_name = v23;

    v25 = [unlocalizedNameCopy copy];
    unlocalizedName = v22->_unlocalizedName;
    v22->_unlocalizedName = v25;

    v27 = [countryNameCopy copy];
    countryName = v22->_countryName;
    v22->_countryName = v27;

    v29 = [unlocalizedCountryNameCopy copy];
    unlocalizedCountryName = v22->_unlocalizedCountryName;
    v22->_unlocalizedCountryName = v29;

    v31 = [zoneCopy copy];
    timeZone = v22->_timeZone;
    v22->_timeZone = v31;

    objc_storeStrong(&v22->_latitude, latitude);
    objc_storeStrong(&v22->_longitude, longitude);
    objc_storeStrong(&v22->_alCityID, d);
  }

  return v22;
}

@end