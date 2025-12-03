@interface GestaltHlpr
+ (id)getSharedInstance;
- (BOOL)getBoolAnswer:(__CFString *)answer;
- (id)copyAnswer:(__CFString *)answer;
- (id)copyDeviceIDInfo:(id *)info;
- (id)copyDeviceInfo:(id *)info;
- (id)copyRegulatoryImagesInfo:(id *)info;
- (void)addAGestaltKey:(__CFString *)key toDictionary:(id)dictionary required:(BOOL)required errors:(id)errors;
- (void)updateRecertInfo:(id)info errors:(id *)errors;
@end

@implementation GestaltHlpr

+ (id)getSharedInstance
{
  if (getSharedInstance_once != -1)
  {
    +[GestaltHlpr getSharedInstance];
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

void __32__GestaltHlpr_getSharedInstance__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = getSharedInstance_sharedInstance;
  getSharedInstance_sharedInstance = v1;
}

- (id)copyAnswer:(__CFString *)answer
{
  if (!answer)
  {
    return 0;
  }

  v4 = MGCopyAnswer();
  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_allows_internal_security_policies() && is_virtual_machine())
  {
    if (([(__CFString *)answer isEqualToString:@"ProductType"]& 1) != 0)
    {
      v5 = @"iPod5,1";
LABEL_9:

      return v5;
    }

    if ([(__CFString *)answer isEqualToString:@"DeviceClass"])
    {
      v5 = @"iPod";
      goto LABEL_9;
    }
  }

  return v4;
}

- (BOOL)getBoolAnswer:(__CFString *)answer
{
  v3 = [(GestaltHlpr *)self copyAnswer:answer];
  v4 = isNSNumber(v3);

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
}

- (void)addAGestaltKey:(__CFString *)key toDictionary:(id)dictionary required:(BOOL)required errors:(id)errors
{
  requiredCopy = required;
  dictionaryCopy = dictionary;
  errorsCopy = errors;
  v12 = [(GestaltHlpr *)self copyAnswer:key];
  v13 = v12;
  if (v12 && ((v14 = isNSString(v12)) == 0 || (v15 = v14, v16 = [v13 length], v15, v16)))
  {
    [dictionaryCopy setObject:v13 forKeyedSubscript:key];
  }

  else if (requiredCopy)
  {
    v17 = [NSString stringWithFormat:@"Failed to query required gestalt key: %@", key];
    [errorsCopy addObject:v17];
  }
}

- (id)copyDeviceIDInfo:(id *)info
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  [(GestaltHlpr *)self addAGestaltKey:@"SerialNumber" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (info && v7)
  {
    v8 = v5;
    *info = v5;
  }

  return v6;
}

- (id)copyDeviceInfo:(id *)info
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  [(GestaltHlpr *)self addAGestaltKey:@"DeviceClass" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"ProductType" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"BuildVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"ModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"ProductVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"RegionCode" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"RegionInfo" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"RegulatoryModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"ReleaseType" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"UniqueChipID" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"SigningFuse" toDictionary:v6 required:0 errors:v5];
  v7 = [(GestaltHlpr *)self copyAnswer:@"ProductName"];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"OSType"];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"Failed to query required gestalt key: %@", @"ProductName"];
    [v5 addObject:v8];
  }

  v9 = [v5 count];
  if (info && v9)
  {
    v10 = v5;
    *info = v5;
  }

  return v6;
}

- (id)copyRegulatoryImagesInfo:(id *)info
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  [(GestaltHlpr *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (info && v7)
  {
    v8 = v5;
    *info = v5;
  }

  return v6;
}

- (void)updateRecertInfo:(id)info errors:(id *)errors
{
  infoCopy = info;
  v7 = objc_alloc_init(NSMutableArray);
  if (infoCopy)
  {
    [(GestaltHlpr *)self addAGestaltKey:@"SerialNumber" toDictionary:infoCopy required:0 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"DeviceClass" toDictionary:infoCopy required:1 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"ProductType" toDictionary:infoCopy required:1 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"BuildVersion" toDictionary:infoCopy required:0 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:infoCopy required:0 errors:v7];
    if ([(GestaltHlpr *)self getBoolAnswer:@"HasBaseband"])
    {
      [(GestaltHlpr *)self addAGestaltKey:@"InternationalMobileEquipmentIdentity" toDictionary:infoCopy required:0 errors:v7];
      v8 = [(GestaltHlpr *)self copyAnswer:@"xRyzf9zFE/ycr/wJPweZvQ"];
      if (v8)
      {
        [infoCopy setObject:v8 forKeyedSubscript:@"InternationalMobileEquipmentIdentity2"];
      }

      [(GestaltHlpr *)self addAGestaltKey:@"MobileEquipmentIdentifier" toDictionary:infoCopy required:0 errors:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 count];
    if (errors && v9)
    {
      v10 = v7;
      *errors = v7;
    }
  }

  else
  {
    v8 = 0;
  }
}

@end