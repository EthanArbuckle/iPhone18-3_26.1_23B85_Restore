@interface HKHeartRateSummaryBreatheStatistics
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryBreatheStatistics)initWithCoder:(id)coder;
- (id)description;
- (id)initFromStatistics:(id)statistics;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummaryBreatheStatistics

- (id)initFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryBreatheStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v8 initFromStatistics:statisticsCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 7, statisticsCopy[7]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKHeartRateSummaryBreatheStatistics;
  coderCopy = coder;
  [(HKHeartRateSummaryStatistics *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_finalReading forKey:{@"FinalReading", v5.receiver, v5.super_class}];
}

- (HKHeartRateSummaryBreatheStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryBreatheStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FinalReading"];
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
  sessionUUID = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  dateInterval = [(HKHeartRateSummaryStatistics *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  endDate = [dateInterval2 endDate];
  finalReading = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
  v12 = [v3 stringWithFormat:@"<%@:%p count:%@ session:%@ (%@ - %@) finalReading:%@>", v4, self, v5, sessionUUID, startDate, endDate, finalReading];

  return v12;
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = HKHeartRateSummaryBreatheStatistics, [(HKHeartRateSummaryStatistics *)&v12 isEqual:equalCopy]))
    {
      finalReading = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
      finalReading2 = [(HKHeartRateSummaryBreatheStatistics *)equalCopy finalReading];
      if (finalReading == finalReading2)
      {
        v10 = 1;
      }

      else
      {
        finalReading3 = [(HKHeartRateSummaryBreatheStatistics *)equalCopy finalReading];
        if (finalReading3)
        {
          finalReading4 = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
          finalReading5 = [(HKHeartRateSummaryBreatheStatistics *)equalCopy finalReading];
          v10 = [finalReading4 isEqual:finalReading5];
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
  finalReading = [(HKHeartRateSummaryBreatheStatistics *)self finalReading];
  v5 = [finalReading hash];

  return v5 ^ v3;
}

@end