@interface SCATMFIInputSource
- (id)actionForButtonNumber:(int64_t)number withType:(id)type;
- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)number;
- (id)switchDisplayNameForButtonNumber:(int64_t)number;
@end

@implementation SCATMFIInputSource

- (id)actionForButtonNumber:(int64_t)number withType:(id)type
{
  typeCopy = type;
  actions = [(SCATInputSource *)self actions];

  if (actions)
  {
    v8 = [NSNumber numberWithInteger:number];
    actions2 = [(SCATInputSource *)self actions];
    v10 = [actions2 objectForKeyedSubscript:v8];

    v11 = [v10 objectForKeyedSubscript:typeCopy];
  }

  else
  {
    _AXLogWithFacility();
    v11 = 0;
  }

  return v11;
}

- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)number
{
  persistentSwitchIdentifiers = [(SCATHardwareInputSource *)self persistentSwitchIdentifiers];
  v5 = [NSNumber numberWithInteger:number];
  v6 = [persistentSwitchIdentifiers objectForKeyedSubscript:v5];

  return v6;
}

- (id)switchDisplayNameForButtonNumber:(int64_t)number
{
  switchDisplayNames = [(SCATHardwareInputSource *)self switchDisplayNames];
  v5 = [NSNumber numberWithInteger:number];
  v6 = [switchDisplayNames objectForKeyedSubscript:v5];

  return v6;
}

@end