@interface ASDCellularSettings
+ (id)settingsForIdentity:(id)identity;
- (ASDCellularSettings)initWithDefaultsKey:(id)key;
- (ASDCellularSettings)initWithIdentity:(id)identity;
- (id)_cellularSettings;
- (int64_t)cellularDataPrompt;
- (void)setCellularDataPrompt:(int64_t)prompt;
@end

@implementation ASDCellularSettings

- (ASDCellularSettings)initWithIdentity:(id)identity
{
  defaultsKey = [identity defaultsKey];
  v5 = [(ASDCellularSettings *)self initWithDefaultsKey:defaultsKey];

  return v5;
}

+ (id)settingsForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [self alloc];
  defaultsKey = [identityCopy defaultsKey];

  v7 = [v5 initWithDefaultsKey:defaultsKey];

  return v7;
}

- (ASDCellularSettings)initWithDefaultsKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = ASDCellularSettings;
  v6 = [(ASDCellularSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsKey, key);
  }

  return v7;
}

- (int64_t)cellularDataPrompt
{
  _cellularSettings = [(ASDCellularSettings *)self _cellularSettings];
  v4 = [_cellularSettings objectForKey:self->_defaultsKey];
  v5 = [v4 objectForKey:@"CellularDataPrompt"];
  if ([v5 isEqualToString:@"Always"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"OverLimit"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"Never"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cellularSettings
{
  if (self)
  {
    self = CFPreferencesCopyValue(@"CellularSettings", @"com.apple.appstored", @"mobile", *MEMORY[0x1E695E898]);
    v1 = vars8;
  }

  return self;
}

- (void)setCellularDataPrompt:(int64_t)prompt
{
  _cellularSettings = [(ASDCellularSettings *)self _cellularSettings];
  v5 = [_cellularSettings objectForKey:self->_defaultsKey];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:_cellularSettings];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
  [v6 setObject:v7 forKey:self->_defaultsKey];
  if (prompt <= 2)
  {
    [v7 setObject:off_1E7CDC340[prompt] forKey:@"CellularDataPrompt"];
  }

  CFPreferencesSetAppValue(@"CellularSettings", v6, @"com.apple.appstored");
}

@end