@interface HKCategorySample
+ (HKCategorySample)categorySampleWithType:(HKCategoryType *)type value:(NSInteger)value startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
+ (id)_categorySamplesSplittingDurationWithType:(id)a3 value:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8;
- (BOOL)isEquivalent:(id)a3;
- (HKCategorySample)init;
- (HKCategorySample)initWithCoder:(id)a3;
- (NSInteger)value;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)_valueDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCategorySample

- (NSInteger)value
{
  v3 = [(HKCategorySample *)self categoryType];
  v4 = [v3 _categoryValueForValue:self->_value];

  return v4;
}

- (id)_valueDescription
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_value];
  v3 = [v2 description];

  return v3;
}

- (HKCategorySample)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKCategorySample)categorySampleWithType:(HKCategoryType *)type value:(NSInteger)value startDate:(NSDate *)startDate endDate:(NSDate *)endDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = type;
  v15 = startDate;
  v16 = endDate;
  v17 = device;
  v18 = metadata;
  if (v15)
  {
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
    v20 = v19;
    if (v16)
    {
LABEL_3:
      [(NSDate *)v16 timeIntervalSinceReferenceDate];
      v22 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 2.22507386e-308;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v22 = 2.22507386e-308;
LABEL_6:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __83__HKCategorySample_categorySampleWithType_value_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &__block_descriptor_40_e26_v16__0__HKCategorySample_8l;
  v25[4] = value;
  v23 = [a1 _newSampleWithType:v14 startDate:v17 endDate:v18 device:v25 metadata:v20 config:v22];

  return v23;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v19.receiver = self;
  v19.super_class = HKCategorySample;
  v5 = [(HKSample *)&v19 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(HKCategorySample *)self categoryType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(HKCategorySample *)self categoryType];
      if ([v10 _acceptsValue:self->_value])
      {
        v7 = 0;
      }

      else
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = objc_opt_class();
        value = self->_value;
        v17 = [(HKCategorySample *)self categoryType];
        v7 = [v14 hk_errorForInvalidArgument:@"@" class:v15 selector:a2 format:{@"Value %ld is not compatible with type %@", value, v17}];
      }
    }

    else
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      v13 = [(HKCategorySample *)self categoryType];
      v7 = [v11 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{@"Data type %@ must be of type %@", v13, objc_opt_class()}];
    }
  }

  return v7;
}

+ (id)_categorySamplesSplittingDurationWithType:(id)a3 value:(int64_t)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 isMaximumDurationRestricted] && (objc_msgSend(v16, "timeIntervalSinceDate:", v15), v20 = v19, objc_msgSend(v14, "maximumAllowedDuration"), v20 > v21))
  {
    _HKInitializeLogging();
    v22 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_fault_impl(&dword_19197B000, v22, OS_LOG_TYPE_FAULT, "Data duration is longer than allowed for type %@, start date %@, end date %@", buf, 0x20u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __102__HKCategorySample__categorySamplesSplittingDurationWithType_value_startDate_endDate_device_metadata___block_invoke;
    v27[3] = &unk_1E7384970;
    v31 = a1;
    v28 = v14;
    v32 = a4;
    v29 = v17;
    v30 = v18;
    v23 = [a1 _enumerateValidIntervalsWithStartDate:v15 endDate:v16 sampleType:v28 block:v27];

    v24 = v28;
  }

  else
  {
    v24 = [a1 categorySampleWithType:v14 value:a4 startDate:v15 endDate:v16 device:v17 metadata:v18];
    v33 = v24;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (HKCategorySample)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKCategorySample;
  v5 = [(HKSample *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"value"];
    v7 = [(HKCategorySample *)v5 categoryType];
    v8 = [v7 _acceptsValue:v6];

    if ((v8 & 1) == 0)
    {
      v9 = +[_HKBehavior isAppleInternalInstall];
      _HKInitializeLogging();
      v10 = HKLogDefault;
      if (v9)
      {
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          [(HKCategorySample *)v10 initWithCoder:v5, v6];
        }
      }

      else if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(HKCategorySample *)v5 categoryType];
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "Invalid value received for %@, setting value to 0", buf, 0xCu);
      }

      v13 = [(HKCategorySample *)v5 categoryType];
      v6 = [v13 _defaultValue];
    }

    v5->_value = v6;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKCategorySample;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_value forKey:{@"value", v5.receiver, v5.super_class}];
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8.receiver = self;
    v8.super_class = HKCategorySample;
    if ([(HKSample *)&v8 isEquivalent:v5])
    {
      v6 = self->_value == v5[12];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithCoder:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 categoryType];
  v8 = 134218242;
  v9 = a3;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "Invalid value %ld received for %@, setting value to 0", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end