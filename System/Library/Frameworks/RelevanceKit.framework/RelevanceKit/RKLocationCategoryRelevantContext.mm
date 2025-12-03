@interface RKLocationCategoryRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKLocationCategoryRelevantContext)initWithCoder:(id)coder;
- (RKLocationCategoryRelevantContext)initWithRawCategory:(id)category;
- (id)description;
@end

@implementation RKLocationCategoryRelevantContext

- (RKLocationCategoryRelevantContext)initWithRawCategory:(id)category
{
  categoryCopy = category;
  v10.receiver = self;
  v10.super_class = RKLocationCategoryRelevantContext;
  _init = [(RKRelevantContext *)&v10 _init];
  if (_init)
  {
    v6 = [categoryCopy copy];
    rawCategory = _init->_rawCategory;
    _init->_rawCategory = v6;

    v8 = _init;
  }

  return _init;
}

- (RKLocationCategoryRelevantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawCategory"];

  if (v5)
  {
    self = [(RKLocationCategoryRelevantContext *)self initWithRawCategory:v5];
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
  rawCategory = [(RKLocationCategoryRelevantContext *)self rawCategory];
  v4 = [v2 stringWithFormat:@"<locationCategory: %@>", rawCategory];

  return v4;
}

@end