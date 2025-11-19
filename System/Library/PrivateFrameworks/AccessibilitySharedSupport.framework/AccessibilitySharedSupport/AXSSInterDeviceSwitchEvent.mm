@interface AXSSInterDeviceSwitchEvent
- (AXSSInterDeviceSwitchEvent)initWithDictionaryRepresentation:(id)a3;
- (AXSSInterDeviceSwitchEvent)initWithSwitchIdentifier:(id)a3 switchDisplayName:(id)a4 deviceIdentifier:(id)a5 actions:(id)a6 longPressActions:(id)a7 isDown:(BOOL)a8;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation AXSSInterDeviceSwitchEvent

- (AXSSInterDeviceSwitchEvent)initWithSwitchIdentifier:(id)a3 switchDisplayName:(id)a4 deviceIdentifier:(id)a5 actions:(id)a6 longPressActions:(id)a7 isDown:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = AXSSInterDeviceSwitchEvent;
  v18 = [(AXSSInterDeviceSwitchEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_switchIdentifier, a3);
    objc_storeStrong(&v19->_switchDisplayName, a4);
    objc_storeStrong(&v19->_deviceIdentifier, a5);
    objc_storeStrong(&v19->_actions, a6);
    objc_storeStrong(&v19->_longPressActions, a7);
    v19->_isDown = a8;
  }

  return v19;
}

- (AXSSInterDeviceSwitchEvent)initWithDictionaryRepresentation:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = AXSSInterDeviceSwitchEvent;
  v5 = [(AXSSInterDeviceSwitchEvent *)&v36 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = [v4 axssDecodeObjectOfClass:objc_opt_class() forKey:@"SwitchIdentifier"];
  switchIdentifier = v5->_switchIdentifier;
  v5->_switchIdentifier = v6;

  v8 = [v4 axssDecodeObjectOfClass:objc_opt_class() forKey:@"SwitchDisplayName"];
  switchDisplayName = v5->_switchDisplayName;
  v5->_switchDisplayName = v8;

  v10 = [v4 axssDecodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
  deviceIdentifier = v5->_deviceIdentifier;
  v5->_deviceIdentifier = v10;

  v12 = [v4 axssDecodeArrayOfClass:objc_opt_class() forKey:@"Actions"];
  actions = v5->_actions;
  v5->_actions = v12;

  v14 = [v4 axssDecodeArrayOfClass:objc_opt_class() forKey:@"LongPressActions"];
  longPressActions = v5->_longPressActions;
  v5->_longPressActions = v14;

  v5->_isDown = [v4 axssDecodeBoolForKey:@"IsDown"];
  v16 = [(AXSSInterDeviceSwitchEvent *)v5 switchDisplayName];
  v17 = [v16 length];

  if (!v17)
  {
    v21 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    v20 = @"UNTITLED_SWITCH";
    goto LABEL_8;
  }

  v18 = [(AXSSInterDeviceSwitchEvent *)v5 switchDisplayName];
  v19 = [v18 isEqualToString:@"switch.key.space.displayName"];

  if (v19)
  {
    v20 = @"SWITCH_KEY_SPACE_DISPLAYNAME";
LABEL_8:
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v23 = [v22 localizedStringForKey:v20 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
    [(AXSSInterDeviceSwitchEvent *)v5 setSwitchDisplayName:v23];
  }

  v24 = [(AXSSInterDeviceSwitchEvent *)v5 switchIdentifier];
  v25 = [v24 length];

  if (!v25)
  {
    v26 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    [(AXSSInterDeviceSwitchEvent *)v5 setSwitchIdentifier:@"missing-switch-identifier"];
  }

  v27 = [(AXSSInterDeviceSwitchEvent *)v5 deviceIdentifier];
  v28 = [v27 length];

  if (!v28)
  {
    v29 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    [(AXSSInterDeviceSwitchEvent *)v5 setDeviceIdentifier:@"missing-device-identifier"];
  }

  v30 = [(AXSSInterDeviceSwitchEvent *)v5 actions];
  v31 = [v30 count];

  if (!v31)
  {
    v32 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    v37[0] = AXSSSwitchActionSelect;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    [(AXSSInterDeviceSwitchEvent *)v5 setActions:v33];
  }

LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXSSInterDeviceSwitchEvent *)self switchIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"SwitchIdentifier"];

  v5 = [(AXSSInterDeviceSwitchEvent *)self switchDisplayName];
  [v3 setObject:v5 forKeyedSubscript:@"SwitchDisplayName"];

  v6 = [(AXSSInterDeviceSwitchEvent *)self deviceIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"DeviceIdentifier"];

  v7 = [(AXSSInterDeviceSwitchEvent *)self actions];
  [v3 setObject:v7 forKeyedSubscript:@"Actions"];

  v8 = [(AXSSInterDeviceSwitchEvent *)self longPressActions];
  [v3 setObject:v8 forKeyedSubscript:@"LongPressActions"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSInterDeviceSwitchEvent isDown](self, "isDown")}];
  [v3 setObject:v9 forKeyedSubscript:@"IsDown"];

  return v3;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AXSSInterDeviceSwitchEvent;
  v3 = [(AXSSInterDeviceSwitchEvent *)&v11 description];
  v4 = [(AXSSInterDeviceSwitchEvent *)self switchIdentifier];
  v5 = [(AXSSInterDeviceSwitchEvent *)self switchDisplayName];
  v6 = [(AXSSInterDeviceSwitchEvent *)self deviceIdentifier];
  v7 = [(AXSSInterDeviceSwitchEvent *)self actions];
  v8 = [(AXSSInterDeviceSwitchEvent *)self longPressActions];
  v9 = [v3 stringByAppendingFormat:@" - switch identifier: %@, switch display name: %@, device identifier: %@, actions: %@, long press actions: %@, is down: %i", v4, v5, v6, v7, v8, -[AXSSInterDeviceSwitchEvent isDown](self, "isDown")];

  return v9;
}

@end