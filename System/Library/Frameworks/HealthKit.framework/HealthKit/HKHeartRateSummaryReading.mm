@interface HKHeartRateSummaryReading
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryReading)initWithCoder:(id)a3;
- (HKHeartRateSummaryReading)initWithDate:(id)a3 quantity:(id)a4 context:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummaryReading

- (HKHeartRateSummaryReading)initWithDate:(id)a3 quantity:(id)a4 context:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKHeartRateSummaryReading;
  v11 = [(HKHeartRateSummaryReading *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, a3);
    objc_storeStrong(&v12->_quantity, a4);
    v12->_context = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"Date"];
  [v5 encodeObject:self->_quantity forKey:@"Quantity"];
  [v5 encodeInteger:self->_context forKey:@"Context"];
}

- (HKHeartRateSummaryReading)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKHeartRateSummaryReading;
  v5 = [(HKHeartRateSummaryReading *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Quantity"];
    quantity = v5->_quantity;
    v5->_quantity = v8;

    v5->_context = [v4 decodeIntegerForKey:@"Context"];
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

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(HKHeartRateSummaryReading *)self date];
      v10 = [(HKHeartRateSummaryReading *)v8 date];
      if (v9 == v10)
      {
        [(HKHeartRateSummaryReading *)self quantity:v18];
      }

      else
      {
        v11 = [(HKHeartRateSummaryReading *)v8 date];
        if (!v11)
        {
          v12 = 0;
          goto LABEL_22;
        }

        v3 = v11;
        v4 = [(HKHeartRateSummaryReading *)self date];
        v5 = [(HKHeartRateSummaryReading *)v8 date];
        if (![v4 isEqual:v5])
        {
          v12 = 0;
LABEL_21:

          goto LABEL_22;
        }

        [(HKHeartRateSummaryReading *)self quantity:v5];
      }
      v13 = ;
      v14 = [(HKHeartRateSummaryReading *)v8 quantity];
      if (v13 == v14)
      {
        goto LABEL_15;
      }

      v15 = [(HKHeartRateSummaryReading *)v8 quantity];
      if (!v15)
      {

        v12 = 0;
LABEL_20:
        v5 = v19;
        v4 = v21;
        if (v9 != v10)
        {
          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_23;
      }

      v6 = v15;
      v4 = [(HKHeartRateSummaryReading *)self quantity];
      v5 = [(HKHeartRateSummaryReading *)v8 quantity];
      if ([v4 isEqual:v5])
      {
LABEL_15:
        v16 = [(HKHeartRateSummaryReading *)self context];
        v12 = v16 == [(HKHeartRateSummaryReading *)v8 context];
        if (v13 == v14)
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
  v3 = [(HKHeartRateSummaryReading *)self date];
  v4 = [v3 hash];
  v5 = [(HKHeartRateSummaryReading *)self quantity];
  v6 = [v5 hash] ^ v4;
  v7 = [(HKHeartRateSummaryReading *)self context];

  return v6 ^ v7;
}

@end