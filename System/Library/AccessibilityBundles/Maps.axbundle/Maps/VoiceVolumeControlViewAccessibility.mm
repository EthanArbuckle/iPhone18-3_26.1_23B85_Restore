@interface VoiceVolumeControlViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_animateContentUpdate;
@end

@implementation VoiceVolumeControlViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VoiceVolumeControlView" hasInstanceVariable:@"_currentSelection" withType:"NSInteger"];
  [v3 validateClass:@"VoiceVolumeControlView" hasInstanceVariable:@"_buttons" withType:"NSArray"];
  [v3 validateClass:@"VoiceVolumeControlView" hasInstanceMethod:@"_animateContentUpdate" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [(VoiceVolumeControlViewAccessibility *)self safeArrayForKey:@"_buttons"];
  v4 = [(VoiceVolumeControlViewAccessibility *)self safeIntegerForKey:@"_currentSelection"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x29EDC7FC0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        objc_opt_class();
        v12 = __UIAccessibilityCastAsClass();
        v13 = [v12 tag];
        v14 = [v12 accessibilityTraits];
        if (v13 == v4)
        {
          v15 = v9 | v14;
        }

        else
        {
          v15 = _AXTraitsRemoveTrait();
        }

        [v12 setAccessibilityTraits:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17.receiver = self;
  v17.super_class = VoiceVolumeControlViewAccessibility;
  [(VoiceVolumeControlViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];

  v16 = *MEMORY[0x29EDCA608];
}

- (void)_animateContentUpdate
{
  v3.receiver = self;
  v3.super_class = VoiceVolumeControlViewAccessibility;
  [(VoiceVolumeControlViewAccessibility *)&v3 _animateContentUpdate];
  [(VoiceVolumeControlViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end