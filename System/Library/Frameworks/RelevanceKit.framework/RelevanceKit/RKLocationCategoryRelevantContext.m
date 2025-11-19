@interface RKLocationCategoryRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKLocationCategoryRelevantContext)initWithCoder:(id)a3;
- (RKLocationCategoryRelevantContext)initWithRawCategory:(id)a3;
- (id)description;
@end

@implementation RKLocationCategoryRelevantContext

- (RKLocationCategoryRelevantContext)initWithRawCategory:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RKLocationCategoryRelevantContext;
  v5 = [(RKRelevantContext *)&v10 _init];
  if (v5)
  {
    v6 = [v4 copy];
    rawCategory = v5->_rawCategory;
    v5->_rawCategory = v6;

    v8 = v5;
  }

  return v5;
}

- (RKLocationCategoryRelevantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawCategory"];

  if (v5)
  {
    self = [(RKLocationCategoryRelevantContext *)self initWithRawCategory:v5];
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
      rawCategory = self->_rawCategory;
      v7 = rawCategory == v5->_rawCategory || [(NSString *)rawCategory isEqual:?];
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
  v3 = [(RKLocationCategoryRelevantContext *)self rawCategory];
  v4 = [v2 stringWithFormat:@"<locationCategory: %@>", v3];

  return v4;
}

@end