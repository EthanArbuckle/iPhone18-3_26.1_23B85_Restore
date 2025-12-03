@interface HMAccessorySelectionSettingItem
- (BOOL)isEqual:(id)equal;
- (HMAccessorySelectionSetting)setting;
- (HMAccessorySelectionSettingItem)init;
- (HMAccessorySelectionSettingItem)initWithCoder:(id)coder;
- (HMAccessorySelectionSettingItem)initWithTitle:(id)title;
- (NSString)keyPath;
- (NSString)localizedTitle;
- (NSUUID)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessorySelectionSettingItem

- (HMAccessorySelectionSetting)setting
{
  WeakRetained = objc_loadWeakRetained(&self->_setting);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMAccessorySelectionSettingItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  title = [(HMAccessorySelectionSettingItem *)self title];
  [coderCopy encodeObject:title forKey:@"HM.title"];
}

- (HMAccessorySelectionSettingItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.title"];
  v6 = [(HMAccessorySelectionSettingItem *)self initWithTitle:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    [v7 getUUIDBytes:v6->_identifierUUIDBytes];
  }

  return v6;
}

- (NSString)localizedTitle
{
  keyPath = [(HMAccessorySelectionSettingItem *)self keyPath];
  v4 = [HMAccessorySettings localizationKeyForKeyPath:keyPath];

  v5 = +[HMLocalization sharedManager];
  v6 = [v5 getLocalizedString:v4];

  if ([v6 isEqualToString:v4])
  {
    title = [(HMAccessorySelectionSettingItem *)self title];
  }

  else
  {
    title = v6;
  }

  v8 = title;

  return v8;
}

- (NSString)keyPath
{
  setting = [(HMAccessorySelectionSettingItem *)self setting];
  keyPath = [setting keyPath];

  title = [(HMAccessorySelectionSettingItem *)self title];
  v6 = title;
  if (keyPath)
  {
    v7 = [keyPath stringByAppendingFormat:@".%@", title];

    v6 = v7;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  localizedTitle = [(HMAccessorySelectionSettingItem *)self localizedTitle];
  identifier = [(HMAccessorySelectionSettingItem *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ (%@)", localizedTitle, uUIDString];

  return v7;
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
    if (v6)
    {
      title = [(HMAccessorySelectionSettingItem *)self title];
      title2 = [(HMAccessorySelectionSettingItem *)v6 title];
      v9 = [title isEqual:title2];
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
  title = [(HMAccessorySelectionSettingItem *)self title];
  v3 = [title hash];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifierUUIDBytes];

  return v2;
}

- (HMAccessorySelectionSettingItem)initWithTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v13.receiver = self;
    v13.super_class = HMAccessorySelectionSettingItem;
    v5 = [(HMAccessorySelectionSettingItem *)&v13 init];
    if (v5)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [uUID getUUIDBytes:v5->_identifierUUIDBytes];

      v7 = MEMORY[0x1E69A2A20];
      v8 = [titleCopy copy];
      v9 = [v7 hmf_cachedInstanceForString:v8];
      title = v5->_title;
      v5->_title = v9;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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