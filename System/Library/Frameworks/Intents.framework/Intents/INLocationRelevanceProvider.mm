@interface INLocationRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (INLocationRelevanceProvider)initWithCoder:(id)a3;
- (INLocationRelevanceProvider)initWithRegion:(CLRegion *)region;
@end

@implementation INLocationRelevanceProvider

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      region = self->_region;
      v7 = region == v5->_region || [(CLRegion *)region isEqual:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (INLocationRelevanceProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];

  if (v5)
  {
    self = [(INLocationRelevanceProvider *)self initWithRegion:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INLocationRelevanceProvider)initWithRegion:(CLRegion *)region
{
  v5 = region;
  v10.receiver = self;
  v10.super_class = INLocationRelevanceProvider;
  v6 = [(INRelevanceProvider *)&v10 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, region);
    v8 = v7;
  }

  return v7;
}

@end