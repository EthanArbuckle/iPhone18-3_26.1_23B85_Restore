@interface NSObject
- (uint64_t)__accessibilityRespondsToKeyInput;
- (void)_accessibilitySetTextSelection:(uint64_t)a3;
@end

@implementation NSObject

- (uint64_t)__accessibilityRespondsToKeyInput
{
  v4 = a1;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      location = [v4 _accessibilityValueForKey:@"AXRespondsToKeyInput"];
      if (location)
      {
        v5 = [location BOOLValue] & 1;
      }

      else
      {
        v2 = [v4 conformsToProtocol:&unk_2A23B1FF8];
        [v4 _accessibilitySetBoolValue:v2 & 1 forKey:@"AXRespondsToKeyInput"];
        v5 = v2 & 1;
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_accessibilitySetTextSelection:(uint64_t)a3
{
  v10 = a2;
  v11 = a3;
  v9 = a1;
  if (a1)
  {
    if (([v9 conformsToProtocol:&unk_2A23BD4B8] & 1) == 0)
    {
      _AXAssert();
    }

    if ([v9 conformsToProtocol:&unk_2A23BD4B8])
    {
      v8 = MEMORY[0x29EDC9748](v9);
      v7 = [v8 safeValueForKey:@"beginningOfDocument"];
      v6 = [v8 positionFromPosition:v7 offset:v10];
      v5 = [v8 positionFromPosition:v6 offset:v11];
      if (v6 && v5)
      {
        v4 = 0;
        if (AXIsDictationListening())
        {
          AXHandleUserInteractionForDictation(1);
          v4 = 1;
        }

        location = [v8 textRangeFromPosition:v6 toPosition:v5];
        [v8 setSelectedTextRange:location];
        if (v4)
        {
          AXHandleUserInteractionForDictation(0);
        }

        objc_storeStrong(&location, 0);
      }

      objc_storeStrong(&v5, 0);
      objc_storeStrong(&v6, 0);
      objc_storeStrong(&v7, 0);
      objc_storeStrong(&v8, 0);
    }
  }
}

Class __65__NSObject_UITextInputAXPriv____accessibilityRespondsToTextInput__block_invoke()
{
  result = NSClassFromString(&cfstr_Uiwebbrowservi.isa);
  __accessibilityRespondsToTextInput_WebBrowserView = result;
  return result;
}

@end