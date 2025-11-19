@interface STCity
- (STCity)initWithCoder:(id)a3;
- (id)_initWithName:(id)a3 unlocalizedName:(id)a4 countryName:(id)a5 unlocalizedCountryName:(id)a6 timeZone:(id)a7 latitude:(id)a8 longitude:(id)a9 alCityID:(id)a10;
- (id)alCityValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCity

- (STCity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnlocalizedName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CountryName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnlocalizedCountryName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeZone"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Latitude"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Longitude"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ALCityID"];

  v13 = [(STCity *)self _initWithName:v5 unlocalizedName:v6 countryName:v7 unlocalizedCountryName:v8 timeZone:v9 latitude:v10 longitude:v11 alCityID:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"Name"];
  [v5 encodeObject:self->_unlocalizedName forKey:@"UnlocalizedName"];
  [v5 encodeObject:self->_countryName forKey:@"CountryName"];
  [v5 encodeObject:self->_unlocalizedCountryName forKey:@"UnlocalizedName"];
  [v5 encodeObject:self->_timeZone forKey:@"TimeZone"];
  [v5 encodeObject:self->_latitude forKey:@"Latitude"];
  [v5 encodeObject:self->_longitude forKey:@"Longitude"];
  [v5 encodeObject:self->_alCityID forKey:@"ALCityID"];
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

- (id)_initWithName:(id)a3 unlocalizedName:(id)a4 countryName:(id)a5 unlocalizedCountryName:(id)a6 timeZone:(id)a7 latitude:(id)a8 longitude:(id)a9 alCityID:(id)a10
{
  v35 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v34 = a8;
  v20 = a9;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = STCity;
  v22 = [(STCity *)&v36 init];
  if (v22)
  {
    v23 = [v35 copy];
    name = v22->_name;
    v22->_name = v23;

    v25 = [v16 copy];
    unlocalizedName = v22->_unlocalizedName;
    v22->_unlocalizedName = v25;

    v27 = [v17 copy];
    countryName = v22->_countryName;
    v22->_countryName = v27;

    v29 = [v18 copy];
    unlocalizedCountryName = v22->_unlocalizedCountryName;
    v22->_unlocalizedCountryName = v29;

    v31 = [v19 copy];
    timeZone = v22->_timeZone;
    v22->_timeZone = v31;

    objc_storeStrong(&v22->_latitude, a8);
    objc_storeStrong(&v22->_longitude, a9);
    objc_storeStrong(&v22->_alCityID, a10);
  }

  return v22;
}

@end