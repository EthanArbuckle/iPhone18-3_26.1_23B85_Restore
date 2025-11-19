@interface MFCity
- (BOOL)isEqual:(id)a3;
- (MFCity)initWithCityName:(id)a3 displayName:(id)a4 timeZone:(id)a5;
- (unint64_t)hash;
@end

@implementation MFCity

- (MFCity)initWithCityName:(id)a3 displayName:(id)a4 timeZone:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFCity;
  v12 = [(MFCity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cityName, a3);
    objc_storeStrong(&v13->_displayName, a4);
    objc_storeStrong(&v13->_timeZone, a5);
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(MFCity *)self cityName];
  v4 = [v3 hash];

  v5 = [(MFCity *)self displayName];
  v6 = [v5 hash];

  v7 = [(MFCity *)self timeZone];
  v8 = [v7 hash] + 193376997;

  return 33 * (33 * v4 + v6) + v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFCity *)self cityName];
      v7 = [(MFCity *)v5 cityName];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(MFCity *)self displayName];
        v9 = [(MFCity *)v5 displayName];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(MFCity *)self timeZone];
          v11 = [(MFCity *)v5 timeZone];
          v12 = [v10 isEqualToTimeZone:v11];
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