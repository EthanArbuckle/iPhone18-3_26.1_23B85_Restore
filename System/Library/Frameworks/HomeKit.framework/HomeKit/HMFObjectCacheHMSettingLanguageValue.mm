@interface HMFObjectCacheHMSettingLanguageValue
+ (id)cachedInstanceForLanguageSettingValue:(id)value;
@end

@implementation HMFObjectCacheHMSettingLanguageValue

+ (id)cachedInstanceForLanguageSettingValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v4 = objc_autoreleasePoolPush();
  if (!valueCopy)
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = objc_opt_class();
      v13 = v12;
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = valueCopy;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = objc_opt_class();
      v14 = v26;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v19, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([valueCopy conformsToProtocol:&unk_1F0F00880] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = valueCopy;
      v23 = 2112;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v19, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = valueCopy;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = cachedInstanceForLanguageSettingValue__cachedInstances;
  if (!cachedInstanceForLanguageSettingValue__cachedInstances)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:6 capacity:0];
    v7 = cachedInstanceForLanguageSettingValue__cachedInstances;
    cachedInstanceForLanguageSettingValue__cachedInstances = v6;

    v5 = cachedInstanceForLanguageSettingValue__cachedInstances;
  }

  v8 = [v5 member:valueCopy];
  if (!v8)
  {
    v8 = [valueCopy copy];
    [cachedInstanceForLanguageSettingValue__cachedInstances addObject:v8];
  }

  os_unfair_lock_unlock(&cachedInstanceForLanguageSettingValue__lock);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

@end