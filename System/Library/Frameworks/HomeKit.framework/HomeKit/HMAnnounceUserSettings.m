@interface HMAnnounceUserSettings
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAnnounceUserSettings)initWithCoder:(id)a3;
- (HMAnnounceUserSettings)initWithDeviceNotificationMode:(unint64_t)a3;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      v8 = [(HMAnnounceUserSettings *)v6 deviceNotificationMode];
      v9 = v8 == [(HMAnnounceUserSettings *)self deviceNotificationMode];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[HMAnnounceUserSettings deviceNotificationMode](self, "deviceNotificationMode")}];
  [v5 encodeObject:v6 forKey:@"HMD.Announce.DeviceNotificationModeKey"];
}

- (HMAnnounceUserSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.Announce.DeviceNotificationModeKey"];

  v6 = -[HMAnnounceUserSettings initWithDeviceNotificationMode:](self, "initWithDeviceNotificationMode:", [v5 unsignedIntegerValue]);
  return v6;
}

- (HMAnnounceUserSettings)initWithDeviceNotificationMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMAnnounceUserSettings;
  result = [(HMAnnounceUserSettings *)&v5 init];
  if (result)
  {
    result->_deviceNotificationMode = a3;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end