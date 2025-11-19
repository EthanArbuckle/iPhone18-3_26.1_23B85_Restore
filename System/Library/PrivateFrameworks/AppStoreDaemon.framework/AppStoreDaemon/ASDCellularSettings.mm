@interface ASDCellularSettings
+ (id)settingsForIdentity:(id)a3;
- (ASDCellularSettings)initWithDefaultsKey:(id)a3;
- (ASDCellularSettings)initWithIdentity:(id)a3;
- (id)_cellularSettings;
- (int64_t)cellularDataPrompt;
- (void)setCellularDataPrompt:(int64_t)a3;
@end

@implementation ASDCellularSettings

- (ASDCellularSettings)initWithIdentity:(id)a3
{
  v4 = [a3 defaultsKey];
  v5 = [(ASDCellularSettings *)self initWithDefaultsKey:v4];

  return v5;
}

+ (id)settingsForIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 defaultsKey];

  v7 = [v5 initWithDefaultsKey:v6];

  return v7;
}

- (ASDCellularSettings)initWithDefaultsKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDCellularSettings;
  v6 = [(ASDCellularSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsKey, a3);
  }

  return v7;
}

- (int64_t)cellularDataPrompt
{
  v3 = [(ASDCellularSettings *)self _cellularSettings];
  v4 = [v3 objectForKey:self->_defaultsKey];
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
  if (a1)
  {
    a1 = CFPreferencesCopyValue(@"CellularSettings", @"com.apple.appstored", @"mobile", *MEMORY[0x1E695E898]);
    v1 = vars8;
  }

  return a1;
}

- (void)setCellularDataPrompt:(int64_t)a3
{
  v8 = [(ASDCellularSettings *)self _cellularSettings];
  v5 = [v8 objectForKey:self->_defaultsKey];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
  [v6 setObject:v7 forKey:self->_defaultsKey];
  if (a3 <= 2)
  {
    [v7 setObject:off_1E7CDC340[a3] forKey:@"CellularDataPrompt"];
  }

  CFPreferencesSetAppValue(@"CellularSettings", v6, @"com.apple.appstored");
}

@end