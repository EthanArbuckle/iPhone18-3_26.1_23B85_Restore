@interface HKHeartRateSummaryReading
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryReading)initWithCoder:(id)coder;
- (HKHeartRateSummaryReading)initWithDate:(id)date quantity:(id)quantity context:(int64_t)context;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummaryReading

- (HKHeartRateSummaryReading)initWithDate:(id)date quantity:(id)quantity context:(int64_t)context
{
  dateCopy = date;
  quantityCopy = quantity;
  v14.receiver = self;
  v14.super_class = HKHeartRateSummaryReading;
  v11 = [(HKHeartRateSummaryReading *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, date);
    objc_storeStrong(&v12->_quantity, quantity);
    v12->_context = context;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"Date"];
  [coderCopy encodeObject:self->_quantity forKey:@"Quantity"];
  [coderCopy encodeInteger:self->_context forKey:@"Context"];
}

- (HKHeartRateSummaryReading)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKHeartRateSummaryReading;
  v5 = [(HKHeartRateSummaryReading *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Quantity"];
    quantity = v5->_quantity;
    v5->_quantity = v8;

    v5->_context = [coderCopy decodeIntegerForKey:@"Context"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  quantity = self->_quantity;
  v6 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)quantity doubleValueForUnit:v6];
  v8 = v7;
  v9 = _NSStringFromPrivateHeartRateContext(self->_context);
  v10 = [v3 stringWithFormat:@"<%@:%p %.1fbpm (%@) @ %@>", v4, self, v8, v9, self->_date];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = [(HKHeartRateSummaryReading *)self date];
      date2 = [(HKHeartRateSummaryReading *)equalCopy date];
      if (date == date2)
      {
        [(HKHeartRateSummaryReading *)self quantity:v18];
      }

      else
      {
        date3 = [(HKHeartRateSummaryReading *)equalCopy date];
        if (!date3)
        {
          v12 = 0;
          goto LABEL_22;
        }

        v3 = date3;
        date4 = [(HKHeartRateSummaryReading *)self date];
        date5 = [(HKHeartRateSummaryReading *)equalCopy date];
        if (![date4 isEqual:date5])
        {
          v12 = 0;
LABEL_21:

          goto LABEL_22;
        }

        [(HKHeartRateSummaryReading *)self quantity:date5];
      }
      v13 = ;
      quantity = [(HKHeartRateSummaryReading *)equalCopy quantity];
      if (v13 == quantity)
      {
        goto LABEL_15;
      }

      quantity2 = [(HKHeartRateSummaryReading *)equalCopy quantity];
      if (!quantity2)
      {

        v12 = 0;
LABEL_20:
        date5 = v19;
        date4 = v21;
        if (date != date2)
        {
          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_23;
      }

      v6 = quantity2;
      date4 = [(HKHeartRateSummaryReading *)self quantity];
      date5 = [(HKHeartRateSummaryReading *)equalCopy quantity];
      if ([date4 isEqual:date5])
      {
LABEL_15:
        context = [(HKHeartRateSummaryReading *)self context];
        v12 = context == [(HKHeartRateSummaryReading *)equalCopy context];
        if (v13 == quantity)
        {
LABEL_17:

          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  date = [(HKHeartRateSummaryReading *)self date];
  v4 = [date hash];
  quantity = [(HKHeartRateSummaryReading *)self quantity];
  v6 = [quantity hash] ^ v4;
  context = [(HKHeartRateSummaryReading *)self context];

  return v6 ^ context;
}

@end