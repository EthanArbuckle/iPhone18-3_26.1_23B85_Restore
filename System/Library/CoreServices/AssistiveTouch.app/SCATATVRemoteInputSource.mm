@interface SCATATVRemoteInputSource
- (BOOL)handledEvent:(id)event;
- (id)actionIdentifierForButtonNumber:(int64_t)number withType:(id)type;
- (id)persistentSwitchIdentifierForButtonNumber:(int64_t)number;
- (id)switchDisplayNameForButtonNumber:(int64_t)number;
@end

@implementation SCATATVRemoteInputSource

- (id)actionIdentifierForButtonNumber:(int64_t)number withType:(id)type
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
    v12 = SWCHLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100127EF8(v12);
    }

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

- (BOOL)handledEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy creatorHIDEvent])
  {
    _AXLogWithFacility();
    goto LABEL_17;
  }

  v6 = IOHIDEventGetSenderID() + 0x7FFFFFF7E8CE6C8ELL;
  if (v6 > 3 || v6 == 2)
  {
    accessibilityData = [eventCopy accessibilityData];
    wasPostedByAccessibility = [accessibilityData wasPostedByAccessibility];
  }

  else
  {
    wasPostedByAccessibility = 1;
  }

  if (v6 <= 3 && v6 != 2)
  {
    if ((wasPostedByAccessibility & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if (wasPostedByAccessibility)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!SCATIsATVRemoteButtonSwitchCandidateEvent())
  {
    goto LABEL_17;
  }

  isDownEvent = [eventCopy isDownEvent];
  IntegerValue = IOHIDEventGetIntegerValue();
  v12 = [(SCATATVRemoteInputSource *)self actionIdentifierForButtonNumber:IntegerValue withType:@"SwitchActionTypeNormal"];
  v13 = [(SCATATVRemoteInputSource *)self actionIdentifierForButtonNumber:IntegerValue withType:@"SwitchActionTypeLongPress"];
  v14 = [(SCATATVRemoteInputSource *)self persistentSwitchIdentifierForButtonNumber:IntegerValue];
  v15 = [(SCATATVRemoteInputSource *)self switchDisplayNameForButtonNumber:IntegerValue];
  [(SCATInputSource *)self _handleAction:v12 longPressAction:v13 start:isDownEvent switchIdentifier:v14 switchDisplayName:v15];

  v16 = 1;
LABEL_18:

  return v16;
}

@end