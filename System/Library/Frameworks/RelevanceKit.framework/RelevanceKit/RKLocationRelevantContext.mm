@interface RKLocationRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKLocationRelevantContext)initWithCoder:(id)coder;
- (RKLocationRelevantContext)initWithRegion:(id)region;
- (id)description;
@end

@implementation RKLocationRelevantContext

- (RKLocationRelevantContext)initWithRegion:(id)region
{
  regionCopy = region;
  v10.receiver = self;
  v10.super_class = RKLocationRelevantContext;
  _init = [(RKRelevantContext *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, region);
    v8 = v7;
  }

  return v7;
}

- (RKLocationRelevantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];

  if (v5)
  {
    self = [(RKLocationRelevantContext *)self initWithRegion:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

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

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  region = [(RKLocationRelevantContext *)self region];
  v4 = [v2 stringWithFormat:@"<location: %@>", region];

  return v4;
}

@end