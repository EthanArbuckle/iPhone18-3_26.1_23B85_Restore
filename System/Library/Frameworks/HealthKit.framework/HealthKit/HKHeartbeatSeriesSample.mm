@interface HKHeartbeatSeriesSample
+ (id)_heartbeatSeriesSampleFromCSV:(id)v startDate:(id)date metadata:(id)metadata error:(id *)error;
+ (id)_heartbeatSeriesSampleWithData:(id)data startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata;
- (HKHeartbeatSeriesSample)init;
- (HKHeartbeatSeriesSample)initWithCoder:(id)coder;
- (NSNumber)_maximumBeatsPerMinute;
- (NSNumber)_minimumBeatsPerMinute;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (void)_computeMinimumAndMaximumBeatsPerMinute;
- (void)_enumerateHeartbeatDataWithBlock:(id)block;
- (void)_setPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateHeartbeatDataWithBlock:(id)block;
@end

@implementation HKHeartbeatSeriesSample

- (HKHeartbeatSeriesSample)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)_heartbeatSeriesSampleWithData:(id)data startDate:(id)date endDate:(id)endDate device:(id)device metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  deviceCopy = device;
  endDateCopy = endDate;
  dateCopy = date;
  v17 = +[HKSeriesType heartbeatSeriesType];
  [dateCopy timeIntervalSinceReferenceDate];
  v19 = v18;

  [endDateCopy timeIntervalSinceReferenceDate];
  v21 = v20;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__HKHeartbeatSeriesSample__heartbeatSeriesSampleWithData_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &unk_1E7383830;
  v26 = dataCopy;
  v22 = dataCopy;
  v23 = [self _newSampleWithType:v17 startDate:deviceCopy endDate:metadataCopy device:v25 metadata:v19 config:v21];

  return v23;
}

- (void)enumerateHeartbeatDataWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HKHeartbeatSeriesSample_enumerateHeartbeatDataWithBlock___block_invoke;
  v6[3] = &unk_1E7383858;
  v7 = blockCopy;
  v5 = blockCopy;
  [(HKHeartbeatSeriesSample *)self _enumerateHeartbeatDataWithBlock:v6];
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v37.receiver = self;
  v37.super_class = HKHeartbeatSeriesSample;
  v5 = [(HKSeriesSample *)&v37 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    sampleType = [(HKSample *)self sampleType];
    v9 = +[HKSeriesType heartbeatSeriesType];
    v10 = [sampleType isEqual:v9];

    if (v10)
    {
      if (([(NSData *)self->_heartbeatData length]& 0xF) == 0)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x3032000000;
        v34 = __Block_byref_object_copy__46;
        v35 = __Block_byref_object_dispose__46;
        v36 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __54__HKHeartbeatSeriesSample__validateWithConfiguration___block_invoke;
        v26[3] = &unk_1E7383880;
        v26[4] = self;
        v26[5] = &v31;
        v26[6] = &v27;
        v26[7] = a2;
        [(HKHeartbeatSeriesSample *)self _enumerateHeartbeatDataWithBlock:v26];
        startDate = [(HKSample *)self startDate];
        v21 = [startDate dateByAddingTimeInterval:v28[3]];

        endDate = [(HKSample *)self endDate];
        v23 = [v21 hk_isBeforeOrEqualToDate:endDate];

        if (v23)
        {
          v24 = v32[5];
        }

        else
        {
          v24 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Heartbeat sequence end date is incorrect"];
        }

        v18 = v24;

        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v31, 8);

        goto LABEL_9;
      }

      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      v13 = @"Heartbeat sequence data is incorrectly formatted";
      v14 = v11;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v13 = @"Invalid data type %@";
      v25 = v17;
      v14 = v15;
      v12 = v16;
    }

    v7 = [v14 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{v13, v25}];
  }

  v18 = v7;
LABEL_9:

  return v18;
}

uint64_t __54__HKHeartbeatSeriesSample__validateWithConfiguration___block_invoke(void *a1, double a2)
{
  if (a2 < 0.0)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = a1[7];
    v8 = @"Heartbeat datum time since sequence start (%f) must be nonnegative";
LABEL_7:
    [v4 hk_errorForInvalidArgument:@"@" class:v6 selector:v7 format:{v8, *&a2, v15}];
    goto LABEL_8;
  }

  if (*(*(a1[6] + 8) + 24) > a2)
  {
    v9 = a1[4];
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Heartbeat datum time since sequence start (%f) must not be less than previous datum (%f)", *&a2, *(*(a1[6] + 8) + 24)}];
    v11 = LABEL_8:;
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    goto LABEL_9;
  }

  if (a2 > 10000.0)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = a1[4];
    v6 = objc_opt_class();
    v7 = a1[7];
    v8 = @"Heartbeat datum time since sequence start (%f) greater than expected maxiumum 10000";
    goto LABEL_7;
  }

LABEL_9:
  *(*(a1[6] + 8) + 24) = a2;
  return 1;
}

- (NSNumber)_minimumBeatsPerMinute
{
  cachedMinBeatsPerMinute = self->_cachedMinBeatsPerMinute;
  if (!cachedMinBeatsPerMinute || !self->_cachedMaxBeatsPerMinute)
  {
    [(HKHeartbeatSeriesSample *)self _computeMinimumAndMaximumBeatsPerMinute];
    cachedMinBeatsPerMinute = self->_cachedMinBeatsPerMinute;
  }

  return cachedMinBeatsPerMinute;
}

- (NSNumber)_maximumBeatsPerMinute
{
  if (!self->_cachedMinBeatsPerMinute || (cachedMaxBeatsPerMinute = self->_cachedMaxBeatsPerMinute) == 0)
  {
    [(HKHeartbeatSeriesSample *)self _computeMinimumAndMaximumBeatsPerMinute];
    cachedMaxBeatsPerMinute = self->_cachedMaxBeatsPerMinute;
  }

  return cachedMaxBeatsPerMinute;
}

- (void)_computeMinimumAndMaximumBeatsPerMinute
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FEFFFFFFFFFFFFFLL;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKHeartbeatSeriesSample__computeMinimumAndMaximumBeatsPerMinute__block_invoke;
  v7[3] = &unk_1E73838A8;
  v7[4] = v8;
  v7[5] = v10;
  v7[6] = &v11;
  v7[7] = &v15;
  [(HKHeartbeatSeriesSample *)self _enumerateHeartbeatDataWithBlock:v7];
  v3 = v16[3];
  if (v3 == 1.79769313e308)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v16[3]];
  }

  objc_storeStrong(&self->_cachedMinBeatsPerMinute, v4);
  if (v3 != 1.79769313e308)
  {
  }

  v5 = v12[3];
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v12[3]];
  }

  objc_storeStrong(&self->_cachedMaxBeatsPerMinute, v6);
  if (v5 != 0.0)
  {
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

uint64_t __66__HKHeartbeatSeriesSample__computeMinimumAndMaximumBeatsPerMinute__block_invoke(void *a1, char a2, double a3)
{
  if ((a2 & 1) == 0 && (*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v3 = 1.0 / ((a3 - *(*(a1[5] + 8) + 24)) / 60.0);
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5 < v3)
    {
      v5 = 1.0 / ((a3 - *(*(a1[5] + 8) + 24)) / 60.0);
    }

    *(v4 + 24) = v5;
    v6 = *(a1[7] + 8);
    if (*(v6 + 24) < v3)
    {
      v3 = *(v6 + 24);
    }

    *(v6 + 24) = v3;
  }

  *(*(a1[4] + 8) + 24) = 0;
  *(*(a1[5] + 8) + 24) = a3;
  return 1;
}

- (void)_enumerateHeartbeatDataWithBlock:(id)block
{
  v10 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_numberOfDataPoints >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      [(NSData *)self->_heartbeatData getBytes:&v8 range:v5, 16];
      if ((blockCopy[2](blockCopy, v9 != 0, v8) & 1) == 0)
      {
        break;
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < self->_numberOfDataPoints);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [MEMORY[0x1E695DEF0] dataWithData:payloadCopy];
  heartbeatData = self->_heartbeatData;
  self->_heartbeatData = v4;

  self->_numberOfDataPoints = [payloadCopy length] >> 4;
}

- (HKHeartbeatSeriesSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HKHeartbeatSeriesSample;
  v5 = [(HKSeriesSample *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heartbeatData"];
    [(HKHeartbeatSeriesSample *)v5 _setPayload:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKHeartbeatSeriesSample;
  coderCopy = coder;
  [(HKSeriesSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_heartbeatData forKey:{@"heartbeatData", v5.receiver, v5.super_class}];
}

+ (id)_heartbeatSeriesSampleFromCSV:(id)v startDate:(id)date metadata:(id)metadata error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  metadataCopy = metadata;
  v11 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v encoding:4 error:error];
  if ([v11 length])
  {
    v32 = metadataCopy;
    v31 = v11;
    v12 = [v11 componentsSeparatedByString:@"\n"];
    v13 = [MEMORY[0x1E695DF88] dataWithCapacity:{16 * objc_msgSend(v12, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 rangeOfString:{@", "}];
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v21;
            v23 = [v20 substringToIndex:v21];
            v24 = [v20 substringFromIndex:v22 + 1];
            [v23 doubleValue];
            v18 = v25;
            bOOLValue = [v24 BOOLValue];
            v39 = 0;
            v38 = v18;
            if ((bOOLValue & 1) == 0)
            {
              LOBYTE(v39) = 1;
            }

            [v13 appendBytes:&v38 length:16];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v28 = [dateCopy dateByAddingTimeInterval:v18];
    metadataCopy = v32;
    v27 = [HKHeartbeatSeriesSample _heartbeatSeriesSampleWithData:v13 startDate:dateCopy endDate:v28 device:0 metadata:v32];

    v11 = v31;
  }

  else
  {
    v27 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

@end