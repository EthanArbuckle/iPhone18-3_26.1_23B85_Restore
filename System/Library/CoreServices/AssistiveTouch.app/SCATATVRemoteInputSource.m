@interface SCATATVRemoteInputSource
- (BOOL)handledEvent:(id)a3;
- (id)actionIdentifierForButtonNumber:(int64_t)a3 withType:(id)a4;
- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)a3;
- (id)switchDisplayNameForButtonNumber:(int64_t)a3;
@end

@implementation SCATATVRemoteInputSource

- (id)actionIdentifierForButtonNumber:(int64_t)a3 withType:(id)a4
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
    v12 = SWCHLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100127EF8(v12);
    }

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

- (BOOL)handledEvent:(id)a3
{
  v5 = a3;
  if (![v5 creatorHIDEvent])
  {
    _AXLogWithFacility();
    goto LABEL_17;
  }

  v6 = IOHIDEventGetSenderID() + 0x7FFFFFF7E8CE6C8ELL;
  if (v6 > 3 || v6 == 2)
  {
    v3 = [v5 accessibilityData];
    v8 = [v3 wasPostedByAccessibility];
  }

  else
  {
    v8 = 1;
  }

  if (v6 <= 3 && v6 != 2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!SCATIsATVRemoteButtonSwitchCandidateEvent())
  {
    goto LABEL_17;
  }

  v10 = [v5 isDownEvent];
  IntegerValue = IOHIDEventGetIntegerValue();
  v12 = [(SCATATVRemoteInputSource *)self actionIdentifierForButtonNumber:IntegerValue withType:@"SwitchActionTypeNormal"];
  v13 = [(SCATATVRemoteInputSource *)self actionIdentifierForButtonNumber:IntegerValue withType:@"SwitchActionTypeLongPress"];
  v14 = [(SCATATVRemoteInputSource *)self persistentSwitchIdentifierForButtonNumber:IntegerValue];
  v15 = [(SCATATVRemoteInputSource *)self switchDisplayNameForButtonNumber:IntegerValue];
  [(SCATInputSource *)self _handleAction:v12 longPressAction:v13 start:v10 switchIdentifier:v14 switchDisplayName:v15];

  v16 = 1;
LABEL_18:

  return v16;
}

@end