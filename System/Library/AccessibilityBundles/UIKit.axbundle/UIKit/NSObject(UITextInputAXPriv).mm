@interface NSObject(UITextInputAXPriv)
- (uint64_t)__accessibilityRespondsToTextInput;
@end

@implementation NSObject(UITextInputAXPriv)

- (uint64_t)__accessibilityRespondsToTextInput
{
  selfCopy = self;
  v4[1] = a2;
  if (objc_opt_respondsToSelector())
  {
    if ((_UIApplicationIsWebKitLoaded() & 1) == 0)
    {
      goto LABEL_8;
    }

    v8 = &__accessibilityRespondsToTextInput_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_50);
    if (*v8 != -1)
    {
      dispatch_once(v8, location);
    }

    objc_storeStrong(&location, 0);
    if (objc_opt_isKindOfClass())
    {
      v6 = 0;
    }

    else
    {
LABEL_8:
      v4[0] = [selfCopy _accessibilityValueForKey:@"AXRespondsToTextInput"];
      if (v4[0])
      {
        v6 = [v4[0] BOOLValue] & 1;
      }

      else
      {
        v3 = [selfCopy conformsToProtocol:&unk_2A23BD4B8];
        [selfCopy _accessibilitySetBoolValue:v3 & 1 forKey:@"AXRespondsToTextInput"];
        v6 = v3 & 1;
      }

      objc_storeStrong(v4, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end