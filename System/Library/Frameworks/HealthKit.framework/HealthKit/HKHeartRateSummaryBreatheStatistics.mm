@interface HKHeartRateSummaryBreatheStatistics
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryBreatheStatistics)initWithCoder:(id)a3;
- (id)description;
- (id)initFromStatistics:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummaryBreatheStatistics

- (id)initFromStatistics:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryBreatheStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v8 initFromStatistics:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 7, v4[7]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKHeartRateSummaryBreatheStatistics;
  v4 = a3;
  [(HKHeartRateSummaryStatistics *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_finalReading forKey:{@"FinalReading", v5.receiver, v5.super_class}];
}

- (HKHeartRateSummaryBreatheStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryBreatheStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FinalReading"];
    finalReading = v5->_finalReading;
    v5->_finalReading = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKHeartRateSummaryStatistics numberOfReadings](self, "numberOfReadings")}];
  v6 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v7 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v8 = [v7 startDate];
  v9 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v10 = [v9 endDate];
  v11 = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
  v12 = [v3 stringWithFormat:@"<%@:%p count:%@ session:%@ (%@ - %@) finalReading:%@>", v4, self, v5, v6, v8, v10, v11];

  return v12;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = HKHeartRateSummaryBreatheStatistics, [(HKHeartRateSummaryStatistics *)&v12 isEqual:v4]))
    {
      v5 = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
      v6 = [(HKHeartRateSummaryBreatheStatistics *)v4 finalReading];
      if (v5 == v6)
      {
        v10 = 1;
      }

      else
      {
        v7 = [(HKHeartRateSummaryBreatheStatistics *)v4 finalReading];
        if (v7)
        {
          v8 = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
          v9 = [(HKHeartRateSummaryBreatheStatistics *)v4 finalReading];
          v10 = [v8 isEqual:v9];
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HKHeartRateSummaryBreatheStatistics;
  v3 = [(HKHeartRateSummaryStatistics *)&v7 hash];
  v4 = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end