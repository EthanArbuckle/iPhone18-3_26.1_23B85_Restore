@interface AFServiceContextSnapshot
- (AFServiceContextSnapshot)initWithCoder:(id)a3;
- (AFServiceContextSnapshot)initWithDeliveryDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation AFServiceContextSnapshot

- (AFServiceContextSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFServiceContextSnapshot;
  v5 = [(AFServiceContextSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deliveryDate"];
    deliveryDate = v5->_deliveryDate;
    v5->_deliveryDate = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      deliveryDate = self->_deliveryDate;
      v7 = [(AFServiceContextSnapshot *)v5 deliveryDate];
      if (deliveryDate == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = self->_deliveryDate;
        v9 = [(AFServiceContextSnapshot *)v5 deliveryDate];
        v10 = [(NSDate *)v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AFServiceContextSnapshot;
  v4 = [(AFServiceContextSnapshot *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, deliveryDate: %@", v4, self->_deliveryDate];

  return v5;
}

- (AFServiceContextSnapshot)initWithDeliveryDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFServiceContextSnapshot;
  v5 = [(AFServiceContextSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    deliveryDate = v5->_deliveryDate;
    v5->_deliveryDate = v6;
  }

  return v5;
}

@end