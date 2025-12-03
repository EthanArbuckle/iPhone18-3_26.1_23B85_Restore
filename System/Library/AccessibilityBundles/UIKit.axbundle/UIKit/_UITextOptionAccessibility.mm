@interface _UITextOptionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UITextOptionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UITextOption" hasInstanceMethod:@"textChoice" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v14 = a2;
  v13 = [(_UITextOptionAccessibility *)self safeIntegerForKey:@"type"];
  v12 = [(_UITextOptionAccessibility *)selfCopy safeStringForKey:@"textChoice"];
  if (v13)
  {
    if (v13 == 1)
    {
      v16 = accessibilityLocalizedString(@"text.option.type.revert.label");
      v11 = 1;
    }

    else
    {
      v10 = [v12 length] != 0;
      if (!v10)
      {
        location = AXLogAppAccessibility();
        v8 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(location, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_0_1_8_0(v17, v13);
          _os_log_fault_impl(&dword_29C4D6000, location, v8, "Unexpectedly missing text for text option with type: %ld", v17, 0xCu);
        }

        objc_storeStrong(&location, 0);
      }

      v5 = 0;
      if (v10)
      {
        v2 = MEMORY[0x29EDC9748](v12);
      }

      else
      {
        v7.receiver = selfCopy;
        v7.super_class = _UITextOptionAccessibility;
        accessibilityLabel = [(_UITextOptionAccessibility *)&v7 accessibilityLabel];
        v5 = 1;
        v2 = MEMORY[0x29EDC9748](accessibilityLabel);
      }

      v16 = v2;
      if (v5)
      {
        MEMORY[0x29EDC9740](accessibilityLabel);
      }

      v11 = 1;
    }
  }

  else
  {
    v16 = accessibilityLocalizedString(@"text.option.type.cancel.label");
    v11 = 1;
  }

  objc_storeStrong(&v12, 0);
  v3 = v16;

  return v3;
}

@end