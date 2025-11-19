@interface ANEDeviceInfo
@end

@implementation ANEDeviceInfo

void __28___ANEDeviceInfo_aneSubType__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 <= 159)
  {
    if (a2 <= 63)
    {
      if (a2 <= 3)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_46;
          }

          v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
          v4 = @"m9";
          goto LABEL_43;
        }
      }

      else if (a2 != 4)
      {
        if (a2 == 8)
        {
          v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
          v4 = @"h12";
          goto LABEL_43;
        }

        if (a2 != 32)
        {
          goto LABEL_46;
        }

        goto LABEL_38;
      }

      v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
      v4 = @"h11";
      goto LABEL_43;
    }

    if (a2 > 111)
    {
      if (a2 != 112 && a2 != 128)
      {
        if (a2 != 144)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }

LABEL_32:
      v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
      v4 = @"h14";
      goto LABEL_43;
    }

    if (a2 != 64 && a2 != 96)
    {
LABEL_46:
      v6 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
      +[_ANEDeviceInfo aneSubType]::aneSubtypeStr = @"h15";

      v7 = +[_ANELog framework];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 32));
        objc_claimAutoreleasedReturnValue();
        __28___ANEDeviceInfo_aneSubType__block_invoke_cold_1();
      }

      v8 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_38:
    v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
    v4 = @"h13";
    goto LABEL_43;
  }

  if (a2 <= 239)
  {
    if (a2 > 191)
    {
      if (a2 != 192)
      {
        if (a2 == 208)
        {
LABEL_28:
          v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
          v4 = @"h16";
          goto LABEL_43;
        }

        if (a2 != 224)
        {
          goto LABEL_46;
        }
      }

LABEL_31:
      v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
      v4 = @"h15";
      goto LABEL_43;
    }

    if (a2 != 160)
    {
      if (a2 != 176)
      {
        goto LABEL_46;
      }

      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (a2 <= 511)
  {
    if (a2 == 240)
    {
      v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
      v4 = @"m11";
      goto LABEL_43;
    }

    if (a2 != 256 && a2 != 272)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (a2 == 512 || a2 == 528)
  {
    v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
    v4 = @"h17";
  }

  else
  {
    if (a2 != 768)
    {
      goto LABEL_46;
    }

    v3 = +[_ANEDeviceInfo aneSubType]::aneSubtypeStr;
    v4 = @"h18";
  }

LABEL_43:
  +[_ANEDeviceInfo aneSubType]::aneSubtypeStr = v4;
  v5 = *MEMORY[0x1E69E9840];
}

void __35___ANEDeviceInfo_aneSubTypeVariant__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = @"g";
  if (a2 > 159)
  {
    if (((a2 - 160) > 0x20 || ((1 << (a2 + 96)) & 0x100010001) == 0) && ((a2 - 224) > 0x30 || ((1 << (a2 + 32)) & 0x1000100000001) == 0) && a2 != 528)
    {
      goto LABEL_10;
    }
  }

  else if (a2 != 64 && a2 != 96 && a2 != 128)
  {
LABEL_10:
    v2 = &stru_1F224D6A0;
  }

  v3 = +[_ANEDeviceInfo aneSubTypeVariant]::aneSubTypeVariantStr;
  +[_ANEDeviceInfo aneSubTypeVariant]::aneSubTypeVariantStr = v2;
}

uint64_t __34___ANEDeviceInfo_isVirtualMachine__block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    +[_ANEDeviceInfo isVirtualMachine]::isVirtualMachine = v2 != 0;
  }

  return result;
}

uint64_t __24___ANEDeviceInfo_hasANE__block_invoke_2()
{
  result = MGGetBoolAnswer();
  +[_ANEDeviceInfo hasANE]::hasANE = result;
  return result;
}

uint64_t __30___ANEDeviceInfo_aneBoardType__block_invoke()
{
  result = MGGetSInt64Answer();
  +[_ANEDeviceInfo aneBoardType]::boardType = result;
  return result;
}

uint64_t __33___ANEDeviceInfo_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[_ANEDeviceInfo isInternalBuild]::isInternalBuild = result;
  return result;
}

void __37___ANEDeviceInfo_aneArchitectureType__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v5 = +[_ANEDeviceInfo aneSubType];
  v1 = +[_ANEDeviceInfo aneSubTypeVariant];
  v2 = +[_ANEDeviceInfo aneSubTypeProductVariant];
  v3 = [v0 stringWithFormat:@"%@%@%@", v5, v1, v2];
  v4 = +[_ANEDeviceInfo aneArchitectureType]::aneArchitectureTypeStr;
  +[_ANEDeviceInfo aneArchitectureType]::aneArchitectureTypeStr = v3;
}

void __42___ANEDeviceInfo_aneSubTypeProductVariant__block_invoke()
{
  v0 = +[_ANEDeviceInfo aneSubTypeProductVariant]::aneSubTypeProductVariantStr;
  +[_ANEDeviceInfo aneSubTypeProductVariant]::aneSubTypeProductVariantStr = &stru_1F224D6A0;
}

uint64_t __30___ANEDeviceInfo_buildVersion__block_invoke()
{
  +[_ANEDeviceInfo buildVersion]::buildVersionStr = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __29___ANEDeviceInfo_productName__block_invoke()
{
  +[_ANEDeviceInfo productName]::productNameStr = MGGetStringAnswer();

  return MEMORY[0x1EEE66BB8]();
}

void __28___ANEDeviceInfo_aneSubType__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7781e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  *(v3 + 22) = 2112;
  *(v3 + 24) = v5;
  _os_log_error_impl(&dword_1AD246000, v7, OS_LOG_TYPE_ERROR, "%@: Unknown kMGQAppleNeuralEngineSubtype=0x%llx using (%@)", v6, 0x20u);
}

@end