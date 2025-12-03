@interface AXSSInterDeviceSwitchEvent
- (AXSSInterDeviceSwitchEvent)initWithDictionaryRepresentation:(id)representation;
- (AXSSInterDeviceSwitchEvent)initWithSwitchIdentifier:(id)identifier switchDisplayName:(id)name deviceIdentifier:(id)deviceIdentifier actions:(id)actions longPressActions:(id)pressActions isDown:(BOOL)down;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation AXSSInterDeviceSwitchEvent

- (AXSSInterDeviceSwitchEvent)initWithSwitchIdentifier:(id)identifier switchDisplayName:(id)name deviceIdentifier:(id)deviceIdentifier actions:(id)actions longPressActions:(id)pressActions isDown:(BOOL)down
{
  identifierCopy = identifier;
  nameCopy = name;
  deviceIdentifierCopy = deviceIdentifier;
  actionsCopy = actions;
  pressActionsCopy = pressActions;
  v23.receiver = self;
  v23.super_class = AXSSInterDeviceSwitchEvent;
  v18 = [(AXSSInterDeviceSwitchEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_switchIdentifier, identifier);
    objc_storeStrong(&v19->_switchDisplayName, name);
    objc_storeStrong(&v19->_deviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v19->_actions, actions);
    objc_storeStrong(&v19->_longPressActions, pressActions);
    v19->_isDown = down;
  }

  return v19;
}

- (AXSSInterDeviceSwitchEvent)initWithDictionaryRepresentation:(id)representation
{
  v37[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v36.receiver = self;
  v36.super_class = AXSSInterDeviceSwitchEvent;
  v5 = [(AXSSInterDeviceSwitchEvent *)&v36 init];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = [representationCopy axssDecodeObjectOfClass:objc_opt_class() forKey:@"SwitchIdentifier"];
  switchIdentifier = v5->_switchIdentifier;
  v5->_switchIdentifier = v6;

  v8 = [representationCopy axssDecodeObjectOfClass:objc_opt_class() forKey:@"SwitchDisplayName"];
  switchDisplayName = v5->_switchDisplayName;
  v5->_switchDisplayName = v8;

  v10 = [representationCopy axssDecodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentifier"];
  deviceIdentifier = v5->_deviceIdentifier;
  v5->_deviceIdentifier = v10;

  v12 = [representationCopy axssDecodeArrayOfClass:objc_opt_class() forKey:@"Actions"];
  actions = v5->_actions;
  v5->_actions = v12;

  v14 = [representationCopy axssDecodeArrayOfClass:objc_opt_class() forKey:@"LongPressActions"];
  longPressActions = v5->_longPressActions;
  v5->_longPressActions = v14;

  v5->_isDown = [representationCopy axssDecodeBoolForKey:@"IsDown"];
  switchDisplayName = [(AXSSInterDeviceSwitchEvent *)v5 switchDisplayName];
  v17 = [switchDisplayName length];

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

  switchDisplayName2 = [(AXSSInterDeviceSwitchEvent *)v5 switchDisplayName];
  v19 = [switchDisplayName2 isEqualToString:@"switch.key.space.displayName"];

  if (v19)
  {
    v20 = @"SWITCH_KEY_SPACE_DISPLAYNAME";
LABEL_8:
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v23 = [v22 localizedStringForKey:v20 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
    [(AXSSInterDeviceSwitchEvent *)v5 setSwitchDisplayName:v23];
  }

  switchIdentifier = [(AXSSInterDeviceSwitchEvent *)v5 switchIdentifier];
  v25 = [switchIdentifier length];

  if (!v25)
  {
    v26 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    [(AXSSInterDeviceSwitchEvent *)v5 setSwitchIdentifier:@"missing-switch-identifier"];
  }

  deviceIdentifier = [(AXSSInterDeviceSwitchEvent *)v5 deviceIdentifier];
  v28 = [deviceIdentifier length];

  if (!v28)
  {
    v29 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [AXSSInterDeviceSwitchEvent initWithDictionaryRepresentation:];
    }

    [(AXSSInterDeviceSwitchEvent *)v5 setDeviceIdentifier:@"missing-device-identifier"];
  }

  actions = [(AXSSInterDeviceSwitchEvent *)v5 actions];
  v31 = [actions count];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  switchIdentifier = [(AXSSInterDeviceSwitchEvent *)self switchIdentifier];
  [dictionary setObject:switchIdentifier forKeyedSubscript:@"SwitchIdentifier"];

  switchDisplayName = [(AXSSInterDeviceSwitchEvent *)self switchDisplayName];
  [dictionary setObject:switchDisplayName forKeyedSubscript:@"SwitchDisplayName"];

  deviceIdentifier = [(AXSSInterDeviceSwitchEvent *)self deviceIdentifier];
  [dictionary setObject:deviceIdentifier forKeyedSubscript:@"DeviceIdentifier"];

  actions = [(AXSSInterDeviceSwitchEvent *)self actions];
  [dictionary setObject:actions forKeyedSubscript:@"Actions"];

  longPressActions = [(AXSSInterDeviceSwitchEvent *)self longPressActions];
  [dictionary setObject:longPressActions forKeyedSubscript:@"LongPressActions"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSSInterDeviceSwitchEvent isDown](self, "isDown")}];
  [dictionary setObject:v9 forKeyedSubscript:@"IsDown"];

  return dictionary;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AXSSInterDeviceSwitchEvent;
  v3 = [(AXSSInterDeviceSwitchEvent *)&v11 description];
  switchIdentifier = [(AXSSInterDeviceSwitchEvent *)self switchIdentifier];
  switchDisplayName = [(AXSSInterDeviceSwitchEvent *)self switchDisplayName];
  deviceIdentifier = [(AXSSInterDeviceSwitchEvent *)self deviceIdentifier];
  actions = [(AXSSInterDeviceSwitchEvent *)self actions];
  longPressActions = [(AXSSInterDeviceSwitchEvent *)self longPressActions];
  v9 = [v3 stringByAppendingFormat:@" - switch identifier: %@, switch display name: %@, device identifier: %@, actions: %@, long press actions: %@, is down: %i", switchIdentifier, switchDisplayName, deviceIdentifier, actions, longPressActions, -[AXSSInterDeviceSwitchEvent isDown](self, "isDown")];

  return v9;
}

@end