@interface AFServiceContextSnapshot
- (AFServiceContextSnapshot)initWithCoder:(id)coder;
- (AFServiceContextSnapshot)initWithDeliveryDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation AFServiceContextSnapshot

- (AFServiceContextSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFServiceContextSnapshot;
  v5 = [(AFServiceContextSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deliveryDate"];
    deliveryDate = v5->_deliveryDate;
    v5->_deliveryDate = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deliveryDate = self->_deliveryDate;
      deliveryDate = [(AFServiceContextSnapshot *)v5 deliveryDate];
      if (deliveryDate == deliveryDate)
      {
        v10 = 1;
      }

      else
      {
        v8 = self->_deliveryDate;
        deliveryDate2 = [(AFServiceContextSnapshot *)v5 deliveryDate];
        v10 = [(NSDate *)v8 isEqual:deliveryDate2];
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

- (AFServiceContextSnapshot)initWithDeliveryDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = AFServiceContextSnapshot;
  v5 = [(AFServiceContextSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [dateCopy copy];
    deliveryDate = v5->_deliveryDate;
    v5->_deliveryDate = v6;
  }

  return v5;
}

@end