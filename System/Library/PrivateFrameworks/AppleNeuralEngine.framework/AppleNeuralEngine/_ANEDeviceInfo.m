@interface _ANEDeviceInfo
+ (BOOL)hasANE;
+ (BOOL)isBoolBootArgSetTrue:(id)a3;
+ (BOOL)isBootArgPresent:(id)a3;
+ (BOOL)isInternalBuild;
+ (BOOL)isVirtualMachine;
+ (BOOL)precompiledModelChecksDisabled;
+ (id)aneArchitectureType;
+ (id)aneSubType;
+ (id)aneSubTypeProductVariant;
+ (id)aneSubTypeVariant;
+ (id)bootArgs;
+ (id)buildVersion;
+ (id)productName;
+ (int64_t)aneBoardType;
+ (unsigned)numANECores;
+ (unsigned)numANEs;
+ (void)aneSubType;
+ (void)numANECores;
+ (void)numANEs;
@end

@implementation _ANEDeviceInfo

+ (BOOL)hasANE
{
  v2 = +[_ANEVirtualClient sharedConnection];

  if (v2)
  {
    v3 = +[_ANEVirtualClient sharedConnection];
    +[_ANEDeviceInfo hasANE]::hasANE = [v3 hasANE];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    if (+[_ANEDeviceInfo hasANE]::onceTokenHasANE != -1)
    {
      +[_ANEDeviceInfo hasANE];
    }
  }

  else if (+[_ANEDeviceInfo hasANE]::onceTokenHasANE != -1)
  {
    +[_ANEDeviceInfo hasANE];
  }

  return +[_ANEDeviceInfo hasANE]::hasANE;
}

+ (BOOL)isVirtualMachine
{
  if (+[_ANEDeviceInfo isVirtualMachine]::onceToken != -1)
  {
    +[_ANEDeviceInfo isVirtualMachine];
  }

  return +[_ANEDeviceInfo isVirtualMachine]::isVirtualMachine;
}

+ (id)aneSubType
{
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __28___ANEDeviceInfo_aneSubType__block_invoke;
  v19[3] = &__block_descriptor_40_e8_v16__0q8l;
  v19[4] = a2;
  v3 = MEMORY[0x1B26F37D0](v19);
  v4 = [a1 aneBoardType];
  v5 = +[_ANELog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEDeviceInfo *)v4 aneSubType:v5];
  }

  v12 = +[_ANEVirtualClient sharedConnection];

  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28___ANEDeviceInfo_aneSubType__block_invoke_56;
    block[3] = &unk_1E79BA108;
    v17 = v3;
    v18 = v4;
    if (+[_ANEDeviceInfo aneSubType]::onceTokenSubType != -1)
    {
      dispatch_once(&+[_ANEDeviceInfo aneSubType]::onceTokenSubType, block);
    }
  }

  else
  {
    v3[2](v3, v4);
  }

  v13 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
  v14 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;

  return v13;
}

+ (int64_t)aneBoardType
{
  v2 = +[_ANEVirtualClient sharedConnection];

  if (v2)
  {
    v3 = +[_ANEVirtualClient sharedConnection];
    +[_ANEDeviceInfo aneBoardType]::boardType = [v3 aneBoardtype];
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      return 1;
    }

    if (+[_ANEDeviceInfo aneBoardType]::onceTokenBoardType != -1)
    {
      +[_ANEDeviceInfo aneBoardType];
    }
  }

  return +[_ANEDeviceInfo aneBoardType]::boardType;
}

+ (id)aneSubTypeVariant
{
  v2 = [a1 aneBoardType];
  v3 = +[_ANELog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEDeviceInfo *)v2 aneSubType:v3];
  }

  v10 = +[_ANEVirtualClient sharedConnection];

  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35___ANEDeviceInfo_aneSubTypeVariant__block_invoke_65;
    v14[3] = &unk_1E79BA108;
    v15 = &__block_literal_global_58;
    v16 = v2;
    if (+[_ANEDeviceInfo aneSubTypeVariant]::onceTokenSubVariantType != -1)
    {
      dispatch_once(&+[_ANEDeviceInfo aneSubTypeVariant]::onceTokenSubVariantType, v14);
    }
  }

  else
  {
    __35___ANEDeviceInfo_aneSubTypeVariant__block_invoke(v11, v2);
  }

  v12 = +[_ANEDeviceInfo aneSubTypeVariant]::aneSubTypeVariantStr;

  return v12;
}

+ (id)aneSubTypeProductVariant
{
  v2 = [a1 aneBoardType];
  v3 = +[_ANELog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEDeviceInfo *)v2 aneSubType:v3];
  }

  v10 = +[_ANEVirtualClient sharedConnection];

  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42___ANEDeviceInfo_aneSubTypeProductVariant__block_invoke_68;
    v14[3] = &unk_1E79BA108;
    v15 = &__block_literal_global_67;
    v16 = v2;
    if (+[_ANEDeviceInfo aneSubTypeProductVariant]::onceToken != -1)
    {
      dispatch_once(&+[_ANEDeviceInfo aneSubTypeProductVariant]::onceToken, v14);
    }

    v11 = v15;
  }

  else
  {
    v11 = +[_ANEDeviceInfo aneSubTypeProductVariant]::aneSubTypeProductVariantStr;
    +[_ANEDeviceInfo aneSubTypeProductVariant]::aneSubTypeProductVariantStr = &stru_1F224D6A0;
  }

  v12 = +[_ANEDeviceInfo aneSubTypeProductVariant]::aneSubTypeProductVariantStr;

  return v12;
}

+ (BOOL)isInternalBuild
{
  if (+[_ANEDeviceInfo isInternalBuild]::onceTokenIsInternalBuild != -1)
  {
    +[_ANEDeviceInfo isInternalBuild];
  }

  return +[_ANEDeviceInfo isInternalBuild]::isInternalBuild;
}

+ (id)aneArchitectureType
{
  v2 = +[_ANEVirtualClient sharedConnection];

  if (v2)
  {
    v3 = +[_ANEVirtualClient sharedConnection];
    v4 = [v3 aneArchitectureTypeStr];
    v5 = +[_ANEDeviceInfo aneArchitectureType]::aneArchitectureTypeStr;
    +[_ANEDeviceInfo aneArchitectureType]::aneArchitectureTypeStr = v4;
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (+[_ANEDeviceInfo aneArchitectureType]::onceTokenArchitectureType != -1)
    {
      +[_ANEDeviceInfo aneArchitectureType];
    }
  }

  v6 = +[_ANEDeviceInfo aneArchitectureType]::aneArchitectureTypeStr;
LABEL_8:

  return v6;
}

+ (id)buildVersion
{
  if (+[_ANEDeviceInfo buildVersion]::onceToken != -1)
  {
    +[_ANEDeviceInfo buildVersion];
  }

  v3 = +[_ANEDeviceInfo buildVersion]::buildVersionStr;

  return v3;
}

+ (id)productName
{
  if (+[_ANEDeviceInfo productName]::onceToken != -1)
  {
    +[_ANEDeviceInfo productName];
  }

  v3 = +[_ANEDeviceInfo productName]::productNameStr;

  return v3;
}

+ (id)bootArgs
{
  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
  v5 = 1023;
  if (sysctlbyname("kern.bootargs", v2, &v5, 0, 0))
  {
    v3 = &stru_1F224D6A0;
  }

  else
  {
    v2[1023] = 0;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v2];
  }

  free(v2);

  return v3;
}

+ (BOOL)isBootArgPresent:(id)a3
{
  v3 = a3;
  v4 = +[_ANEDeviceInfo bootArgs];
  v5 = [v4 rangeOfString:v3] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

+ (BOOL)isBoolBootArgSetTrue:(id)a3
{
  v3 = a3;
  if ([_ANEDeviceInfo isBootArgPresent:v3])
  {
    v4 = +[_ANEDeviceInfo bootArgs];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=0", v3];
    v6 = [v4 rangeOfString:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)precompiledModelChecksDisabled
{
  v3 = [a1 bootArgs];
  v4 = [v3 containsString:@"enforceModelSignatureChecks=0"];
  if (v4)
  {
    v5 = NSStringFromSelector(a2);
    NSLog(&cfstr_BootArgsHasAll.isa, v5, @"enforceModelSignatureChecks=0");
  }

  return v4;
}

+ (unsigned)numANEs
{
  v27 = *MEMORY[0x1E69E9840];
  if (!+[_ANEDeviceInfo hasANE])
  {
    v8 = NSStringFromSelector(a2);
    NSLog(&cfstr_AnedeviceinfoN_2.isa, v8);

    result = 0;
    goto LABEL_31;
  }

  valuePtr = 1;
  v3 = IOServiceMatching("ANEDriver");
  v4 = MEMORY[0x1E696CD60];
  if (v3 && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v3)) != 0)
  {
    v6 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceProperties", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v6);
  }

  else
  {
    CFProperty = 0;
  }

  v10 = IOServiceMatching("H11ANEIn");
  if (v10 && (v11 = IOServiceGetMatchingService(*v4, v10)) != 0)
  {
    v12 = v11;
    v13 = *MEMORY[0x1E695E480];
    v14 = IORegistryEntryCreateCFProperty(v11, @"DeviceProperties", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v12);
    if (CFProperty)
    {
      MutableCopy = CFProperty;
    }

    else
    {
      MutableCopy = v14;
    }

    if (CFProperty && v14)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, CFProperty);
      CFDictionaryApplyFunction(v14, getANEDeviceProperties(__CFString const*)::{lambda(__CFDictionary const*,__CFDictionary const*)#1}::operator() const(__CFDictionary const*,__CFDictionary const*)::{lambda(void const*,void const*,void *)#1}::__invoke, MutableCopy);
      CFRelease(CFProperty);
      CFRelease(v14);
    }

    if (MutableCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MutableCopy = CFProperty;
    if (CFProperty)
    {
LABEL_16:
      Value = CFDictionaryGetValue(MutableCopy, @"ANEDevicePropertyNumANEs");
      if (Value)
      {
        v17 = Value;
        v18 = CFGetTypeID(Value);
        if (v18 == CFNumberGetTypeID() && !CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr))
        {
          v19 = +[_ANELog framework];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            +[_ANEDeviceInfo numANEs];
          }
        }
      }

      if (!valuePtr)
      {
        v20 = +[_ANELog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEDeviceInfo numANEs];
        }

        valuePtr = 1;
      }

      CFRelease(MutableCopy);
      result = valuePtr;
      goto LABEL_31;
    }
  }

  v21 = +[_ANELog framework];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = NSStringFromSelector(a2);
    *buf = 138412290;
    v26 = v22;
    _os_log_impl(&dword_1AD246000, v21, OS_LOG_TYPE_INFO, "%@: [_ANEDeviceInfo numANEs] Properties not found, default to 1 ANE", buf, 0xCu);
  }

  result = 1;
LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unsigned)numANECores
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[_ANEDeviceInfo aneSubType];
  v4 = +[_ANEDeviceInfo numANEs];
  if ([v3 isEqual:@"h11"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"h12"))
  {
    v5 = 8;
  }

  else
  {
    if (([v3 isEqual:@"m9"] & 1) == 0)
    {
      if ([v3 isEqual:@"h13"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"h14") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"h15") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"h16"))
      {
        v5 = 16;
        goto LABEL_4;
      }

      if ([v3 isEqual:@"m11"])
      {
        v5 = 4;
        goto LABEL_4;
      }

      v8 = +[_ANELog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEDeviceInfo numANECores];
      }
    }

    v5 = 2;
  }

LABEL_4:

  v6 = *MEMORY[0x1E69E9840];
  return v5 * v4;
}

+ (void)aneSubType
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1AD246000, a2, a3, "anesubtype %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)numANEs
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@:  [_ANEDeviceInfo numANEs] Invalid numANEs value (0), default to 1 ANE", v5);
}

+ (void)numANECores
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: Unknown aneSubType", v5);
}

@end