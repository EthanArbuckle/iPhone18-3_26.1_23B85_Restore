@interface HomeResultCacheKey
+ (BOOL)_location:(id)_location isEquivalentToLocation:(id)location;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualivantToKey:(id)key;
- (HomeResultCacheKey)initWithCountryCode:(id)code location:(id)location;
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

- (BOOL)isEqualivantToKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    countryCode = [keyCopy countryCode];
    v7 = countryCode;
    if (countryCode == self->_countryCode || [(NSString *)countryCode isEqual:?])
    {
      v8 = objc_opt_class();
      location = [v5 location];
      v10 = [v8 _location:location isEquivalentToLocation:self->_location];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    countryCode = [(HomeResultCacheKey *)v6 countryCode];
    v8 = countryCode;
    if (countryCode == self->_countryCode || [(NSString *)countryCode isEqual:?])
    {
      location = [(HomeResultCacheKey *)v6 location];
      v10 = location;
      if (location == self->_location)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(GEOLocation *)location isEqual:?];
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

- (HomeResultCacheKey)initWithCountryCode:(id)code location:(id)location
{
  codeCopy = code;
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = HomeResultCacheKey;
  v8 = [(HomeResultCacheKey *)&v12 init];
  if (v8)
  {
    v9 = [codeCopy copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v9;

    objc_storeStrong(&v8->_location, location);
  }

  return v8;
}

+ (BOOL)_location:(id)_location isEquivalentToLocation:(id)location
{
  if ((_location != 0) == (location == 0))
  {
    return 0;
  }

  locationCopy = location;
  [_location coordinate];
  v7 = v6;
  v9 = v8;
  [locationCopy coordinate];
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