@interface HomeResultCacheKey
+ (BOOL)_location:(id)a3 isEquivalentToLocation:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualivantToKey:(id)a3;
- (HomeResultCacheKey)initWithCountryCode:(id)a3 location:(id)a4;
- (id)description;
@end

@implementation HomeResultCacheKey

- (id)description
{
  v3 = objc_opt_class();
  countryCode = self->_countryCode;
  location = self->_location;
  if (location)
  {
    [(GEOLocation *)location coordinate];
    v8 = [NSString stringWithFormat:@"%+.8f, %+.8f", v6, v7];
    v9 = [NSString stringWithFormat:@"<%@ %p countryCode = %@; location = %@>", v3, self, countryCode, v8];;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"<%@ %p countryCode = %@; location = %@>", v3, self, self->_countryCode, 0];;
  }

  return v9;
}

- (BOOL)isEqualivantToKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 countryCode];
    v7 = v6;
    if (v6 == self->_countryCode || [(NSString *)v6 isEqual:?])
    {
      v8 = objc_opt_class();
      v9 = [v5 location];
      v10 = [v8 _location:v9 isEquivalentToLocation:self->_location];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(HomeResultCacheKey *)v6 countryCode];
    v8 = v7;
    if (v7 == self->_countryCode || [(NSString *)v7 isEqual:?])
    {
      v9 = [(HomeResultCacheKey *)v6 location];
      v10 = v9;
      if (v9 == self->_location)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(GEOLocation *)v9 isEqual:?];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HomeResultCacheKey)initWithCountryCode:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HomeResultCacheKey;
  v8 = [(HomeResultCacheKey *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v9;

    objc_storeStrong(&v8->_location, a4);
  }

  return v8;
}

+ (BOOL)_location:(id)a3 isEquivalentToLocation:(id)a4
{
  if ((a3 != 0) == (a4 == 0))
  {
    return 0;
  }

  v5 = a4;
  [a3 coordinate];
  v7 = v6;
  v9 = v8;
  [v5 coordinate];
  v11 = v10;
  v13 = v12;

  v14 = (fabs(v9 + 180.0) < 0.00000001) & (fabs(v7 + 180.0) < 0.00000001);
  v15 = (fabs(v13 + 180.0) < 0.00000001) & (fabs(v11 + 180.0) < 0.00000001);
  result = v14 ^ v15 ^ 1;
  if ((v14 & 1) == 0 && (v15 & 1) == 0)
  {
    GEOConfigGetDouble();
    v18 = v17;
    GEOCalculateDistance();
    return v19 < v18;
  }

  return result;
}

@end