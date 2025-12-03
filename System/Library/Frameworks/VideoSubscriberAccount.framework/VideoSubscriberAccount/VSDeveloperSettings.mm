@interface VSDeveloperSettings
- (BOOL)isEqual:(id)equal;
- (VSDeveloperSettings)init;
- (VSDeveloperSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaults;
@end

@implementation VSDeveloperSettings

- (void)setDefaults
{
  [(VSDeveloperSettings *)self setIsInSetTopBoxMode:0];
  [(VSDeveloperSettings *)self setCacheBusterEnabled:0];
  [(VSDeveloperSettings *)self setRequestTimeoutsDisabled:0];
  [(VSDeveloperSettings *)self setSimulateExpiredToken:0];
  [(VSDeveloperSettings *)self setSetTopBoxBundleIdentifier:0];
  [(VSDeveloperSettings *)self setSetTopBoxUserToken:0];
  [(VSDeveloperSettings *)self setSetTopBoxIdentityProviderID:0];
  [(VSDeveloperSettings *)self setSetTopBoxUseDeviceProfile:0];

  [(VSDeveloperSettings *)self setSetTopBoxSupportsOptOut:0];
}

- (VSDeveloperSettings)init
{
  v5.receiver = self;
  v5.super_class = VSDeveloperSettings;
  v2 = [(VSDeveloperSettings *)&v5 init];
  if (v2)
  {
    v3 = VSDeveloperSettingsValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSDeveloperSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSDeveloperSettings;
  v5 = [(VSDeveloperSettings *)&v8 init];
  if (v5)
  {
    v6 = VSDeveloperSettingsValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSDeveloperSettingsValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSDeveloperSettingsValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSDeveloperSettingsValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSDeveloperSettingsValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSDeveloperSettingsValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end