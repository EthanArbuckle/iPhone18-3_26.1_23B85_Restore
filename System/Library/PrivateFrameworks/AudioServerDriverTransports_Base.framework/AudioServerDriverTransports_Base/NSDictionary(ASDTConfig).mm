@interface NSDictionary(ASDTConfig)
+ (BOOL)asdtGetFourCC:()ASDTConfig forObject:withDefault:;
- (BOOL)asdtControlClassID:()ASDTConfig;
- (double)asdtManagerRunningLogPeriod;
- (id)asdtArrayForKey:()ASDTConfig;
- (id)asdtArrayOfDictionariesForKey:()ASDTConfig;
- (id)asdtArrayOfNumbersForKey:()ASDTConfig;
- (id)asdtArrayOfStringsForKey:()ASDTConfig;
- (id)asdtBundleClass;
- (id)asdtBundleExtension;
- (id)asdtDeviceModel;
- (id)asdtExclavesSensorName;
- (id)asdtFactorySubclass;
- (id)asdtFormats;
- (id)asdtFormatsWithSamplingRates:()ASDTConfig;
- (id)asdtInputLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtLatenciesForSamplingRates:()ASDTConfig latencyUsKey:latencyDictKey:;
- (id)asdtNumberForKey:()ASDTConfig;
- (id)asdtOutputLatenciesForSamplingRates:()ASDTConfig;
- (id)asdtPropertyAddress;
- (id)asdtRelatedDeviceUIDs;
- (id)asdtServiceID;
- (id)asdtStringForKey:()ASDTConfig;
- (id)asdtSubclass;
- (objc_class)asdtDeviceManager;
- (uint64_t)asdtAddNonSecurePathEnable;
- (uint64_t)asdtBoolForKey:()ASDTConfig;
- (uint64_t)asdtClockDomain;
- (uint64_t)asdtDirection:()ASDTConfig;
- (uint64_t)asdtFourCCForKey:()ASDTConfig withDefault:;
- (uint64_t)asdtGetSelector:()ASDTConfig;
- (uint64_t)asdtIsSettable;
- (uint64_t)asdtIsolatedUseCaseID;
- (uint64_t)asdtManagerAudioObjectMaxCount;
- (uint64_t)asdtManagerInitializationWaitUs;
- (uint64_t)asdtManagerVerboseLogging;
- (uint64_t)asdtNumericCount;
- (uint64_t)asdtNumericIsVectorWithCount:()ASDTConfig;
- (uint64_t)asdtNumericType;
- (uint64_t)asdtPMActionWaiterTimeoutUs;
- (uint64_t)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:;
- (uint64_t)asdtPMOrderWithDefaultForPowerUp:()ASDTConfig;
- (uint64_t)asdtPropertyCacheMode;
- (uint64_t)asdtPropertyDataSizeBytes;
- (uint64_t)asdtPropertyIsPList;
- (uint64_t)asdtSamplingRate:()ASDTConfig andSamplingRates:withDefault:;
- (uint64_t)asdtSelectorControlItemSelected;
- (uint64_t)asdtSelectorControlItemValue:()ASDTConfig;
- (uint64_t)asdtStartingChannel;
- (void)asdtDeviceManager;
- (void)asdtNumericType;
- (void)asdtPropertyCacheMode;
@end

@implementation NSDictionary(ASDTConfig)

- (id)asdtArrayForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = ASDTBaseLogType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtArrayForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)asdtArrayOfDictionariesForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = ASDTBaseLogType();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfDictionariesForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)asdtArrayOfNumbersForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = ASDTBaseLogType();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfNumbersForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)asdtArrayOfStringsForKey:()ASDTConfig
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 asdtArrayForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v7 = v5;
  if (v6)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = ASDTBaseLogType();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtArrayOfStringsForKey:];
          }

          v7 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v7 = v5;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)asdtNumberForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = ASDTBaseLogType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtNumberForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)asdtBoolForKey:()ASDTConfig
{
  v1 = [a1 asdtNumberForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)asdtStringForKey:()ASDTConfig
{
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = ASDTBaseLogType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtStringForKey:];
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)asdtGetFourCC:()ASDTConfig forObject:withDefault:
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 length];
    v10 = v9 < 5;
    if (v9 < 5)
    {
      v11 = [v8 UTF8String];
      if (v11)
      {
        v12 = 0;
        a5 = 0;
        do
        {
          if (!*(v11 + v12))
          {
            break;
          }

          a5 = *(v11 + v12++) | (a5 << 8);
        }

        while (v12 != 4);
      }

      else
      {
        a5 = 0;
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a5 = [v7 unsignedIntValue];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a3)
  {
    *a3 = a5;
  }

  return v10;
}

- (uint64_t)asdtFourCCForKey:()ASDTConfig withDefault:
{
  v6 = a3;
  v11 = a4;
  v7 = objc_opt_class();
  v8 = [a1 objectForKey:v6];
  [v7 asdtGetFourCC:&v11 forObject:v8 withDefault:a4];

  v9 = v11;
  return v9;
}

- (id)asdtSubclass
{
  v1 = [a1 asdtStringForKey:@"Subclass"];
  v2 = v1;
  if (v1)
  {
    v3 = NSClassFromString(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)asdtFactorySubclass
{
  v2 = [a1 asdtStringForKey:@"FactorySubclass"];
  if (!v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 asdtStringForKey:@"Subclass"];
    v2 = [v3 stringWithFormat:@"%@Factory", v4];
  }

  v5 = NSClassFromString(v2);

  return v5;
}

- (id)asdtServiceID
{
  v2 = [a1 asdtStringForKey:@"Identifier"];
  if (v2)
  {
    v3 = [a1 asdtNumberForKey:@"ClientType"];
    v4 = [v3 unsignedIntValue];

    v5 = [ASDTIOServiceID forIdentifier:v2 andClientType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)asdtBundleExtension
{
  v1 = [a1 asdtStringForKey:@"BundleExt"];
  v2 = [v1 substringWithRange:{0, 1}];
  v3 = [v2 isEqualToString:@"."];

  if (v3)
  {
    v4 = [v1 substringFromIndex:1];

    v1 = v4;
  }

  return v1;
}

- (id)asdtBundleClass
{
  v1 = [a1 asdtStringForKey:@"BundleClass"];
  v2 = v1;
  if (v1)
  {
    v3 = NSClassFromString(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)asdtClockDomain
{
  v1 = [a1 asdtStringForKey:@"ClockDomain"];
  v5 = v1;
  if (v1)
  {
    v6 = [v1 UTF8String];
    DomainForFourCC = ASDT::Clock::GetDomainForFourCC(v6, v7, v8, v9);
  }

  else
  {
    DomainForFourCC = ASDT::Clock::GetSynchronousClockDomain(0, v2, v3, v4);
  }

  v11 = DomainForFourCC;

  return v11;
}

- (id)asdtLatenciesForSamplingRates:()ASDTConfig latencyUsKey:latencyDictKey:
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v8;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v10 = [a1 objectForKey:v30];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
  {
    v11 = [v10 allKeys];
    v12 = [v11 asdtNumericSortAscending:1];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v8;
    v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v10 objectForKey:{v16, v29}];
          if (!v17)
          {
            v18 = [v12 asdtNearestNumberToNumber:v16];
            v17 = [v10 objectForKey:v18];

            if (!v17)
            {
              continue;
            }
          }

          v19 = [ASDTUtils latencyFramesForSamplingRate:v16 andMicroseconds:v17];
          [v9 setObject:v19 forKey:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v12 = [a1 asdtNumberForKey:{v29, v29}];
    if (!v12)
    {
      goto LABEL_23;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v21)
    {
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = [ASDTUtils latencyFramesForSamplingRate:v24 andMicroseconds:v12];
          [v9 setObject:v25 forKey:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }
  }

LABEL_23:
  if ([v9 count])
  {
    v26 = [v9 copy];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)asdtInputLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [a1 asdtLatenciesForSamplingRates:a3 latencyUsKey:@"InputLatencyUs" latencyDictKey:@"InputLatencies"];

  return v3;
}

- (id)asdtOutputLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [a1 asdtLatenciesForSamplingRates:a3 latencyUsKey:@"OutputLatencyUs" latencyDictKey:@"OutputLatencies"];

  return v3;
}

- (id)asdtDeviceModel
{
  v2 = [a1 asdtStringForKey:@"DeviceModel"];
  if (!v2)
  {
    v2 = [a1 asdtStringForKey:@"DeviceUID"];
  }

  return v2;
}

- (uint64_t)asdtPMOrderWithDefaultForPowerUp:()ASDTConfig
{
  v4 = 1000;
  [a1 asdtPMOrder:&v4 forPowerUp:a3 allowDefault:1];
  return v4;
}

- (uint64_t)asdtSamplingRate:()ASDTConfig andSamplingRates:withDefault:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v9 = [a1 asdtNumberForKey:@"SamplingRate"];
  v10 = [a1 asdtArrayOfNumbersForKey:@"SamplingRates"];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v10)
    {
      v9 = [v10 objectAtIndexedSubscript:0];
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  }

  v33[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
LABEL_8:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v13)
  {
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v22 + 1) + 8 * i) isEqualToNumber:{v9, v22}])
        {

          if (a4)
          {
            [v9 doubleValue];
            *a4 = v18;
          }

          if (a5)
          {
            v19 = v12;
            *a5 = v12;
          }

          v17 = 1;
          goto LABEL_24;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = ASDTBaseLogType();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v27 = @"SamplingRates";
    v28 = 2112;
    v29 = @"SamplingRate";
    v30 = 2112;
    v31 = v9;
    _os_log_error_impl(&dword_241659000, v16, OS_LOG_TYPE_ERROR, "%@ array must contain %@ value '%@'", buf, 0x20u);
  }

  v17 = 0;
LABEL_24:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)asdtRelatedDeviceUIDs
{
  v1 = [a1 asdtArrayOfStringsForKey:@"RelatedDeviceUIDs"];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB98] setWithArray:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)asdtExclavesSensorName
{
  v1 = [a1 asdtStringForKey:@"ExclavesSensorName"];
  if (!v1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sensors.mic"];
  }

  return v1;
}

- (uint64_t)asdtIsSettable
{
  v1 = [a1 asdtNumberForKey:@"IsSettable"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)asdtGetSelector:()ASDTConfig
{
  v5 = objc_opt_class();
  v6 = [a1 objectForKey:@"Selector"];
  v7 = [v5 asdtGetFourCC:a3 forObject:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtGetSelector:];
    }
  }

  return v7;
}

- (id)asdtPropertyAddress
{
  v5 = 0;
  if ([a1 asdtGetSelector:&v5])
  {
    v2 = objc_alloc(MEMORY[0x277CEFB68]);
    v3 = [v2 initWithSelector:v5 scope:objc_msgSend(a1 element:{"asdtScope"), objc_msgSend(a1, "asdtElement")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)asdtAddNonSecurePathEnable
{
  v1 = [a1 asdtNumberForKey:@"AddNonSecurePathEnable"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (BOOL)asdtControlClassID:()ASDTConfig
{
  v4 = [a1 asdtFourCCForKey:@"ClassID" withDefault:0];
  v5 = v4;
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtControlClassID:];
    }
  }

  return v5 != 0;
}

- (uint64_t)asdtSelectorControlItemValue:()ASDTConfig
{
  v5 = objc_opt_class();
  v6 = [a1 objectForKey:@"Value"];
  v7 = [v5 asdtGetFourCC:a3 forObject:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtSelectorControlItemValue:];
    }
  }

  return v7;
}

- (uint64_t)asdtSelectorControlItemSelected
{
  v1 = [a1 asdtNumberForKey:@"Selected"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)asdtPropertyCacheMode
{
  v1 = [a1 asdtStringForKey:@"CacheMode"];
  v2 = v1;
  if (v1)
  {
    if (![v1 caseInsensitiveCompare:@"Never"])
    {
      v4 = 0;
      goto LABEL_11;
    }

    if (![v2 caseInsensitiveCompare:@"Always"])
    {
      v4 = 2;
      goto LABEL_11;
    }

    if ([v2 caseInsensitiveCompare:@"Explicit"])
    {
      v3 = ASDTBaseLogType();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtPropertyCacheMode];
      }
    }
  }

  v4 = 1;
LABEL_11:

  return v4;
}

- (uint64_t)asdtPropertyDataSizeBytes
{
  v1 = [a1 asdtNumberForKey:@"DataSize"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)asdtPropertyIsPList
{
  if ([a1 asdtBoolForKey:@"IsPList"])
  {
    return 1886155636;
  }

  else
  {
    return 1918990199;
  }
}

- (uint64_t)asdtNumericType
{
  v1 = [a1 asdtStringForKey:@"NumericType"];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_24;
  }

  if (([v1 isEqualToString:@"float"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"double"])
    {
      v3 = 2;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int8_t"])
    {
      v3 = 3;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int16_t"])
    {
      v3 = 4;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int32_t"])
    {
      v3 = 5;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"int64_t"])
    {
      v3 = 6;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"uint8_t"])
    {
      v3 = 7;
      goto LABEL_25;
    }

    if ([v2 isEqualToString:@"uint16_t"])
    {
      v3 = 8;
      goto LABEL_25;
    }

    if (([v2 isEqualToString:@"uint32_t"] & 1) == 0)
    {
      if ([v2 isEqualToString:@"uint64_t"])
      {
        v3 = 10;
        goto LABEL_25;
      }

      v4 = ASDTBaseLogType();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtNumericType];
      }
    }

LABEL_24:
    v3 = 9;
    goto LABEL_25;
  }

  v3 = 1;
LABEL_25:

  return v3;
}

- (uint64_t)asdtNumericCount
{
  v1 = [a1 asdtNumberForKey:@"NumericCount"];
  v2 = [v1 unsignedIntValue];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (uint64_t)asdtNumericIsVectorWithCount:()ASDTConfig
{
  v4 = [a1 asdtNumberForKey:@"NumericIsVector"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = a3 > 1;
  }

  return v6;
}

- (uint64_t)asdtDirection:()ASDTConfig
{
  if (a3)
  {
    v4 = [a1 asdtStringForKey:@"Direction"];
    v5 = v4;
    if (v4)
    {
      if ([v4 caseInsensitiveCompare:@"input"])
      {
        if ([v5 caseInsensitiveCompare:@"output"])
        {
          v6 = ASDTBaseLogType();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtDirection:];
          }

LABEL_10:

          v7 = 0;
LABEL_14:

          return v7;
        }

        v8 = 1869968496;
      }

      else
      {
        v8 = 1768845428;
      }

      *a3 = v8;
      v7 = 1;
      goto LABEL_14;
    }

    v6 = ASDTBaseLogType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtDirection:];
    }

    goto LABEL_10;
  }

  return 0;
}

- (id)asdtFormats
{
  v1 = [a1 asdtArrayOfDictionariesForKey:@"Formats"];
  if (!v1)
  {
    v2 = ASDTBaseLogType();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtFormats];
    }
  }

  return v1;
}

- (id)asdtLatenciesForSamplingRates:()ASDTConfig
{
  v3 = [a1 asdtLatenciesForSamplingRates:a3 latencyUsKey:@"LatencyUs" latencyDictKey:@"Latencies"];

  return v3;
}

- (uint64_t)asdtStartingChannel
{
  v1 = [a1 asdtNumberForKey:@"StartingChannel"];
  v2 = [v1 unsignedIntValue];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (uint64_t)asdtIsolatedUseCaseID
{
  v1 = [a1 asdtNumberForKey:@"IsolatedUseCaseID"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

- (id)asdtFormatsWithSamplingRates:()ASDTConfig
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v5)
  {
    v6 = *v48;
    v7 = 0.0;
    v8 = INFINITY;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v47 + 1) + 8 * i) doubleValue];
        if (v10 < v8)
        {
          v8 = v10;
        }

        if (v10 > v7)
        {
          v7 = v10;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = INFINITY;
  }

  v41 = 0;
  v42 = xmmword_2416A4C20;
  v43 = 0;
  v44 = 0;
  v45 = v8;
  v46 = v7;
  v11 = [a1 asdtNumberForKey:@"AlignedHigh"];
  v36 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 16;
  }

  DWORD1(v42) |= v12;
  v13 = [a1 asdtNumberForKey:@"Channels"];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v15 = [v13 unsignedIntValue];
  if ((v15 - 33) <= 0xFFFFFFDF)
  {
    v16 = ASDTBaseLogType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
    }

LABEL_24:
    v15 = 2;
  }

  v17 = [a1 asdtStringForKey:@"DataFormat"];
  v18 = v17;
  if (!v17 || ![v17 caseInsensitiveCompare:@"lf32"])
  {
LABEL_33:
    v20 = 32;
    v21 = 1;
    goto LABEL_38;
  }

  if ([v18 caseInsensitiveCompare:@"li16"])
  {
    if ([v18 caseInsensitiveCompare:@"li24"])
    {
      if ([v18 caseInsensitiveCompare:@"li32"])
      {
        v19 = ASDTBaseLogType();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
        }

        goto LABEL_33;
      }

      v20 = 32;
    }

    else
    {
      v20 = 24;
    }
  }

  else
  {
    v20 = 16;
  }

  v21 = 4;
LABEL_38:
  DWORD1(v42) |= v21;
  v22 = [a1 asdtNumberForKey:@"BitsPerSample"];
  v23 = [v22 unsignedIntValue];

  if (v23 <= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v23 > 0x20)
  {
    v24 = v20;
  }

  if (v20 == v24)
  {
    DWORD1(v42) |= 8u;
  }

  HIDWORD(v43) = v15;
  LODWORD(v44) = v20;
  LODWORD(v43) = (v24 >> 3) * v15;
  DWORD2(v42) = v43;
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v4;
  v27 = [v26 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v27)
  {
    v28 = *v38;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v37 + 1) + 8 * j) doubleValue];
        v41 = v30;
        v31 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamRangedDescription:&v41];
        if (!v31)
        {
          v33 = ASDTBaseLogType();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [NSDictionary(ASDTConfig) asdtFormatsWithSamplingRates:];
          }

          v32 = 0;
          goto LABEL_57;
        }

        [v25 addObject:v31];
      }

      v27 = [v26 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v32 = [v25 copy];
LABEL_57:

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (uint64_t)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v5) = a5;
    v8 = kASDTConfigKeyDevicePMOrderPowerUp;
    if (!a4)
    {
      v8 = kASDTConfigKeyDevicePMOrderPowerDown;
    }

    v9 = *v8;
    v10 = [a1 asdtNumberForKey:v9];
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"PMOrder";

      v10 = [a1 asdtNumberForKey:v11];
    }

    v12 = [v10 unsignedIntValue];
    if (v10)
    {
      v13 = v12 >= 0x7D1;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if (v13)
    {
      v5 = v5;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = 1000;
      }

      *a3 = v15;
    }

    else
    {
      v16 = ASDTBaseLogType();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [a1 objectForKey:v11];
        [(NSDictionary(ASDTConfig) *)v11 asdtPMOrder:v17 forPowerUp:v20 allowDefault:v16];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)asdtPMActionWaiterTimeoutUs
{
  v1 = [a1 asdtNumberForKey:@"WaiterTimeoutUs"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (objc_class)asdtDeviceManager
{
  v1 = [a1 asdtStringForKey:@"DeviceManager"];
  v2 = v1;
  if (v1)
  {
    v3 = NSClassFromString(v1);
    if (v3)
    {
      if (([(objc_class *)v3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
      {
        v4 = v3;
        goto LABEL_12;
      }

      v5 = ASDTBaseLogType();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtDeviceManager];
      }
    }

    else
    {
      v5 = ASDTBaseLogType();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [NSDictionary(ASDTConfig) asdtDeviceManager];
      }
    }
  }

  else
  {
    v5 = ASDTBaseLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(ASDTConfig) asdtDeviceManager];
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (uint64_t)asdtManagerVerboseLogging
{
  v1 = [a1 asdtNumberForKey:@"VerboseLogging"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)asdtManagerInitializationWaitUs
{
  v1 = [a1 asdtNumberForKey:@"InitializationWaitUs"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntValue];
  }

  else
  {
    v3 = 100000;
  }

  return v3;
}

- (double)asdtManagerRunningLogPeriod
{
  v1 = [a1 asdtNumberForKey:@"RunningLogPeriodSec"];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 60.0;
  }

  return v4;
}

- (uint64_t)asdtManagerAudioObjectMaxCount
{
  v1 = [a1 asdtNumberForKey:@"AudioObjectMaxCount"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (void)asdtArrayForKey:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "%@ configuration value is not an array.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtArrayOfDictionariesForKey:()ASDTConfig .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_241659000, v0, v1, "Array %@ must contain dictionaries; found: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)asdtArrayOfNumbersForKey:()ASDTConfig .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_241659000, v0, v1, "Array '%@' must contain numbers; found: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)asdtArrayOfStringsForKey:()ASDTConfig .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_241659000, v0, v1, "Array '%@' must contain strings; found: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumberForKey:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "%@ configuration value is not a number.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtStringForKey:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "%@ configuration value is not a string.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtGetSelector:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "Property selector is required in object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtControlClassID:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "Control key %@ is required.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtSelectorControlItemValue:()ASDTConfig .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "Selector control key %@ is required.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtPropertyCacheMode
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_241659000, v0, v1, "Bad %@ value: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)asdtNumericType
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "Bad numeric type '%@'.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtDirection:()ASDTConfig .cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_241659000, v0, v1, "%@ property invalid value: %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)asdtDirection:()ASDTConfig .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "%@ property is missing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtFormatsWithSamplingRates:()ASDTConfig .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)asdtFormatsWithSamplingRates:()ASDTConfig .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "Invalid data format: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)asdtPMOrder:()ASDTConfig forPowerUp:allowDefault:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  *(buf + 11) = 1024;
  *(buf + 6) = 2000;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid %@ value: %@. Valid range: [0 - %u]", buf, 0x1Cu);
}

- (void)asdtDeviceManager
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_241659000, v0, v1, "DeviceManager class name '%@' is not supported.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end