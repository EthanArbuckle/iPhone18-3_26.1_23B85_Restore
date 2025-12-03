@interface HMSettings
- (BOOL)isControllable;
- (HMSettingGroup)rootGroup;
- (HMSettings)initWithSettingsOwner:(id)owner;
- (HMSettingsDelegate)delegate;
- (HMSettingsOwner)owner;
- (id)description;
- (id)longDescription;
- (void)setDelegate:(id)delegate;
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
  rootGroup = [(HMSettings *)self rootGroup];
  longDescription = [rootGroup longDescription];
  v7 = [v3 stringWithFormat:@"[%@ root: %@]", v4, longDescription];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  rootGroup = [(HMSettings *)self rootGroup];
  v6 = [v3 stringWithFormat:@"[%@ root: %@]", v4, rootGroup];

  return v6;
}

- (HMSettingsDelegate)delegate
{
  owner = [(HMSettings *)self owner];
  delegate = [owner delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  owner = [(HMSettings *)self owner];
  [owner setDelegate:delegateCopy];
}

- (BOOL)isControllable
{
  owner = [(HMSettings *)self owner];
  rootGroup = [owner rootGroup];
  v4 = rootGroup != 0;

  return v4;
}

- (HMSettingGroup)rootGroup
{
  owner = [(HMSettings *)self owner];
  rootGroup = [owner rootGroup];

  return rootGroup;
}

- (HMSettings)initWithSettingsOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = HMSettings;
  v5 = [(HMSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, ownerCopy);
  }

  return v6;
}

@end