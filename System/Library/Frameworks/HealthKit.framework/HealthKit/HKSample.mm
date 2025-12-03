@interface HKSample
+ (id)_enumerateValidIntervalsWithStartDate:(id)date endDate:(id)endDate sampleType:(id)type block:(id)block;
+ (id)_newSampleFromDatesWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata config:(id)config;
+ (id)_newSampleWithType:(id)type startDate:(double)date endDate:(double)endDate device:(id)device metadata:(id)metadata config:(id)config;
- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_dayIndexRangeWithCalendar:(id)calendar;
- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_morningIndexRangeWithCalendarWithCalendar:(id)calendar;
- (BOOL)hasUndeterminedDuration;
- (BOOL)isEquivalent:(id)equivalent;
- (HKSample)initWithCoder:(id)coder;
- (NSString)description;
- (id)_init;
- (id)_timeZone;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)asJSONObject;
- (id)valueForKey:(id)key;
- (int64_t)_externalSyncObjectCode;
- (void)_setEndDate:(id)date;
- (void)_setSampleType:(id)type;
- (void)_setStartDate:(id)date;
- (void)_setType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSample

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKSample;
  result = [(HKObject *)&v3 _init];
  if (result)
  {
    *(result + 10) = 0x10000000000000;
    *(result + 11) = 0x10000000000000;
  }

  return result;
}

- (int64_t)_externalSyncObjectCode
{
  sampleType = [(HKSample *)self sampleType];
  code = [sampleType code];

  return code;
}

- (NSString)description
{
  if (description_onceToken_1 != -1)
  {
    [HKSample description];
  }

  v3 = description_formatter_0;
  startDate = [(HKSample *)self startDate];
  v5 = [v3 stringFromDate:startDate];

  v6 = description_formatter_0;
  endDate = [(HKSample *)self endDate];
  v8 = [v6 stringFromDate:endDate];

  v12.receiver = self;
  v12.super_class = HKSample;
  v9 = [(HKObject *)&v12 description];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@ - %@)", v9, v5, v8];

  return v10;
}

uint64_t __23__HKSample_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = description_formatter_0;
  description_formatter_0 = v0;

  v2 = description_formatter_0;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_morningIndexRangeWithCalendarWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  overrideDayIndex = [(HKSample *)selfCopy overrideDayIndex];

  if (!overrideDayIndex)
  {

LABEL_5:
    startDate = [(HKSample *)self startDate];
    v8 = [startDate hk_morningIndexWithCalendar:calendarCopy];

    endDate = [(HKSample *)self endDate];
    v12 = [endDate hk_morningIndexWithCalendar:calendarCopy];

    v9 = v12 - v8 + 1;
    goto LABEL_6;
  }

  overrideDayIndex2 = [(HKSample *)selfCopy overrideDayIndex];
  v8 = [overrideDayIndex2 integerValue] - 1;

  v9 = 3;
LABEL_6:

  v13 = v8;
  v14 = v9;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)asJSONObject
{
  v13.receiver = self;
  v13.super_class = HKSample;
  asJSONObject = [(HKObject *)&v13 asJSONObject];
  if (asJSONObject_onceToken != -1)
  {
    [HKSample(HK_JSON) asJSONObject];
  }

  v4 = asJSONObject_formatter;
  startDate = [(HKSample *)self startDate];
  v6 = [v4 stringFromDate:startDate];
  [asJSONObject setObject:v6 forKeyedSubscript:@"startDate"];

  v7 = asJSONObject_formatter;
  endDate = [(HKSample *)self endDate];
  v9 = [v7 stringFromDate:endDate];
  [asJSONObject setObject:v9 forKeyedSubscript:@"endDate"];

  sampleType = [(HKSample *)self sampleType];
  v11 = [sampleType description];
  [asJSONObject setObject:v11 forKeyedSubscript:@"sampleType"];

  return asJSONObject;
}

uint64_t __33__HKSample_HK_JSON__asJSONObject__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = asJSONObject_formatter;
  asJSONObject_formatter = v0;

  v2 = asJSONObject_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

+ (id)_newSampleWithType:(id)type startDate:(double)date endDate:(double)endDate device:(id)device metadata:(id)metadata config:(id)config
{
  typeCopy = type;
  configCopy = config;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKSample__newSampleWithType_startDate_endDate_device_metadata_config___block_invoke;
  v20[3] = &unk_1E7384DD8;
  dateCopy = date;
  endDateCopy = endDate;
  v21 = typeCopy;
  v22 = configCopy;
  v16 = configCopy;
  v17 = typeCopy;
  v18 = [self _newDataObjectWithMetadata:metadata device:device config:v20];

  return v18;
}

uint64_t __72__HKSample__newSampleWithType_startDate_endDate_device_metadata_config___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v8[9];
  v8[9] = v3;

  v5 = v8;
  v8[10] = *(a1 + 48);
  v8[11] = *(a1 + 56);
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v5 = v8;
  }

  return MEMORY[0x1EEE66BB8](v6, v5);
}

+ (id)_newSampleFromDatesWithType:(id)type startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata config:(id)config
{
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  metadataCopy = metadata;
  configCopy = config;
  if ([self _isConcreteObjectClass])
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = 2.22507386e-308;
    if (endDateCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v24 = 2.22507386e-308;
    goto LABEL_8;
  }

  [HKSample _newSampleFromDatesWithType:a2 startDate:self endDate:? device:? metadata:? config:?];
  if (!dateCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  [dateCopy timeIntervalSinceReferenceDate];
  v22 = v21;
  if (!endDateCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [endDateCopy timeIntervalSinceReferenceDate];
  v24 = v23;
LABEL_8:
  v25 = [self _newSampleWithType:typeCopy startDate:deviceCopy endDate:metadataCopy device:configCopy metadata:v22 config:v24];

  return v25;
}

+ (id)_enumerateValidIntervalsWithStartDate:(id)date endDate:(id)endDate sampleType:(id)type block:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  [type maximumAllowedDuration];
  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = dateCopy;
  v16 = v15;
  if ([v15 hk_isBeforeDate:endDateCopy])
  {
    v17 = v15;
    do
    {
      v16 = [v17 dateByAddingTimeInterval:v13];
      if ([v16 hk_isAfterDate:endDateCopy])
      {
        v18 = endDateCopy;

        v16 = v18;
      }

      v19 = blockCopy[2](blockCopy, v17, v16);
      [v14 addObject:v19];

      v17 = v16;
    }

    while (([v16 hk_isBeforeDate:endDateCopy] & 1) != 0);
  }

  return v14;
}

- (id)_timeZone
{
  _timeZoneName = [(HKObject *)self _timeZoneName];
  if (!_timeZoneName || ([MEMORY[0x1E695DFE8] timeZoneWithName:_timeZoneName], (timeZone = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    timeZone = [currentCalendar timeZone];
  }

  return timeZone;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  var0 = configuration.var0;
  v45.receiver = self;
  v45.super_class = HKSample;
  v6 = [(HKObject *)&v45 _validateWithConfiguration:configuration.var0, configuration.var1];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_14:
    v27 = v8;
    goto LABEL_15;
  }

  sampleType = self->_sampleType;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Invalid data type %@", self->_sampleType}];
    goto LABEL_14;
  }

  sampleType = [(HKSample *)self sampleType];
  startTimestamp = self->_startTimestamp;
  endTimestamp = self->_endTimestamp;
  v44 = 0;
  v13 = [sampleType _validateStartDate:&v44 endDate:startTimestamp error:endTimestamp];
  v14 = v44;

  if (v13)
  {
    if ((var0 & 2) == 0 && HKProgramSDKAtLeast())
    {
      v16 = self->_startTimestamp;
      v15 = self->_endTimestamp;
    }

    if ((var0 & 1) == 0 && HKProgramSDKAtLeast())
    {
      sampleType2 = [(HKSample *)self sampleType];
      if ([sampleType2 isMaximumDurationRestricted])
      {
        v18 = self->_endTimestamp - self->_startTimestamp;
        sampleType3 = [(HKSample *)self sampleType];
        [sampleType3 maximumAllowedDuration];
        v21 = v20;

        if (v18 > v21)
        {
          v41 = MEMORY[0x1E696ABC0];
          v22 = objc_opt_class();
          v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_startTimestamp];
          v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_endTimestamp];
          v25 = self->_sampleType;
          [(HKSampleType *)v25 maximumAllowedDuration];
          [v41 hk_errorForInvalidArgument:@"@" class:v22 selector:a2 format:{@"startDate (%@) and endDate (%@) exceed the maximum allowed duration for this sample type. Maximum duration for type %@ is %f", v23, v24, v25, v26}];
          v27 = LABEL_23:;

          goto LABEL_28;
        }
      }

      else
      {
      }

      sampleType4 = [(HKSample *)self sampleType];
      if ([sampleType4 isMinimumDurationRestricted])
      {
        v30 = self->_endTimestamp - self->_startTimestamp;
        sampleType5 = [(HKSample *)self sampleType];
        [sampleType5 minimumAllowedDuration];
        v33 = v32;

        if (v30 < v33)
        {
          v42 = MEMORY[0x1E696ABC0];
          v34 = objc_opt_class();
          v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_startTimestamp];
          v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_endTimestamp];
          v35 = self->_sampleType;
          [(HKSampleType *)v35 minimumAllowedDuration];
          [v42 hk_errorForInvalidArgument:@"@" class:v34 selector:a2 format:{@"Duration between startDate (%@) and endDate (%@) is below the minimum allowed duration for this sample type. Minimum duration for type %@ is %f", v23, v24, v35, v36}];
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    sampleType6 = [(HKSample *)self sampleType];
    metadata = [(HKObject *)self metadata];
    v43 = 0;
    v39 = [sampleType6 hk_validateMetadata:metadata sample:self error:&v43];
    v40 = v43;

    v27 = 0;
    if ((v39 & 1) == 0)
    {
      v27 = v40;
    }

    goto LABEL_28;
  }

  v27 = v14;
LABEL_28:

LABEL_15:

  return v27;
}

- (void)_setSampleType:(id)type
{
  v4 = [type copy];
  sampleType = self->_sampleType;
  self->_sampleType = v4;

  MEMORY[0x1EEE66BB8](v4, sampleType);
}

- (void)_setType:(id)type
{
  v4 = [type copy];
  sampleType = self->_sampleType;
  self->_sampleType = v4;

  MEMORY[0x1EEE66BB8](v4, sampleType);
}

- (void)_setStartDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = 2.22507386e-308;
  }

  [(HKSample *)self _setStartTimestamp:v4];
}

- (void)_setEndDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = 2.22507386e-308;
  }

  [(HKSample *)self _setEndTimestamp:v4];
}

- (BOOL)hasUndeterminedDuration
{
  endTimestamp = self->_endTimestamp;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v5 = endTimestamp >= v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSample;
  coderCopy = coder;
  [(HKObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"StartTS" forKey:{self->_startTimestamp, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"EndTS" forKey:self->_endTimestamp];
  [coderCopy encodeObject:self->_sampleType forKey:@"DataType"];
}

- (HKSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKSample;
  v5 = [(HKObject *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataType"];
    sampleType = v5->_sampleType;
    v5->_sampleType = v6;

    if ([coderCopy containsValueForKey:@"StartTS"])
    {
      [coderCopy decodeDoubleForKey:@"StartTS"];
      v5->_startTimestamp = v8;
      [coderCopy decodeDoubleForKey:@"EndTS"];
      v5->_endTimestamp = v9;
    }

    else
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
      [v10 timeIntervalSinceReferenceDate];
      v5->_startTimestamp = v11;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
      [v12 timeIntervalSinceReferenceDate];
      v5->_endTimestamp = v13;
    }
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if ([objc_opt_class() supportsEquivalence])
  {
    if (self == equivalentCopy)
    {
      v14 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equivalentCopy;
      startDate = [(HKSample *)self startDate];
      startDate2 = [(HKSample *)v5 startDate];
      v8 = startDate2;
      if (startDate == startDate2)
      {
      }

      else
      {
        startDate3 = [(HKSample *)v5 startDate];
        if (!startDate3)
        {
          goto LABEL_15;
        }

        v10 = startDate3;
        startDate4 = [(HKSample *)self startDate];
        startDate5 = [(HKSample *)v5 startDate];
        v13 = [startDate4 isEqualToDate:startDate5];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      startDate = [(HKSample *)self endDate];
      endDate = [(HKSample *)v5 endDate];
      v8 = endDate;
      if (startDate == endDate)
      {

LABEL_18:
        v14 = 1;
        goto LABEL_19;
      }

      endDate2 = [(HKSample *)v5 endDate];
      if (endDate2)
      {
        v17 = endDate2;
        endDate3 = [(HKSample *)self endDate];
        endDate4 = [(HKSample *)v5 endDate];
        v20 = [endDate3 isEqualToDate:endDate4];

        if (v20)
        {
          goto LABEL_18;
        }

LABEL_16:
        v14 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"offsetFromStartDate"])
  {
    if ([(HKSampleType *)self->_sampleType isMaximumDurationRestricted])
    {
      startDate = [(HKSample *)self startDate];
      [(HKSampleType *)self->_sampleType maximumAllowedDuration];
      v6 = [startDate dateByAddingTimeInterval:?];

      goto LABEL_7;
    }

    endDate = [(HKSample *)self endDate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKSample;
    endDate = [(HKSample *)&v9 valueForKey:keyCopy];
  }

  v6 = endDate;
LABEL_7:

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_dayIndexRangeWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  startDate = [(HKSample *)self startDate];
  v6 = [startDate hk_dayIndexWithCalendar:calendarCopy];

  endDate = [(HKSample *)self endDate];
  v8 = [endDate hk_dayIndexWithCalendar:calendarCopy];

  v9 = v8 - v6 + 1;
  v10 = v6;
  result.var1 = v9;
  result.var0 = v10;
  return result;
}

+ (void)_newSampleFromDatesWithType:(const char *)a1 startDate:(objc_class *)a2 endDate:device:metadata:config:.cold.1(const char *a1, objc_class *a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = NSStringFromSelector(a1);
  v5 = NSStringFromClass(a2);
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKSample.m" lineNumber:58 description:{@"%@ should not be used for abstract class %@", v4, v5}];
}

@end