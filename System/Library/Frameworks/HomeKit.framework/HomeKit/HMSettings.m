@interface HMSettings
- (BOOL)isControllable;
- (HMSettingGroup)rootGroup;
- (HMSettings)initWithSettingsOwner:(id)a3;
- (HMSettingsDelegate)delegate;
- (HMSettingsOwner)owner;
- (id)description;
- (id)longDescription;
- (void)setDelegate:(id)a3;
@end

@implementation HMSettings

- (HMSettingsOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)longDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMSettings *)self rootGroup];
  v6 = [v5 longDescription];
  v7 = [v3 stringWithFormat:@"[%@ root: %@]", v4, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMSettings *)self rootGroup];
  v6 = [v3 stringWithFormat:@"[%@ root: %@]", v4, v5];

  return v6;
}

- (HMSettingsDelegate)delegate
{
  v2 = [(HMSettings *)self owner];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMSettings *)self owner];
  [v5 setDelegate:v4];
}

- (BOOL)isControllable
{
  v2 = [(HMSettings *)self owner];
  v3 = [v2 rootGroup];
  v4 = v3 != 0;

  return v4;
}

- (HMSettingGroup)rootGroup
{
  v2 = [(HMSettings *)self owner];
  v3 = [v2 rootGroup];

  return v3;
}

- (HMSettings)initWithSettingsOwner:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMSettings;
  v5 = [(HMSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, v4);
  }

  return v6;
}

@end