@interface SCATKeyboardInputSource
- (BOOL)handledEvent:(id)a3;
- (id)_actionIdentifierForKeyCode:(unsigned __int16)a3 withType:(id)a4;
- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)a3;
- (id)_switchDisplayNameForKeyCode:(unsigned __int16)a3;
@end

@implementation SCATKeyboardInputSource

- (BOOL)handledEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 10 || objc_msgSend(v4, "type") == 11)
  {
    v5 = [v4 keyInfo];
    v6 = [v5 keyDown];

    v7 = [v4 keyInfo];
    v8 = [v7 keyCode];

    v9 = [(SCATKeyboardInputSource *)self _actionIdentifierForKeyCode:v8 withType:@"SwitchActionTypeNormal"];
    v10 = [(SCATKeyboardInputSource *)self _actionIdentifierForKeyCode:v8 withType:@"SwitchActionTypeLongPress"];
    v11 = [(SCATKeyboardInputSource *)self _persistentSwitchIdentifierForKeyCode:v8];
    v12 = [(SCATKeyboardInputSource *)self _switchDisplayNameForKeyCode:v8];
    [(SCATInputSource *)self _handleAction:v9 longPressAction:v10 start:v6 switchIdentifier:v11 switchDisplayName:v12];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_actionIdentifierForKeyCode:(unsigned __int16)a3 withType:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SCATInputSource *)self actions];

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedShort:v4];
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

- (id)_persistentSwitchIdentifierForKeyCode:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(SCATHardwareInputSource *)self persistentSwitchIdentifiers];
  v5 = [NSNumber numberWithUnsignedShort:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)_switchDisplayNameForKeyCode:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(SCATHardwareInputSource *)self switchDisplayNames];
  v5 = [NSNumber numberWithUnsignedShort:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end