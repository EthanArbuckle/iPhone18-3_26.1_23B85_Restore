@interface BSPlatform
+ (id)sharedInstance;
- (BOOL)hasGasGauge;
- (BOOL)hasOrbCapability;
- (BOOL)isCarrierInstall;
- (BOOL)isDeveloperInstall;
- (BOOL)isMultiCore;
- (NSString)localizedProductName;
- (NSString)operatingSystemName;
- (NSString)productBuildVersion;
- (NSString)productClass;
- (NSString)productHardwareModel;
- (NSString)productHardwareModelName;
- (NSString)productType;
- (NSString)productVersion;
- (NSString)uniqueDeviceIdentifier;
- (int)deviceClass;
- (int64_t)homeButtonType;
@end

@implementation BSPlatform

+ (id)sharedInstance
{
  if (qword_1ED44FC88 != -1)
  {
    dispatch_once(&qword_1ED44FC88, &__block_literal_global_5);
  }

  v3 = qword_1ED44FC80;

  return v3;
}

- (int)deviceClass
{
  if (qword_1ED44FCF0 != -1)
  {
    dispatch_once(&qword_1ED44FCF0, &__block_literal_global_30);
  }

  return dword_1ED44FC7C;
}

- (int64_t)homeButtonType
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__BSPlatform_homeButtonType__block_invoke;
  block[3] = &unk_1E72CADE8;
  block[4] = self;
  if (qword_1ED44FD00 != -1)
  {
    dispatch_once(&qword_1ED44FD00, block);
  }

  return qword_1ED44FCF8;
}

- (BOOL)hasGasGauge
{
  if (qword_1ED44FD48 != -1)
  {
    dispatch_once(&qword_1ED44FD48, &__block_literal_global_74);
  }

  return byte_1ED44FC7A;
}

void __28__BSPlatform_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BSPlatform);
  v1 = qword_1ED44FC80;
  qword_1ED44FC80 = v0;
}

void __25__BSPlatform_deviceClass__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if ((v1 - 1) > 5)
  {
    v2 = -1;
  }

  else
  {
    v2 = dword_18FFA2E88[v1 - 1];
  }

  dword_1ED44FC7C = v2;
}

void __28__BSPlatform_homeButtonType__block_invoke(uint64_t a1)
{
  v2 = MGGetSInt32Answer();
  v3 = 2 * (v2 == 2);
  if (v2 == 1)
  {
    v3 = 1;
  }

  qword_1ED44FCF8 = v3;
  if (*(a1 + 32))
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      v6 = CFDictionaryGetValue(v4, @"ArtworkDeviceSubType");
      v7 = v6;
      if (v6)
      {
        v8 = [v6 intValue] == 2436;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v5);

      if (v8)
      {
        qword_1ED44FCF8 = 2;
      }
    }
  }
}

- (NSString)productVersion
{
  if (qword_1ED44FC98 != -1)
  {
    dispatch_once(&qword_1ED44FC98, &__block_literal_global_2);
  }

  v2 = [qword_1ED44FC90 copy];

  return v2;
}

void __28__BSPlatform_productVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FC90;
  qword_1ED44FC90 = v0;
}

- (NSString)productBuildVersion
{
  if (qword_1ED44FCA8 != -1)
  {
    dispatch_once(&qword_1ED44FCA8, &__block_literal_global_5);
  }

  v2 = [qword_1ED44FCA0 copy];

  return v2;
}

void __33__BSPlatform_productBuildVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FCA0;
  qword_1ED44FCA0 = v0;
}

- (NSString)productType
{
  if (qword_1ED44FCB8 != -1)
  {
    dispatch_once(&qword_1ED44FCB8, &__block_literal_global_10);
  }

  v2 = [qword_1ED44FCB0 copy];

  return v2;
}

void __25__BSPlatform_productType__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FCB0;
  qword_1ED44FCB0 = v0;
}

- (NSString)productHardwareModel
{
  if (qword_1ED44FCC8 != -1)
  {
    dispatch_once(&qword_1ED44FCC8, &__block_literal_global_15);
  }

  v2 = [qword_1ED44FCC0 copy];

  return v2;
}

void __34__BSPlatform_productHardwareModel__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FCC0;
  qword_1ED44FCC0 = v0;
}

- (NSString)productHardwareModelName
{
  if (qword_1ED44FCD8 != -1)
  {
    dispatch_once(&qword_1ED44FCD8, &__block_literal_global_20);
  }

  v2 = [qword_1ED44FCD0 copy];

  return v2;
}

void __38__BSPlatform_productHardwareModelName__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FCD0;
  qword_1ED44FCD0 = v0;
}

- (NSString)productClass
{
  if (qword_1ED44FCE8 != -1)
  {
    dispatch_once(&qword_1ED44FCE8, &__block_literal_global_25);
  }

  v2 = [qword_1ED44FCE0 copy];

  return v2;
}

void __26__BSPlatform_productClass__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FCE0;
  qword_1ED44FCE0 = v0;
}

- (NSString)localizedProductName
{
  if (qword_1ED44FD10 != -1)
  {
    dispatch_once(&qword_1ED44FD10, &__block_literal_global_44);
  }

  v2 = [qword_1ED44FD08 copy];

  return v2;
}

void __34__BSPlatform_localizedProductName__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FD08;
  qword_1ED44FD08 = v0;
}

- (NSString)operatingSystemName
{
  if (qword_1ED44FD20 != -1)
  {
    dispatch_once(&qword_1ED44FD20, &__block_literal_global_49);
  }

  v2 = [qword_1ED44FD18 copy];

  return v2;
}

void __33__BSPlatform_operatingSystemName__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FD18;
  qword_1ED44FD18 = v0;
}

- (NSString)uniqueDeviceIdentifier
{
  if (qword_1ED44FD30 != -1)
  {
    dispatch_once(&qword_1ED44FD30, &__block_literal_global_54);
  }

  v2 = [qword_1ED44FD28 copy];

  return v2;
}

void __36__BSPlatform_uniqueDeviceIdentifier__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = qword_1ED44FD28;
  qword_1ED44FD28 = v0;
}

- (BOOL)isDeveloperInstall
{
  if (qword_1ED44FD38 != -1)
  {
    dispatch_once(&qword_1ED44FD38, &__block_literal_global_60);
  }

  return _MergedGlobals_6;
}

void __32__BSPlatform_isDeveloperInstall__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_6 = CFEqual(v0, @"Beta") != 0;

    CFRelease(v1);
  }
}

- (BOOL)isCarrierInstall
{
  if (qword_1ED44FD40 != -1)
  {
    dispatch_once(&qword_1ED44FD40, &__block_literal_global_68);
  }

  return byte_1ED44FC79;
}

void __30__BSPlatform_isCarrierInstall__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    byte_1ED44FC79 = CFEqual(v0, @"Carrier") != 0;

    CFRelease(v1);
  }
}

- (BOOL)isMultiCore
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processorCount] > 1;

  return v3;
}

uint64_t __25__BSPlatform_hasGasGauge__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED44FC7A = result;
  return result;
}

- (BOOL)hasOrbCapability
{
  if (qword_1ED44FD50 != -1)
  {
    dispatch_once(&qword_1ED44FD50, &__block_literal_global_79);
  }

  return byte_1ED44FC7B;
}

uint64_t __30__BSPlatform_hasOrbCapability__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED44FC7B = result;
  return result;
}

@end