@interface NIPlatformInfo
+ (BOOL)isInternalBuild;
+ (BOOL)supportsARKit;
+ (BOOL)supportsAoA;
+ (BOOL)supportsNBAMMS;
+ (BOOL)supportsSyntheticAperture;
+ (BOOL)supportsUWB;
@end

@implementation NIPlatformInfo

+ (BOOL)supportsUWB
{
  if (+[NIPlatformInfo supportsUWB]::onceToken != -1)
  {
    +[NIPlatformInfo supportsUWB];
  }

  return +[NIPlatformInfo supportsUWB]::supportsUWB;
}

+ (BOOL)isInternalBuild
{
  if (+[NIPlatformInfo isInternalBuild]::onceToken != -1)
  {
    +[NIPlatformInfo isInternalBuild];
  }

  return +[NIPlatformInfo isInternalBuild]::isInternalBuild;
}

uint64_t __33__NIPlatformInfo_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[NIPlatformInfo isInternalBuild]::isInternalBuild = result;
  return result;
}

uint64_t __29__NIPlatformInfo_supportsUWB__block_invoke()
{
  result = MGGetBoolAnswer();
  +[NIPlatformInfo supportsUWB]::supportsUWB = result;
  return result;
}

+ (BOOL)supportsAoA
{
  if (+[NIPlatformInfo supportsAoA]::onceToken != -1)
  {
    +[NIPlatformInfo supportsAoA];
  }

  return +[NIPlatformInfo supportsAoA]::supportsAoA;
}

uint64_t __29__NIPlatformInfo_supportsAoA__block_invoke()
{
  result = MGGetBoolAnswer();
  if (!result)
  {
    goto LABEL_17;
  }

  v1 = 1;
  result = MGGetProductType();
  if (result <= 2309863437)
  {
    if (result <= 1169082143)
    {
      if (result == 689804742)
      {
        goto LABEL_18;
      }

      v2 = 1060988941;
    }

    else
    {
      if (result == 1169082144 || result == 1371389549)
      {
        goto LABEL_18;
      }

      v2 = 2080700391;
    }
  }

  else if (result > 3585085678)
  {
    if (result == 3585085679 || result == 3885279870)
    {
      goto LABEL_18;
    }

    v2 = 4201643249;
  }

  else
  {
    if (result == 2309863438 || result == 2722529672)
    {
      goto LABEL_18;
    }

    v2 = 3001488778;
  }

  if (result != v2)
  {
LABEL_17:
    v1 = 0;
  }

LABEL_18:
  +[NIPlatformInfo supportsAoA]::supportsAoA = v1;
  return result;
}

+ (BOOL)supportsSyntheticAperture
{
  if (+[NIPlatformInfo supportsSyntheticAperture]::onceToken != -1)
  {
    +[NIPlatformInfo supportsSyntheticAperture];
  }

  return +[NIPlatformInfo supportsSyntheticAperture]::supportsSyntheticAperture;
}

uint64_t __43__NIPlatformInfo_supportsSyntheticAperture__block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = MGGetSInt32Answer();
    v1 = result == 1;
  }

  else
  {
    v1 = 0;
  }

  +[NIPlatformInfo supportsSyntheticAperture]::supportsSyntheticAperture = v1;
  return result;
}

+ (BOOL)supportsARKit
{
  if (+[NIPlatformInfo supportsARKit]::onceToken != -1)
  {
    +[NIPlatformInfo supportsARKit];
  }

  return +[NIPlatformInfo supportsARKit]::supportsARKit;
}

uint64_t __31__NIPlatformInfo_supportsARKit__block_invoke()
{
  result = MGGetBoolAnswer();
  +[NIPlatformInfo supportsARKit]::supportsARKit = result;
  return result;
}

+ (BOOL)supportsNBAMMS
{
  if (+[NIPlatformInfo supportsNBAMMS]::onceToken != -1)
  {
    +[NIPlatformInfo supportsNBAMMS];
  }

  return +[NIPlatformInfo supportsNBAMMS]::supportsNBAMMS;
}

uint64_t __32__NIPlatformInfo_supportsNBAMMS__block_invoke()
{
  result = MGGetBoolAnswer();
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = 1;
  result = MGGetProductType();
  if (result <= 1872992316)
  {
    if (result > 851437780)
    {
      if (result == 851437781 || result == 877582975)
      {
        goto LABEL_21;
      }

      v2 = 1781728947;
    }

    else
    {
      if (result == 133314240 || result == 330877086)
      {
        goto LABEL_21;
      }

      v2 = 574536383;
    }
  }

  else if (result <= 2941181570)
  {
    if (result == 1872992317 || result == 2793418701)
    {
      goto LABEL_21;
    }

    v2 = 2795618603;
  }

  else if (result > 3591055298)
  {
    if (result == 3591055299)
    {
      goto LABEL_21;
    }

    v2 = 3825599860;
  }

  else
  {
    if (result == 2941181571)
    {
      goto LABEL_21;
    }

    v2 = 3048527336;
  }

  if (result != v2)
  {
LABEL_20:
    v1 = 0;
  }

LABEL_21:
  +[NIPlatformInfo supportsNBAMMS]::supportsNBAMMS = v1;
  return result;
}

@end