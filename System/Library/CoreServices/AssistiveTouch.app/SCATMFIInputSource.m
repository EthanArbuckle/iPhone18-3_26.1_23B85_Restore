@interface SCATMFIInputSource
- (id)actionForButtonNumber:(int64_t)a3 withType:(id)a4;
- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)a3;
- (id)switchDisplayNameForButtonNumber:(int64_t)a3;
@end

@implementation SCATMFIInputSource

- (id)actionForButtonNumber:(int64_t)a3 withType:(id)a4
{
  v6 = a4;
  v7 = [(SCATInputSource *)self actions];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:a3];
    v9 = [(SCATInputSource *)self actions];
    v10 = [v9 objectForKeyedSubscript:v8];

    v11 = [v10 objectForKeyedSubscript:v6];
  }

  else
  {
    _AXLogWithFacility();
    v11 = 0;
  }

  return v11;
}

- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)a3
{
  v4 = [(SCATHardwareInputSource *)self persistentSwitchIdentifiers];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)switchDisplayNameForButtonNumber:(int64_t)a3
{
  v4 = [(SCATHardwareInputSource *)self switchDisplayNames];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end