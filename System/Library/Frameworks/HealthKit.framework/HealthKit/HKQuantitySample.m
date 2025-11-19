@interface HKQuantitySample
+ (HKQuantitySample)quantitySampleWithType:(HKQuantityType *)quantityType quantity:(HKQuantity *)quantity startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
+ (id)_quantitySamplesEnforcingDurationWithType:(id)a3 quantity:(id)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8;
+ (id)_unfrozenQuantitySampleWithQuantityType:(id)a3 quantity:(id)a4 startDate:(id)a5 device:(id)a6;
- (HKQuantitySample)initWithCoder:(id)a3;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)asJSONObject;
- (int64_t)_compareFreezeStateWithSample:(id)a3;
- (void)_setFrozen:(BOOL)a3;
- (void)_setQuantity:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQuantitySample

- (id)asJSONObject
{
  v11.receiver = self;
  v11.super_class = HKQuantitySample;
  v3 = [(HKSample *)&v11 asJSONObject];
  v4 = [(HKQuantitySample *)self quantityType];
  v5 = [v4 canonicalUnit];

  v6 = [v5 description];
  [v3 setObject:v6 forKeyedSubscript:@"unit"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(HKQuantitySample *)self quantity];
  [v8 doubleValueForUnit:v5];
  v9 = [v7 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"quantity"];

  return v3;
}

+ (HKQuantitySample)quantitySampleWithType:(HKQuantityType *)quantityType quantity:(HKQuantity *)quantity startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v13 = quantityType;
  v14 = quantity;
  v15 = startDate;
  v16 = endDate;
  v17 = device;
  v18 = metadata;
  v19 = [(HKObjectType *)v13 dataObjectClass];
  if (v15)
  {
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
    v21 = v20;
    if (v16)
    {
LABEL_3:
      [(NSDate *)v16 timeIntervalSinceReferenceDate];
      v23 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 2.22507386e-308;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v23 = 2.22507386e-308;
LABEL_6:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__HKQuantitySample_quantitySampleWithType_quantity_startDate_endDate_device_metadata___block_invoke;
  v27[3] = &unk_1E73816D0;
  v28 = v14;
  v24 = v14;
  v25 = [(objc_class *)v19 _newSampleWithType:v13 startDate:v17 endDate:v18 device:v27 metadata:v21 config:v23];

  return v25;
}

+ (id)_unfrozenQuantitySampleWithQuantityType:(id)a3 quantity:(id)a4 startDate:(id)a5 device:(id)a6
{
  v9 = a4;
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  [v13 minimumAllowedDuration];
  v14 = [v10 dateWithTimeInterval:v12 sinceDate:?];
  v15 = [v13 dataObjectClass];
  [v12 timeIntervalSinceReferenceDate];
  v17 = v16;

  [v14 timeIntervalSinceReferenceDate];
  v19 = v18;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__HKQuantitySample__unfrozenQuantitySampleWithQuantityType_quantity_startDate_device___block_invoke;
  v23[3] = &unk_1E73816D0;
  v24 = v9;
  v20 = v9;
  v21 = [v15 _newSampleWithType:v13 startDate:v11 endDate:0 device:v23 metadata:v17 config:v19];

  return v21;
}

void __86__HKQuantitySample__unfrozenQuantitySampleWithQuantityType_quantity_startDate_device___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 12, *(a1 + 32));
  v3 = a2;
  v3[13] = 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKQuantitySample;
  result = [(HKSample *)&v3 _init];
  if (result)
  {
    *(result + 14) = 1;
    *(result + 13) = 2;
  }

  return result;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v27.receiver = self;
  v27.super_class = HKQuantitySample;
  v5 = [(HKSample *)&v27 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    goto LABEL_16;
  }

  v8 = [(HKQuantity *)self->_quantity _unit];
  v9 = [(HKQuantitySample *)self quantityType];
  v10 = [v9 isCompatibleWithUnit:v8];

  if (v10)
  {
    v11 = +[HKUnit appleEffortScoreUnit];
    v12 = [v8 isEqual:v11];

    if (v12)
    {
      [(HKQuantity *)self->_quantity _value];
      v14 = v13;
      if (v13 < 0.0 || v13 > 10.0)
      {
        v16 = MEMORY[0x1E696ABC0];
        v17 = objc_opt_class();
        [v16 hk_errorForInvalidArgument:@"@" class:v17 selector:a2 format:{@"%@ %@ requires a value between 0 and 10. Invalid value: %f", objc_opt_class(), v8, *&v14}];
        v7 = LABEL_14:;
        goto LABEL_15;
      }
    }

    if (self->_count <= 0)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = objc_opt_class();
      [v23 hk_errorForInvalidArgument:@"@" class:v24 selector:a2 format:{@"%@ %@ requires a count > 0", objc_opt_class(), self, v26}];
      goto LABEL_14;
    }

    v7 = 0;
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [(HKQuantitySample *)self quantityType];
    v22 = [v21 dimension];
    v7 = [v18 hk_errorForInvalidArgument:@"@" class:v19 selector:a2 format:{@"%@ %@ requires unit of type %@. Incompatible unit: %@", v20, self, v22, v8}];
  }

LABEL_15:

LABEL_16:

  return v7;
}

+ (id)_quantitySamplesEnforcingDurationWithType:(id)a3 quantity:(id)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8
{
  v61 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  [v17 timeIntervalSinceDate:v16];
  v21 = v20;
  if ([v14 isMaximumDurationRestricted])
  {
    [v14 maximumAllowedDuration];
    if (v21 > v22)
    {
      _HKInitializeLogging();
      v23 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        v58 = v17;
        _os_log_fault_impl(&dword_19197B000, v23, OS_LOG_TYPE_FAULT, "Data duration is longer than allowed for type %@, start date %@, end date %@", buf, 0x20u);
      }

      v24 = [v14 aggregationStyle];
      if ((v24 - 1) >= 3)
      {
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v30 = [v15 _unit];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          [v15 doubleValueForUnit:v30];
          v58 = v31;
          v32 = *(*&buf[8] + 24) / v21;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __105__HKQuantitySample__quantitySamplesEnforcingDurationWithType_quantity_startDate_endDate_device_metadata___block_invoke;
          aBlock[3] = &unk_1E73816F8;
          v53 = buf;
          v54 = v32;
          v48 = v17;
          v49 = v30;
          v55 = a1;
          v50 = v14;
          v51 = v18;
          v52 = v19;
          v33 = v30;
          v25 = _Block_copy(aBlock);

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __105__HKQuantitySample__quantitySamplesEnforcingDurationWithType_quantity_startDate_endDate_device_metadata___block_invoke_2;
        v41 = &unk_1E7381720;
        v46 = a1;
        v42 = v14;
        v43 = v15;
        v44 = v18;
        v45 = v19;
        v25 = _Block_copy(&v38);
      }

      v29 = [a1 _enumerateValidIntervalsWithStartDate:v16 endDate:v17 sampleType:v14 block:{v25, v38, v39, v40, v41}];
      goto LABEL_17;
    }
  }

  if (![v14 isMinimumDurationRestricted] || (objc_msgSend(v14, "minimumAllowedDuration"), v21 >= v26))
  {
    v25 = [a1 quantitySampleWithType:v14 quantity:v15 startDate:v16 endDate:v17 device:v18 metadata:v19];
    v56 = v25;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
LABEL_17:
    v28 = v29;

    goto LABEL_18;
  }

  _HKInitializeLogging();
  v27 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
  {
    v36 = v27;
    [v14 minimumAllowedDuration];
    *buf = 138413058;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v58 = v17;
    v59 = 2048;
    v60 = v37;
    _os_log_fault_impl(&dword_19197B000, v36, OS_LOG_TYPE_FAULT, "Not creating any samples because data duration is shorter than allowed for type %@, start date %@, end date %@. Minimum allowed duration for this type is %f", buf, 0x2Au);
  }

  v28 = MEMORY[0x1E695E0F0];
LABEL_18:

  v34 = *MEMORY[0x1E69E9840];

  return v28;
}

id __105__HKQuantitySample__quantitySamplesEnforcingDurationWithType_quantity_startDate_endDate_device_metadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 72) + 8) + 24);
  if ([v6 hk_isBeforeDate:*(a1 + 32)])
  {
    v8 = *(a1 + 80);
    [v6 timeIntervalSinceDate:v5];
    v7 = v8 * v9;
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) - v7;
  }

  v10 = [HKQuantity quantityWithUnit:*(a1 + 40) doubleValue:v7];
  v11 = [*(a1 + 88) quantitySampleWithType:*(a1 + 48) quantity:v10 startDate:v5 endDate:v6 device:*(a1 + 56) metadata:*(a1 + 64)];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = HKQuantitySample;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantity forKey:@"Quantity"];
  [v4 encodeInteger:self->_count forKey:@"Count"];
  if (!self->_freezeState)
  {
    [v4 encodeBool:1 forKey:@"Unfrozen"];
  }
}

- (HKQuantitySample)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKQuantitySample;
  v5 = [(HKSample *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Quantity"];
    quantity = v5->_quantity;
    v5->_quantity = v6;

    v8 = [v4 decodeIntegerForKey:@"Count"];
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v5->_count = v9;
    v10 = [v4 decodeBoolForKey:@"Unfrozen"];
    v11 = 2;
    if (v10)
    {
      v11 = 0;
    }

    v5->_freezeState = v11;
  }

  return v5;
}

- (void)_setQuantity:(id)a3
{
  v4 = [a3 copy];
  quantity = self->_quantity;
  self->_quantity = v4;

  MEMORY[0x1EEE66BB8](v4, quantity);
}

- (void)_setFrozen:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_freezeState = v3;
}

- (int64_t)_compareFreezeStateWithSample:(id)a3
{
  freezeState = self->_freezeState;
  v4 = *(a3 + 13);
  v5 = freezeState < v4;
  v6 = freezeState > v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

@end