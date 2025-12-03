@interface HMAnnounceUserSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAnnounceUserSettings)initWithCoder:(id)coder;
- (HMAnnounceUserSettings)initWithDeviceNotificationMode:(unint64_t)mode;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAnnounceUserSettings

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAnnounceUserSettings deviceNotificationMode](self, "deviceNotificationMode")}];
  v5 = [v3 initWithName:@"deviceNotificationMode" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      deviceNotificationMode = [(HMAnnounceUserSettings *)v6 deviceNotificationMode];
      v9 = deviceNotificationMode == [(HMAnnounceUserSettings *)self deviceNotificationMode];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[HMAnnounceUserSettings deviceNotificationMode](self, "deviceNotificationMode")}];
  [coderCopy encodeObject:v6 forKey:@"HMD.Announce.DeviceNotificationModeKey"];
}

- (HMAnnounceUserSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.Announce.DeviceNotificationModeKey"];

  v6 = -[HMAnnounceUserSettings initWithDeviceNotificationMode:](self, "initWithDeviceNotificationMode:", [v5 unsignedIntegerValue]);
  return v6;
}

- (HMAnnounceUserSettings)initWithDeviceNotificationMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = HMAnnounceUserSettings;
  result = [(HMAnnounceUserSettings *)&v5 init];
  if (result)
  {
    result->_deviceNotificationMode = mode;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end