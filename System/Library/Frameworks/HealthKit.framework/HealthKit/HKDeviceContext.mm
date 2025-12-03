@interface HKDeviceContext
- (BOOL)isEqual:(id)equal;
- (HKDeviceContext)initWithCoder:(id)coder;
- (HKDeviceContext)initWithType:(int64_t)type localDevice:(BOOL)device productTypeName:(id)name currentOSName:(id)sName currentOSVersion:(id *)version modificationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDeviceContext

- (HKDeviceContext)initWithType:(int64_t)type localDevice:(BOOL)device productTypeName:(id)name currentOSName:(id)sName currentOSVersion:(id *)version modificationDate:(id)date
{
  nameCopy = name;
  sNameCopy = sName;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = HKDeviceContext;
  v18 = [(HKDeviceContext *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v18->_representsLocalDevice = device;
    objc_storeStrong(&v18->_modificationDate, date);
    objc_storeStrong(&v19->_productTypeName, name);
    objc_storeStrong(&v19->_currentOSName, sName);
    v20 = *&version->var0;
    v19->_currentOSVersion.patchVersion = version->var2;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKDeviceContext allocWithZone:zone];
  representsLocalDevice = self->_representsLocalDevice;
  currentOSName = self->_currentOSName;
  productTypeName = self->_productTypeName;
  type = self->_type;
  modificationDate = self->_modificationDate;
  currentOSVersion = self->_currentOSVersion;
  return [(HKDeviceContext *)v4 initWithType:type localDevice:representsLocalDevice productTypeName:productTypeName currentOSName:currentOSName currentOSVersion:&currentOSVersion modificationDate:modificationDate];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      type = [(HKDeviceContext *)self type];
      if (type != [(HKDeviceContext *)v8 type]|| (representsLocalDevice = self->_representsLocalDevice, representsLocalDevice != [(HKDeviceContext *)v8 representsLocalDevice]))
      {
        v16 = 0;
LABEL_26:

        goto LABEL_27;
      }

      productTypeName = self->_productTypeName;
      productTypeName = [(HKDeviceContext *)v8 productTypeName];
      if (productTypeName != productTypeName)
      {
        productTypeName2 = [(HKDeviceContext *)v8 productTypeName];
        if (!productTypeName2)
        {
          v16 = 0;
          goto LABEL_25;
        }

        v3 = productTypeName2;
        v14 = self->_productTypeName;
        productTypeName3 = [(HKDeviceContext *)v8 productTypeName];
        if (![(NSString *)v14 isEqualToString:productTypeName3])
        {
          v16 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v24 = productTypeName3;
      }

      currentOSName = self->_currentOSName;
      currentOSName = [(HKDeviceContext *)v8 currentOSName];
      if (currentOSName != currentOSName)
      {
        currentOSName2 = [(HKDeviceContext *)v8 currentOSName];
        if (!currentOSName2)
        {

          v16 = 0;
          goto LABEL_29;
        }

        v4 = currentOSName2;
        v20 = self->_currentOSName;
        currentOSName3 = [(HKDeviceContext *)v8 currentOSName];
        v22 = v20;
        v5 = currentOSName3;
        if (![(NSString *)v22 isEqualToString:currentOSName3])
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
      if (currentOSName != currentOSName)
      {
LABEL_23:
        productTypeName3 = v24;

        if (productTypeName != productTypeName)
        {
          goto LABEL_24;
        }

LABEL_25:

        goto LABEL_26;
      }

LABEL_29:
      productTypeName3 = v24;
      if (productTypeName == productTypeName)
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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeBool:self->_representsLocalDevice forKey:@"LocalDevice"];
  [coderCopy encodeObject:self->_productTypeName forKey:@"ProductTypeName"];
  [coderCopy encodeObject:self->_currentOSName forKey:@"CurrentOSName"];
  currentOSVersion = self->_currentOSVersion;
  v6 = HKNSOperatingSystemVersionString(&currentOSVersion);
  [coderCopy encodeObject:v6 forKey:@"CurrentOSVersion"];

  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

- (HKDeviceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"Type"];
  v6 = [coderCopy decodeBoolForKey:@"LocalDevice"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSName"];
  v15 = 0uLL;
  v16 = 0;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentOSVersion"];
  HKNSOperatingSystemVersionFromString(v9, &v15);

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  selfCopy = 0;
  if (v7 && v8 && v10)
  {
    v13 = v15;
    v14 = v16;
    self = [(HKDeviceContext *)self initWithType:v5 localDevice:v6 productTypeName:v7 currentOSName:v8 currentOSVersion:&v13 modificationDate:v10];
    selfCopy = self;
  }

  return selfCopy;
}

@end