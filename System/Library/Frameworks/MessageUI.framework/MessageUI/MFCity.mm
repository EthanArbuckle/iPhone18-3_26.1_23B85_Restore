@interface MFCity
- (BOOL)isEqual:(id)equal;
- (MFCity)initWithCityName:(id)name displayName:(id)displayName timeZone:(id)zone;
- (unint64_t)hash;
@end

@implementation MFCity

- (MFCity)initWithCityName:(id)name displayName:(id)displayName timeZone:(id)zone
{
  nameCopy = name;
  displayNameCopy = displayName;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = MFCity;
  v12 = [(MFCity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cityName, name);
    objc_storeStrong(&v13->_displayName, displayName);
    objc_storeStrong(&v13->_timeZone, zone);
  }

  return v13;
}

- (unint64_t)hash
{
  cityName = [(MFCity *)self cityName];
  v4 = [cityName hash];

  displayName = [(MFCity *)self displayName];
  v6 = [displayName hash];

  timeZone = [(MFCity *)self timeZone];
  v8 = [timeZone hash] + 193376997;

  return 33 * (33 * v4 + v6) + v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      cityName = [(MFCity *)self cityName];
      cityName2 = [(MFCity *)v5 cityName];
      if ([cityName isEqualToString:cityName2])
      {
        displayName = [(MFCity *)self displayName];
        displayName2 = [(MFCity *)v5 displayName];
        if ([displayName isEqualToString:displayName2])
        {
          timeZone = [(MFCity *)self timeZone];
          timeZone2 = [(MFCity *)v5 timeZone];
          v12 = [timeZone isEqualToTimeZone:timeZone2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end