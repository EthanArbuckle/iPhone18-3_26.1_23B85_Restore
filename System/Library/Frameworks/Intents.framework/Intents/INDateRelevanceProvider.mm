@interface INDateRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (INDateRelevanceProvider)initWithCoder:(id)coder;
- (INDateRelevanceProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INDateRelevanceProvider

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startDate = self->_startDate;
      v8 = 0;
      if (startDate == v5->_startDate || [(NSDate *)startDate isEqual:?])
      {
        endDate = self->_endDate;
        if (endDate == v5->_endDate || [(NSDate *)endDate isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INDateRelevanceProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  if (v5)
  {
    self = [(INDateRelevanceProvider *)self initWithStartDate:v5 endDate:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
}

- (INDateRelevanceProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate
{
  v7 = startDate;
  v8 = endDate;
  v13.receiver = self;
  v13.super_class = INDateRelevanceProvider;
  _init = [(INRelevanceProvider *)&v13 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, startDate);
    objc_storeStrong(&v10->_endDate, endDate);
    v11 = v10;
  }

  return v10;
}

@end