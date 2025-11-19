@interface VSDeveloperSettings
- (BOOL)isEqual:(id)a3;
- (VSDeveloperSettings)init;
- (VSDeveloperSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (VSDeveloperSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSDeveloperSettings;
  v5 = [(VSDeveloperSettings *)&v8 init];
  if (v5)
  {
    v6 = VSDeveloperSettingsValueType();
    VSValueTypeInitWithCoder(v6, v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = VSDeveloperSettingsValueType();
  VSValueTypeEncodeWithCoder(v5, self, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = VSDeveloperSettingsValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, a3);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSDeveloperSettingsValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = VSDeveloperSettingsValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, v4);

  return self;
}

- (id)description
{
  v3 = VSDeveloperSettingsValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

@end