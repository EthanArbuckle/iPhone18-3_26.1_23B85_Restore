@interface UISystemShellApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
@end

@implementation UISystemShellApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  selfCopy = self;
  v14 = a2;
  valueCopy = value;
  switch(value)
  {
    case 1100:
      v16 = AXFrontBoardRunningAppPIDs();
      break;
    case 1101:
      v16 = AXFrontBoardFocusedAppPID();
      break;
    case 1102:
      v16 = AXFrontBoardFocusedAppPIDs();
      break;
    case 1103:
      v16 = AXFrontBoardSpeakThisAppPIDs();
      break;
    case 1104:
      v16 = AXFrontBoardSpeakThisAppPIDForPoint();
      break;
    case 1105:
      v16 = AXFrontBoardFocusedAppPIDsIgnoringSiri();
      break;
    case 1106:
      v16 = [MEMORY[0x29EDBA070] numberWithBool:AXFrontBoardIsSystemAppUINonExclusive()];
      break;
    case 1108:
      v12 = AXFrontBoardFocusedApps();
      v16 = [v12 ax_mappedArrayUsingBlock:&__block_literal_global_38];
      objc_storeStrong(&v12, 0);
      break;
    case 1109:
      v11 = AXFrontBoardFocusedApps();
      v16 = [v11 ax_mappedArrayUsingBlock:&__block_literal_global_288];
      objc_storeStrong(&v11, 0);
      break;
    case 1110:
      v10 = AXFrontBoardFocusedApps();
      v9 = [v10 ax_firstObjectUsingBlock:&__block_literal_global_292];
      v7 = 0;
      if (v9)
      {
        v8 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v9, "pid")}];
        v7 = 1;
        v3 = MEMORY[0x29EDC9748](v8);
      }

      else
      {
        v3 = MEMORY[0x29EDC9748](&unk_2A238E870);
      }

      v16 = v3;
      if (v7)
      {
        MEMORY[0x29EDC9740](v8);
      }

      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
      break;
    case 1111:
      v16 = AXFrontBoardFocusedAppPidsForContinuity();
      break;
    default:
      v6.receiver = selfCopy;
      v6.super_class = UISystemShellApplicationAccessibility;
      v16 = [(UISystemShellApplicationAccessibility *)&v6 _iosAccessibilityAttributeValue:valueCopy];
      break;
  }

  v4 = v16;

  return v4;
}

id __73__UISystemShellApplicationAccessibility__iosAccessibilityAttributeValue___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] bundleIdentifier];
  objc_storeStrong(location, 0);

  return v3;
}

id __73__UISystemShellApplicationAccessibility__iosAccessibilityAttributeValue___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(location[0], "pid")}];
  objc_storeStrong(location, 0);

  return v3;
}

uint64_t __73__UISystemShellApplicationAccessibility__iosAccessibilityAttributeValue___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDBD600]];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  selfCopy = self;
  v10 = a2;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, parameter);
  if (valueCopy == 91510)
  {
    v12 = [MEMORY[0x29EDBA070] numberWithInt:AXFrontBoardPIDForApplicationWithBundleID()];
    v7 = 1;
  }

  else
  {
    if (valueCopy == 91700)
    {
      v12 = AXFrontBoardSpeakThisAppPIDForPoint();
    }

    else
    {
      v6.receiver = selfCopy;
      v6.super_class = UISystemShellApplicationAccessibility;
      v12 = [(UISystemShellApplicationAccessibility *)&v6 _iosAccessibilityAttributeValue:valueCopy forParameter:location];
    }

    v7 = 1;
  }

  objc_storeStrong(&location, 0);
  v4 = v12;

  return v4;
}

@end