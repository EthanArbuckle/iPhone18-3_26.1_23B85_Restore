@interface AVTRecordViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isCreating;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AVTRecordViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTRecordView" isKindOfClass:@"AVTView"];
  [v3 validateClass:@"AVTView" hasInstanceVariable:@"_faceTrackingDelegate" withType:"<AVTViewFaceTrackingDelegate>"];
  [v3 validateClass:@"AVTRecordView" hasInstanceVariable:@"_avatar" withType:"AVTAvatar"];
  [v3 validateClass:@"AVTFaceTrackingManager" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTView" hasInstanceMethod:@"faceIsTracked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"isCreating" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(AVTRecordViewAccessibility *)self _isCreating])
  {
    v3 = MEMORY[0x29EDBDE08];
    v9 = 0;
    v4 = [(AVTRecordViewAccessibility *)self safeValueForKey:@"avatar"];
    v5 = __UIAccessibilitySafeClass();

    v6 = [v3 descriptionForMemoji:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVTRecordViewAccessibility;
    v6 = [(AVTRecordViewAccessibility *)&v8 accessibilityLabel];
  }

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(AVTRecordViewAccessibility *)self accessibilityUserDefinedValue];
  if ([(AVTRecordViewAccessibility *)self _isCreating])
  {
    v8.receiver = self;
    v8.super_class = AVTRecordViewAccessibility;
    v4 = [(AVTRecordViewAccessibility *)&v8 accessibilityValue];
  }

  else
  {
    if ([(AVTRecordViewAccessibility *)self safeBoolForKey:@"faceIsTracked"])
    {
      v5 = @"tracking.enabled";
    }

    else
    {
      v5 = @"tracking.disabled";
    }

    v7 = accessibilityAvatarKitLocalizedString(v5);
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (BOOL)_isCreating
{
  v2 = [(AVTRecordViewAccessibility *)self safeValueForKeyPath:@"faceTrackingDelegate.delegate"];
  v3 = [v2 safeBoolForKey:@"isCreating"];

  return v3;
}

@end