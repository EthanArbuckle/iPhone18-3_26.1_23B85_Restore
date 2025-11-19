@interface HKSample
+ (id)_enumerateValidIntervalsWithStartDate:(id)a3 endDate:(id)a4 sampleType:(id)a5 block:(id)a6;
+ (id)_newSampleFromDatesWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 config:(id)a8;
+ (id)_newSampleWithType:(id)a3 startDate:(double)a4 endDate:(double)a5 device:(id)a6 metadata:(id)a7 config:(id)a8;
- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_dayIndexRangeWithCalendar:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_morningIndexRangeWithCalendarWithCalendar:(id)a3;
- (BOOL)hasUndeterminedDuration;
- (BOOL)isEquivalent:(id)a3;
- (HKSample)initWithCoder:(id)a3;
- (NSString)description;
- (id)_init;
- (id)_timeZone;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)asJSONObject;
- (id)valueForKey:(id)a3;
- (int64_t)_externalSyncObjectCode;
- (void)_setEndDate:(id)a3;
- (void)_setSampleType:(id)a3;
- (void)_setStartDate:(id)a3;
- (void)_setType:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(HKSample *)self sampleType];
  v3 = [v2 code];

  return v3;
}

- (NSString)description
{
  if (description_onceToken_1 != -1)
  {
    [HKSample description];
  }

  v3 = description_formatter_0;
  v4 = [(HKSample *)self startDate];
  v5 = [v3 stringFromDate:v4];

  v6 = description_formatter_0;
  v7 = [(HKSample *)self endDate];
  v8 = [v6 stringFromDate:v7];

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

- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_morningIndexRangeWithCalendarWithCalendar:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = self;
  v6 = [(HKSample *)v5 overrideDayIndex];

  if (!v6)
  {

LABEL_5:
    v10 = [(HKSample *)self startDate];
    v8 = [v10 hk_morningIndexWithCalendar:v4];

    v11 = [(HKSample *)self endDate];
    v12 = [v11 hk_morningIndexWithCalendar:v4];

    v9 = v12 - v8 + 1;
    goto LABEL_6;
  }

  v7 = [(HKSample *)v5 overrideDayIndex];
  v8 = [v7 integerValue] - 1;

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
  v3 = [(HKObject *)&v13 asJSONObject];
  if (asJSONObject_onceToken != -1)
  {
    [HKSample(HK_JSON) asJSONObject];
  }

  v4 = asJSONObject_formatter;
  v5 = [(HKSample *)self startDate];
  v6 = [v4 stringFromDate:v5];
  [v3 setObject:v6 forKeyedSubscript:@"startDate"];

  v7 = asJSONObject_formatter;
  v8 = [(HKSample *)self endDate];
  v9 = [v7 stringFromDate:v8];
  [v3 setObject:v9 forKeyedSubscript:@"endDate"];

  v10 = [(HKSample *)self sampleType];
  v11 = [v10 description];
  [v3 setObject:v11 forKeyedSubscript:@"sampleType"];

  return v3;
}

uint64_t __33__HKSample_HK_JSON__asJSONObject__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = asJSONObject_formatter;
  asJSONObject_formatter = v0;

  v2 = asJSONObject_formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

+ (id)_newSampleWithType:(id)a3 startDate:(double)a4 endDate:(double)a5 device:(id)a6 metadata:(id)a7 config:(id)a8
{
  v14 = a3;
  v15 = a8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKSample__newSampleWithType_startDate_endDate_device_metadata_config___block_invoke;
  v20[3] = &unk_1E7384DD8;
  v23 = a4;
  v24 = a5;
  v21 = v14;
  v22 = v15;
  v16 = v15;
  v17 = v14;
  v18 = [a1 _newDataObjectWithMetadata:a7 device:a6 config:v20];

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

+ (id)_newSampleFromDatesWithType:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7 config:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if ([a1 _isConcreteObjectClass])
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = 2.22507386e-308;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_7:
    v24 = 2.22507386e-308;
    goto LABEL_8;
  }

  [HKSample _newSampleFromDatesWithType:a2 startDate:a1 endDate:? device:? metadata:? config:?];
  if (!v16)
  {
    goto LABEL_6;
  }

LABEL_3:
  [v16 timeIntervalSinceReferenceDate];
  v22 = v21;
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v17 timeIntervalSinceReferenceDate];
  v24 = v23;
LABEL_8:
  v25 = [a1 _newSampleWithType:v15 startDate:v18 endDate:v19 device:v20 metadata:v22 config:v24];

  return v25;
}

+ (id)_enumerateValidIntervalsWithStartDate:(id)a3 endDate:(id)a4 sampleType:(id)a5 block:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [a5 maximumAllowedDuration];
  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v9;
  v16 = v15;
  if ([v15 hk_isBeforeDate:v10])
  {
    v17 = v15;
    do
    {
      v16 = [v17 dateByAddingTimeInterval:v13];
      if ([v16 hk_isAfterDate:v10])
      {
        v18 = v10;

        v16 = v18;
      }

      v19 = v11[2](v11, v17, v16);
      [v14 addObject:v19];

      v17 = v16;
    }

    while (([v16 hk_isBeforeDate:v10] & 1) != 0);
  }

  return v14;
}

- (id)_timeZone
{
  v2 = [(HKObject *)self _timeZoneName];
  if (!v2 || ([MEMORY[0x1E695DFE8] timeZoneWithName:v2], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = [v4 timeZone];
  }

  return v3;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  var0 = a3.var0;
  v45.receiver = self;
  v45.super_class = HKSample;
  v6 = [(HKObject *)&v45 _validateWithConfiguration:a3.var0, a3.var1];
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

  v10 = [(HKSample *)self sampleType];
  startTimestamp = self->_startTimestamp;
  endTimestamp = self->_endTimestamp;
  v44 = 0;
  v13 = [v10 _validateStartDate:&v44 endDate:startTimestamp error:endTimestamp];
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
      v17 = [(HKSample *)self sampleType];
      if ([v17 isMaximumDurationRestricted])
      {
        v18 = self->_endTimestamp - self->_startTimestamp;
        v19 = [(HKSample *)self sampleType];
        [v19 maximumAllowedDuration];
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

      v29 = [(HKSample *)self sampleType];
      if ([v29 isMinimumDurationRestricted])
      {
        v30 = self->_endTimestamp - self->_startTimestamp;
        v31 = [(HKSample *)self sampleType];
        [v31 minimumAllowedDuration];
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

    v37 = [(HKSample *)self sampleType];
    v38 = [(HKObject *)self metadata];
    v43 = 0;
    v39 = [v37 hk_validateMetadata:v38 sample:self error:&v43];
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

- (void)_setSampleType:(id)a3
{
  v4 = [a3 copy];
  sampleType = self->_sampleType;
  self->_sampleType = v4;

  MEMORY[0x1EEE66BB8](v4, sampleType);
}

- (void)_setType:(id)a3
{
  v4 = [a3 copy];
  sampleType = self->_sampleType;
  self->_sampleType = v4;

  MEMORY[0x1EEE66BB8](v4, sampleType);
}

- (void)_setStartDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = 2.22507386e-308;
  }

  [(HKSample *)self _setStartTimestamp:v4];
}

- (void)_setEndDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
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
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  [v3 timeIntervalSinceReferenceDate];
  v5 = endTimestamp >= v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSample;
  v4 = a3;
  [(HKObject *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"StartTS" forKey:{self->_startTimestamp, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"EndTS" forKey:self->_endTimestamp];
  [v4 encodeObject:self->_sampleType forKey:@"DataType"];
}

- (HKSample)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKSample;
  v5 = [(HKObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataType"];
    sampleType = v5->_sampleType;
    v5->_sampleType = v6;

    if ([v4 containsValueForKey:@"StartTS"])
    {
      [v4 decodeDoubleForKey:@"StartTS"];
      v5->_startTimestamp = v8;
      [v4 decodeDoubleForKey:@"EndTS"];
      v5->_endTimestamp = v9;
    }

    else
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
      [v10 timeIntervalSinceReferenceDate];
      v5->_startTimestamp = v11;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
      [v12 timeIntervalSinceReferenceDate];
      v5->_endTimestamp = v13;
    }
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() supportsEquivalence])
  {
    if (self == v4)
    {
      v14 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKSample *)self startDate];
      v7 = [(HKSample *)v5 startDate];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKSample *)v5 startDate];
        if (!v9)
        {
          goto LABEL_15;
        }

        v10 = v9;
        v11 = [(HKSample *)self startDate];
        v12 = [(HKSample *)v5 startDate];
        v13 = [v11 isEqualToDate:v12];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v6 = [(HKSample *)self endDate];
      v15 = [(HKSample *)v5 endDate];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_18:
        v14 = 1;
        goto LABEL_19;
      }

      v16 = [(HKSample *)v5 endDate];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKSample *)self endDate];
        v19 = [(HKSample *)v5 endDate];
        v20 = [v18 isEqualToDate:v19];

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

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"offsetFromStartDate"])
  {
    if ([(HKSampleType *)self->_sampleType isMaximumDurationRestricted])
    {
      v5 = [(HKSample *)self startDate];
      [(HKSampleType *)self->_sampleType maximumAllowedDuration];
      v6 = [v5 dateByAddingTimeInterval:?];

      goto LABEL_7;
    }

    v7 = [(HKSample *)self endDate];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKSample;
    v7 = [(HKSample *)&v9 valueForKey:v4];
  }

  v6 = v7;
LABEL_7:

  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)hk_dayIndexRangeWithCalendar:(id)a3
{
  v4 = a3;
  v5 = [(HKSample *)self startDate];
  v6 = [v5 hk_dayIndexWithCalendar:v4];

  v7 = [(HKSample *)self endDate];
  v8 = [v7 hk_dayIndexWithCalendar:v4];

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