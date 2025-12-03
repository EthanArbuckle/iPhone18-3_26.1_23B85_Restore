@interface HKSampleTypeChange
- (BOOL)isEqual:(id)equal;
- (HKSampleTypeChange)initWithCoder:(id)coder;
- (NSDateInterval)dateInterval;
- (NSString)hk_redactedDescription;
- (id)_initWithSampleType:(id)type startTime:(double)time endTime:(double)endTime hasUnfrozenSeries:(BOOL)series queryStrategy:(int64_t)strategy;
- (id)description;
- (void)_extendDateIntervalWithSample:(id)sample;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSampleTypeChange

- (id)_initWithSampleType:(id)type startTime:(double)time endTime:(double)endTime hasUnfrozenSeries:(BOOL)series queryStrategy:(int64_t)strategy
{
  typeCopy = type;
  if (time > endTime)
  {
    [HKSampleTypeChange _initWithSampleType:a2 startTime:self endTime:? hasUnfrozenSeries:? queryStrategy:?];
  }

  v18.receiver = self;
  v18.super_class = HKSampleTypeChange;
  v14 = [(HKSampleTypeChange *)&v18 init];
  if (v14)
  {
    v15 = [typeCopy copy];
    sampleType = v14->_sampleType;
    v14->_sampleType = v15;

    v14->_startTime = time;
    v14->_endTime = endTime;
    v14->_hasUnfrozenSeries = series;
    v14->_queryStrategy = strategy;
  }

  return v14;
}

- (NSDateInterval)dateInterval
{
  if (self->_startTime == -1.79769313e308 && self->_endTime == -1.79769313e308)
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AB80]);
    v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_startTime];
    v3 = [v4 initWithStartDate:v5 duration:self->_endTime - self->_startTime];
  }

  return v3;
}

- (void)_extendDateIntervalWithSample:(id)sample
{
  sampleCopy = sample;
  startTime = self->_startTime;
  [sampleCopy _startTimestamp];
  if (startTime >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = startTime;
  }

  if (startTime != -1.79769313e308)
  {
    v5 = v6;
  }

  self->_startTime = v5;
  endTime = self->_endTime;
  [sampleCopy _endTimestamp];
  if (endTime >= v8 && endTime != -1.79769313e308)
  {
    v8 = endTime;
  }

  self->_endTime = v8;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dateInterval = [(HKSampleTypeChange *)self dateInterval];
  v6 = dateInterval;
  v7 = &stru_1F05FF230;
  if (dateInterval)
  {
    v7 = dateInterval;
  }

  v8 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sampleType = self->_sampleType;
  dateInterval = [(HKSampleTypeChange *)self dateInterval];
  v7 = dateInterval;
  v8 = &stru_1F05FF230;
  if (dateInterval)
  {
    v8 = dateInterval;
  }

  v9 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, sampleType, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v8 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ((sampleType = self->_sampleType, v7 = v5->_sampleType, sampleType == v7) || v7 && [(HKObjectType *)sampleType isEqual:?]) && self->_startTime == v5->_startTime && self->_endTime == v5->_endTime && self->_queryStrategy == v5->_queryStrategy;
  }

  return v8;
}

- (HKSampleTypeChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sampleType"];
  [coderCopy decodeDoubleForKey:@"start"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"end"];
  v9 = v8;
  v10 = [coderCopy decodeBoolForKey:@"unfrozen"];
  v11 = [coderCopy decodeIntegerForKey:@"strategy"];

  v12 = [(HKSampleTypeChange *)self _initWithSampleType:v5 startTime:v10 endTime:v11 hasUnfrozenSeries:v7 queryStrategy:v9];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  sampleType = self->_sampleType;
  coderCopy = coder;
  [coderCopy encodeObject:sampleType forKey:@"sampleType"];
  [coderCopy encodeDouble:@"start" forKey:self->_startTime];
  [coderCopy encodeDouble:@"end" forKey:self->_endTime];
  [coderCopy encodeBool:self->_hasUnfrozenSeries forKey:@"unfrozen"];
  [coderCopy encodeInteger:self->_queryStrategy forKey:@"strategy"];
}

- (void)_initWithSampleType:(uint64_t)a1 startTime:(uint64_t)a2 endTime:hasUnfrozenSeries:queryStrategy:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDatabaseChangesQuery.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"startTime <= endTime"}];
}

@end