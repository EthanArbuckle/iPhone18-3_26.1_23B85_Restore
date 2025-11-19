@interface HMAccessorySelectionSettingItem
- (BOOL)isEqual:(id)a3;
- (HMAccessorySelectionSetting)setting;
- (HMAccessorySelectionSettingItem)init;
- (HMAccessorySelectionSettingItem)initWithCoder:(id)a3;
- (HMAccessorySelectionSettingItem)initWithTitle:(id)a3;
- (NSString)keyPath;
- (NSString)localizedTitle;
- (NSUUID)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySelectionSettingItem

- (HMAccessorySelectionSetting)setting
{
  WeakRetained = objc_loadWeakRetained(&self->_setting);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySelectionSettingItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(HMAccessorySelectionSettingItem *)self title];
  [v4 encodeObject:v6 forKey:@"HM.title"];
}

- (HMAccessorySelectionSettingItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.title"];
  v6 = [(HMAccessorySelectionSettingItem *)self initWithTitle:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    [v7 getUUIDBytes:v6->_identifierUUIDBytes];
  }

  return v6;
}

- (NSString)localizedTitle
{
  v3 = [(HMAccessorySelectionSettingItem *)self keyPath];
  v4 = [HMAccessorySettings localizationKeyForKeyPath:v3];

  v5 = +[HMLocalization sharedManager];
  v6 = [v5 getLocalizedString:v4];

  if ([v6 isEqualToString:v4])
  {
    v7 = [(HMAccessorySelectionSettingItem *)self title];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (NSString)keyPath
{
  v3 = [(HMAccessorySelectionSettingItem *)self setting];
  v4 = [v3 keyPath];

  v5 = [(HMAccessorySelectionSettingItem *)self title];
  v6 = v5;
  if (v4)
  {
    v7 = [v4 stringByAppendingFormat:@".%@", v5];

    v6 = v7;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMAccessorySelectionSettingItem *)self localizedTitle];
  v5 = [(HMAccessorySelectionSettingItem *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
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
    if (v6)
    {
      v7 = [(HMAccessorySelectionSettingItem *)self title];
      v8 = [(HMAccessorySelectionSettingItem *)v6 title];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMAccessorySelectionSettingItem *)self title];
  v3 = [v2 hash];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifierUUIDBytes];

  return v2;
}

- (HMAccessorySelectionSettingItem)initWithTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = HMAccessorySelectionSettingItem;
    v5 = [(HMAccessorySelectionSettingItem *)&v13 init];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      [v6 getUUIDBytes:v5->_identifierUUIDBytes];

      v7 = MEMORY[0x1E69A2A20];
      v8 = [v4 copy];
      v9 = [v7 hmf_cachedInstanceForString:v8];
      title = v5->_title;
      v5->_title = v9;
    }

    self = v5;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMAccessorySelectionSettingItem)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end