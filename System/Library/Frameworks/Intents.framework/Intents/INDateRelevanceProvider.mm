@interface INDateRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (INDateRelevanceProvider)initWithCoder:(id)a3;
- (INDateRelevanceProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INDateRelevanceProvider

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INDateRelevanceProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  if (v5)
  {
    self = [(INDateRelevanceProvider *)self initWithStartDate:v5 endDate:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (INDateRelevanceProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate
{
  v7 = startDate;
  v8 = endDate;
  v13.receiver = self;
  v13.super_class = INDateRelevanceProvider;
  v9 = [(INRelevanceProvider *)&v13 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, startDate);
    objc_storeStrong(&v10->_endDate, endDate);
    v11 = v10;
  }

  return v10;
}

@end