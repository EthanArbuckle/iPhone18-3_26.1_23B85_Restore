@interface GestaltHlpr
+ (id)getSharedInstance;
- (BOOL)getBoolAnswer:(__CFString *)a3;
- (id)copyAnswer:(__CFString *)a3;
- (id)copyDeviceIDInfo:(id *)a3;
- (id)copyDeviceInfo:(id *)a3;
- (id)copyRegulatoryImagesInfo:(id *)a3;
- (void)addAGestaltKey:(__CFString *)a3 toDictionary:(id)a4 required:(BOOL)a5 errors:(id)a6;
- (void)updateRecertInfo:(id)a3 errors:(id *)a4;
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

- (id)copyAnswer:(__CFString *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MGCopyAnswer();
  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_allows_internal_security_policies() && is_virtual_machine())
  {
    if (([(__CFString *)a3 isEqualToString:@"ProductType"]& 1) != 0)
    {
      v5 = @"iPod5,1";
LABEL_9:

      return v5;
    }

    if ([(__CFString *)a3 isEqualToString:@"DeviceClass"])
    {
      v5 = @"iPod";
      goto LABEL_9;
    }
  }

  return v4;
}

- (BOOL)getBoolAnswer:(__CFString *)a3
{
  v3 = [(GestaltHlpr *)self copyAnswer:a3];
  v4 = isNSNumber(v3);

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
}

- (void)addAGestaltKey:(__CFString *)a3 toDictionary:(id)a4 required:(BOOL)a5 errors:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = [(GestaltHlpr *)self copyAnswer:a3];
  v13 = v12;
  if (v12 && ((v14 = isNSString(v12)) == 0 || (v15 = v14, v16 = [v13 length], v15, v16)))
  {
    [v10 setObject:v13 forKeyedSubscript:a3];
  }

  else if (v7)
  {
    v17 = [NSString stringWithFormat:@"Failed to query required gestalt key: %@", a3];
    [v11 addObject:v17];
  }
}

- (id)copyDeviceIDInfo:(id *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  [(GestaltHlpr *)self addAGestaltKey:@"SerialNumber" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlpr *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (a3 && v7)
  {
    v8 = v5;
    *a3 = v5;
  }

  return v6;
}

- (id)copyDeviceInfo:(id *)a3
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
  if (a3 && v9)
  {
    v10 = v5;
    *a3 = v5;
  }

  return v6;
}

- (id)copyRegulatoryImagesInfo:(id *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  [(GestaltHlpr *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (a3 && v7)
  {
    v8 = v5;
    *a3 = v5;
  }

  return v6;
}

- (void)updateRecertInfo:(id)a3 errors:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  if (v6)
  {
    [(GestaltHlpr *)self addAGestaltKey:@"SerialNumber" toDictionary:v6 required:0 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"DeviceClass" toDictionary:v6 required:1 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"ProductType" toDictionary:v6 required:1 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"BuildVersion" toDictionary:v6 required:0 errors:v7];
    [(GestaltHlpr *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v6 required:0 errors:v7];
    if ([(GestaltHlpr *)self getBoolAnswer:@"HasBaseband"])
    {
      [(GestaltHlpr *)self addAGestaltKey:@"InternationalMobileEquipmentIdentity" toDictionary:v6 required:0 errors:v7];
      v8 = [(GestaltHlpr *)self copyAnswer:@"xRyzf9zFE/ycr/wJPweZvQ"];
      if (v8)
      {
        [v6 setObject:v8 forKeyedSubscript:@"InternationalMobileEquipmentIdentity2"];
      }

      [(GestaltHlpr *)self addAGestaltKey:@"MobileEquipmentIdentifier" toDictionary:v6 required:0 errors:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 count];
    if (a4 && v9)
    {
      v10 = v7;
      *a4 = v7;
    }
  }

  else
  {
    v8 = 0;
  }
}

@end