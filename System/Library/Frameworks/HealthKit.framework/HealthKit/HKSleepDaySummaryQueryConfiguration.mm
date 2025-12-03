@interface HKSleepDaySummaryQueryConfiguration
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (HKSleepDaySummaryQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepDaySummaryQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v12 copyWithZone:zone];
  morningIndexRange = [(HKSleepDaySummaryQueryConfiguration *)self morningIndexRange];
  [v4 setMorningIndexRange:{morningIndexRange, v6}];
  [v4 setAscending:{-[HKSleepDaySummaryQueryConfiguration ascending](self, "ascending")}];
  [v4 setLimit:{-[HKSleepDaySummaryQueryConfiguration limit](self, "limit")}];
  [v4 setOptions:{-[HKSleepDaySummaryQueryConfiguration options](self, "options")}];
  cacheSettings = [(HKSleepDaySummaryQueryConfiguration *)self cacheSettings];
  v8 = [cacheSettings copy];
  [v4 setCacheSettings:v8];

  calendarOverrides = [(HKSleepDaySummaryQueryConfiguration *)self calendarOverrides];
  v10 = [calendarOverrides copy];
  [v4 setCalendarOverrides:v10];

  return v4;
}

- (HKSleepDaySummaryQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKSleepDaySummaryQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_morningIndexRange.start = [coderCopy decodeIntegerForKey:@"MorningIndexRangeStart"];
    v5->_morningIndexRange.duration = [coderCopy decodeIntegerForKey:@"MorningIndexRangeDuration"];
    v5->_ascending = [coderCopy decodeBoolForKey:@"Ascending"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
    v5->_options = [coderCopy decodeIntegerForKey:@"Options"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CacheSettings"];
    cacheSettings = v5->_cacheSettings;
    v5->_cacheSettings = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CalendarOverrides"];
    calendarOverrides = v5->_calendarOverrides;
    v5->_calendarOverrides = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSleepDaySummaryQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_morningIndexRange.start forKey:{@"MorningIndexRangeStart", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_morningIndexRange.duration forKey:@"MorningIndexRangeDuration"];
  [coderCopy encodeBool:self->_ascending forKey:@"Ascending"];
  [coderCopy encodeInteger:self->_limit forKey:@"Limit"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
  [coderCopy encodeObject:self->_cacheSettings forKey:@"CacheSettings"];
  [coderCopy encodeObject:self->_calendarOverrides forKey:@"CalendarOverrides"];
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
  cacheSettings = [(HKSleepDaySummaryQueryConfiguration *)self cacheSettings];
  calendarOverrides = [(HKSleepDaySummaryQueryConfiguration *)self calendarOverrides];
  v11 = [v3 initWithFormat:@"<%@ Configuration - morningIndexRange: %@, ascending: %@, limit: %ld, options: %@, cacheSettings: %@, calendarOverrides: %@>", v4, v5, v6, limit, v8, cacheSettings, calendarOverrides];

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