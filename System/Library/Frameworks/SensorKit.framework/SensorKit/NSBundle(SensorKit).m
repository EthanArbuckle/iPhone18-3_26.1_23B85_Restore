@interface NSBundle(SensorKit)
+ (uint64_t)_sr_validateRequiredFieldsForBundleIdentifier:()SensorKit sensors:error:;
- (uint64_t)_sr_validateRequiredFieldsForSensors:()SensorKit error:;
@end

@implementation NSBundle(SensorKit)

+ (uint64_t)_sr_validateRequiredFieldsForBundleIdentifier:()SensorKit sensors:error:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Research/Studies/" isDirectory:1 relativeToURL:0];
  objc_opt_self();
  v9 = [(NSBundle *)MEMORY[0x1E696AAE8] sk_bundleWithIdentifier:a3 partnerAppDirectoryURL:v8];
  if (v9)
  {
    v10 = *MEMORY[0x1E69E9840];

    return [v9 _sr_validateRequiredFieldsForSensors:a4 error:a5];
  }

  else
  {
    if (a5)
    {
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"Bundle couldn't be found";
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:SRErrorDomain code:20480 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
    }

    v12 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (uint64_t)_sr_validateRequiredFieldsForSensors:()SensorKit error:
{
  v29 = *MEMORY[0x1E69E9840];
  if (![a1 sk_usageDescription])
  {
    if (a4)
    {
      v16 = @"NSSensorKitUsageDescription";
      v17 = 20481;
LABEL_21:
      v18 = [SRError invalidInfoPlistErrorWithMissingKey:v16 code:v17];
      result = 0;
      *a4 = v18;
      goto LABEL_33;
    }

LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (![a1 sk_privacyURL])
  {
    if (a4)
    {
      v16 = @"NSSensorKitPrivacyPolicyURL";
      v17 = 20482;
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (![a1 objectForInfoDictionaryKey:@"NSSensorKitUsageDetail"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      v16 = @"NSSensorKitUsageDetail";
      v17 = 20483;
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v7)
  {
    result = 1;
    goto LABEL_33;
  }

  v8 = v7;
  v9 = *v23;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      v13 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v11), "infoPlistAuthorizationCategory"}];
      if (!v13)
      {
        if (_MergedGlobals_6 != -1)
        {
          dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
        }

        v19 = qword_1EE02AB38;
        if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v27 = v11;
          _os_log_error_impl(&dword_1C914D000, v19, OS_LOG_TYPE_ERROR, "Failed to find Info.plist authorization category key for %{public}@", buf, 0xCu);
          if (!a4)
          {
            goto LABEL_31;
          }
        }

        else if (!a4)
        {
          goto LABEL_31;
        }

        v20 = [SRError errorWithCode:8194];
LABEL_30:
        *a4 = v20;
        goto LABEL_31;
      }

      v14 = v13;
      if (![objc_msgSend(a1 "sk_perCategoryDetailDescription")])
      {
        if (a4)
        {
          v20 = [SRError invalidInfoPlistErrorWithMissingKey:v14 code:20484];
          goto LABEL_30;
        }

LABEL_31:
        objc_autoreleasePoolPop(v12);
        goto LABEL_32;
      }

      objc_autoreleasePoolPop(v12);
    }

    v8 = [a3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    result = 1;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

@end