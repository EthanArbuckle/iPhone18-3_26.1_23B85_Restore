@interface VKCImageTextSelectionView_iOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShouldHaveAccessibilityElements;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
@end

@implementation VKCImageTextSelectionView_iOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKCImageTextSelectionView" hasInstanceMethod:@"highlightSelectableItems" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCImageTextSelectionView" hasInstanceMethod:@"setHighlightSelectableItems:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" hasInstanceMethod:@"selectable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" isKindOfClass:@"VKCImageTextSelectionView"];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" conformsToProtocol:@"UITextInput"];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" hasInstanceMethod:@"isEditable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VKCImageTextSelectionView_iOS" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (BOOL)_axShouldHaveAccessibilityElements
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axHighlightSelectableItems]|| AXRequestingClient() == 11)
  {
    return 1;
  }

  mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.Magnifier"])
  {
    v2 = 1;
  }

  else
  {
    mainBundle2 = [MEMORY[0x29EDB9F48] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v2 = [bundleIdentifier2 isEqualToString:@"com.apple.camera"];
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axShouldHaveAccessibilityElements])
  {
    return *MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7FD0];
  }

  v4.receiver = self;
  v4.super_class = VKCImageTextSelectionView_iOSAccessibility;
  return [(VKCImageTextSelectionView_iOSAccessibility *)&v4 accessibilityTraits];
}

- (id)accessibilityElements
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axShouldHaveAccessibilityElements])
  {
    v3 = MEMORY[0x29EDC7620];
    v4 = [(VKCImageTextSelectionView_iOSAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      selfCopy = self;
      if (selfCopy)
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x3032000000;
        v15 = __Block_byref_object_copy_;
        v16 = __Block_byref_object_dispose_;
        array = [MEMORY[0x29EDB8DE8] array];
        v8 = [(VKCImageTextSelectionView_iOSAccessibility *)selfCopy safeStringForKey:@"text"];
        v9 = [v8 length];
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 3221225472;
        v11[2] = __67__VKCImageTextSelectionView_iOSAccessibility_accessibilityElements__block_invoke;
        v11[3] = &unk_29F31D9C0;
        v11[4] = selfCopy;
        v11[5] = &v12;
        [v8 enumerateSubstringsInRange:0 options:v9 usingBlock:{1, v11}];
        if ([v13[5] count])
        {
          [(VKCImageTextSelectionView_iOSAccessibility *)selfCopy _accessibilitySetRetainedValue:v13[5] forKey:*v3];
        }

        v6 = v13[5];

        _Block_object_dispose(&v12, 8);
      }

      else
      {
        v6 = MEMORY[0x29EDB8E90];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)accessibilityContainerType
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axShouldHaveAccessibilityElements])
  {
    return 4;
  }

  v4.receiver = self;
  v4.super_class = VKCImageTextSelectionView_iOSAccessibility;
  return [(VKCImageTextSelectionView_iOSAccessibility *)&v4 accessibilityContainerType];
}

- (id)accessibilityLabel
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axShouldHaveAccessibilityElements])
  {
    accessibilityLabel = accessibilityLocalizedString(@"detected.text.element");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VKCImageTextSelectionView_iOSAccessibility;
    accessibilityLabel = [(VKCImageTextSelectionView_iOSAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(VKCImageTextSelectionView_iOSAccessibility *)self _axShouldHaveAccessibilityElements])
  {
    accessibilityValue = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VKCImageTextSelectionView_iOSAccessibility;
    accessibilityValue = [(VKCImageTextSelectionView_iOSAccessibility *)&v5 accessibilityValue];
  }

  return accessibilityValue;
}

@end