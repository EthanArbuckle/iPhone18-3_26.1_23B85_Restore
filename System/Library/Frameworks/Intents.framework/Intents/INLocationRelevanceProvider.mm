@interface INLocationRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (INLocationRelevanceProvider)initWithCoder:(id)coder;
- (INLocationRelevanceProvider)initWithRegion:(CLRegion *)region;
@end

@implementation INLocationRelevanceProvider

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INLocationRelevanceProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];

  if (v5)
  {
    self = [(INLocationRelevanceProvider *)self initWithRegion:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (INLocationRelevanceProvider)initWithRegion:(CLRegion *)region
{
  v5 = region;
  v10.receiver = self;
  v10.super_class = INLocationRelevanceProvider;
  _init = [(INRelevanceProvider *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, region);
    v8 = v7;
  }

  return v7;
}

@end