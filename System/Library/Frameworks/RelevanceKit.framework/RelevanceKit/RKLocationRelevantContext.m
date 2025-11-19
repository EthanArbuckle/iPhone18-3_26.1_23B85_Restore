@interface RKLocationRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKLocationRelevantContext)initWithCoder:(id)a3;
- (RKLocationRelevantContext)initWithRegion:(id)a3;
- (id)description;
@end

@implementation RKLocationRelevantContext

- (RKLocationRelevantContext)initWithRegion:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RKLocationRelevantContext;
  v6 = [(RKRelevantContext *)&v10 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
    v8 = v7;
  }

  return v7;
}

- (RKLocationRelevantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];

  if (v5)
  {
    self = [(RKLocationRelevantContext *)self initWithRegion:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

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

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RKLocationRelevantContext *)self region];
  v4 = [v2 stringWithFormat:@"<location: %@>", v3];

  return v4;
}

@end