@interface HKDeviceContext
- (BOOL)isEqual:(id)a3;
- (HKDeviceContext)initWithCoder:(id)a3;
- (HKDeviceContext)initWithType:(int64_t)a3 localDevice:(BOOL)a4 productTypeName:(id)a5 currentOSName:(id)a6 currentOSVersion:(id *)a7 modificationDate:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDeviceContext

- (HKDeviceContext)initWithType:(int64_t)a3 localDevice:(BOOL)a4 productTypeName:(id)a5 currentOSName:(id)a6 currentOSVersion:(id *)a7 modificationDate:(id)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = HKDeviceContext;
  v18 = [(HKDeviceContext *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    v18->_representsLocalDevice = a4;
    objc_storeStrong(&v18->_modificationDate, a8);
    objc_storeStrong(&v19->_productTypeName, a5);
    objc_storeStrong(&v19->_currentOSName, a6);
    v20 = *&a7->var0;
    v19->_currentOSVersion.patchVersion = a7->var2;
    *&v19->_currentOSVersion.majorVersion = v20;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = HKStringForDeviceType(self->_type);
  representsLocalDevice = self->_representsLocalDevice;
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  currentOSVersion = self->_currentOSVersion;
  v10 = HKNSOperatingSystemVersionString(&currentOSVersion);
  v11 = [v3 stringWithFormat:@"<%@:%p type=%@, representsLocalDevice=%d, productType=%@, currentOS=%@, currentOSVersion=%@, modificationDate=%@>", v5, self, v6, representsLocalDevice, productTypeName, currentOSName, v10, self->_modificationDate];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKDeviceContext allocWithZone:a3];
  representsLocalDevice = self->_representsLocalDevice;
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  type = self->_type;
  modificationDate = self->_modificationDate;
  currentOSVersion = self->_currentOSVersion;
  return [(HKDeviceContext *)v4 initWithType:type localDevice:representsLocalDevice productTypeName:productTypeName currentOSName:currentOSName currentOSVersion:&currentOSVersion modificationDate:modificationDate];
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(HKDeviceContext *)self type];
      if (v9 != [(HKDeviceContext *)v8 type]|| (representsLocalDevice = self->_representsLocalDevice, representsLocalDevice != [(HKDeviceContext *)v8 representsLocalDevice]))
      {
        v16 = 0;
LABEL_26:

        goto LABEL_27;
      }

      productTypeName = self->_productTypeName;
      v12 = [(HKDeviceContext *)v8 productTypeName];
      if (productTypeName != v12)
      {
        v13 = [(HKDeviceContext *)v8 productTypeName];
        if (!v13)
        {
          v16 = 0;
          goto LABEL_25;
        }

        v3 = v13;
        v14 = self->_productTypeName;
        v15 = [(HKDeviceContext *)v8 productTypeName];
        if (![(NSString *)v14 isEqualToString:v15])
        {
          v16 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v24 = v15;
      }

      currentOSName = self->_currentOSName;
      v18 = [(HKDeviceContext *)v8 currentOSName];
      if (currentOSName != v18)
      {
        v19 = [(HKDeviceContext *)v8 currentOSName];
        if (!v19)
        {

          v16 = 0;
          goto LABEL_29;
        }

        v4 = v19;
        v20 = self->_currentOSName;
        v21 = [(HKDeviceContext *)v8 currentOSName];
        v22 = v20;
        v5 = v21;
        if (![(NSString *)v22 isEqualToString:v21])
        {
          v16 = 0;
          goto LABEL_23;
        }
      }

      if (v8)
      {
        [(HKDeviceContext *)v8 currentOSVersion];
      }

      else
      {
        memset(v27, 0, sizeof(v27));
      }

      v25 = *&self->_currentOSVersion.majorVersion;
      patchVersion = self->_currentOSVersion.patchVersion;
      v16 = HKNSOperatingSystemVersionsEqual(&v25, v27);
      if (currentOSName != v18)
      {
LABEL_23:
        v15 = v24;

        if (productTypeName != v12)
        {
          goto LABEL_24;
        }

LABEL_25:

        goto LABEL_26;
      }

LABEL_29:
      v15 = v24;
      if (productTypeName == v12)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v16 = 0;
  }

LABEL_27:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeBool:self->_representsLocalDevice forKey:@"LocalDevice"];
  [v5 encodeObject:self->_productTypeName forKey:@"ProductTypeName"];
  [v5 encodeObject:self->_currentOSName forKey:@"CurrentOSName"];
  currentOSVersion = self->_currentOSVersion;
  v6 = HKNSOperatingSystemVersionString(&currentOSVersion);
  [v5 encodeObject:v6 forKey:@"CurrentOSVersion"];

  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

- (HKDeviceContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"Type"];
  v6 = [v4 decodeBoolForKey:@"LocalDevice"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSName"];
  v15 = 0uLL;
  v16 = 0;
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSVersion"];
  HKNSOperatingSystemVersionFromString(v9, &v15);

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  v11 = 0;
  if (v7 && v8 && v10)
  {
    v13 = v15;
    v14 = v16;
    self = [(HKDeviceContext *)self initWithType:v5 localDevice:v6 productTypeName:v7 currentOSName:v8 currentOSVersion:&v13 modificationDate:v10];
    v11 = self;
  }

  return v11;
}

@end