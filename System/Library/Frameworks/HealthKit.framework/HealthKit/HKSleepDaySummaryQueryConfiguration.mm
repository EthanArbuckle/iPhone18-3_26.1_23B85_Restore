@interface HKSleepDaySummaryQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (HKSleepDaySummaryQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepDaySummaryQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v12 copyWithZone:a3];
  v5 = [(HKSleepDaySummaryQueryConfiguration *)self morningIndexRange];
  [v4 setMorningIndexRange:{v5, v6}];
  [v4 setAscending:{-[HKSleepDaySummaryQueryConfiguration ascending](self, "ascending")}];
  [v4 setLimit:{-[HKSleepDaySummaryQueryConfiguration limit](self, "limit")}];
  [v4 setOptions:{-[HKSleepDaySummaryQueryConfiguration options](self, "options")}];
  v7 = [(HKSleepDaySummaryQueryConfiguration *)self cacheSettings];
  v8 = [v7 copy];
  [v4 setCacheSettings:v8];

  v9 = [(HKSleepDaySummaryQueryConfiguration *)self calendarOverrides];
  v10 = [v9 copy];
  [v4 setCalendarOverrides:v10];

  return v4;
}

- (HKSleepDaySummaryQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSleepDaySummaryQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_morningIndexRange.start = [v4 decodeIntegerForKey:@"MorningIndexRangeStart"];
    v5->_morningIndexRange.duration = [v4 decodeIntegerForKey:@"MorningIndexRangeDuration"];
    v5->_ascending = [v4 decodeBoolForKey:@"Ascending"];
    v5->_limit = [v4 decodeIntegerForKey:@"Limit"];
    v5->_options = [v4 decodeIntegerForKey:@"Options"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CacheSettings"];
    cacheSettings = v5->_cacheSettings;
    v5->_cacheSettings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CalendarOverrides"];
    calendarOverrides = v5->_calendarOverrides;
    v5->_calendarOverrides = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSleepDaySummaryQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_morningIndexRange.start forKey:{@"MorningIndexRangeStart", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_morningIndexRange.duration forKey:@"MorningIndexRangeDuration"];
  [v4 encodeBool:self->_ascending forKey:@"Ascending"];
  [v4 encodeInteger:self->_limit forKey:@"Limit"];
  [v4 encodeInteger:self->_options forKey:@"Options"];
  [v4 encodeObject:self->_cacheSettings forKey:@"CacheSettings"];
  [v4 encodeObject:self->_calendarOverrides forKey:@"CalendarOverrides"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = HKSleepDaySummaryQueryConfiguration;
  v4 = [(HKSleepDaySummaryQueryConfiguration *)&v13 description];
  v5 = NSStringFromHKDayIndexRange(self->_morningIndexRange.start, self->_morningIndexRange.duration);
  v6 = HKStringFromBool(self->_ascending);
  limit = self->_limit;
  v8 = HKSleepDaySummaryQueryOptionsStringRepresentation(self->_options);
  v9 = [(HKSleepDaySummaryQueryConfiguration *)self cacheSettings];
  v10 = [(HKSleepDaySummaryQueryConfiguration *)self calendarOverrides];
  v11 = [v3 initWithFormat:@"<%@ Configuration - morningIndexRange: %@, ascending: %@, limit: %ld, options: %@, cacheSettings: %@, calendarOverrides: %@>", v4, v5, v6, limit, v8, v9, v10];

  return v11;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  p_morningIndexRange = &self->_morningIndexRange;
  start = self->_morningIndexRange.start;
  duration = p_morningIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end