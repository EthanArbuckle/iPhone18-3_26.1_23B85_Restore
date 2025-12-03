@interface AVTRecordViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isCreating;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AVTRecordViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTRecordView" isKindOfClass:@"AVTView"];
  [validationsCopy validateClass:@"AVTView" hasInstanceVariable:@"_faceTrackingDelegate" withType:"<AVTViewFaceTrackingDelegate>"];
  [validationsCopy validateClass:@"AVTRecordView" hasInstanceVariable:@"_avatar" withType:"AVTAvatar"];
  [validationsCopy validateClass:@"AVTFaceTrackingManager" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTView" hasInstanceMethod:@"faceIsTracked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTAvatarAttributeEditorViewController" hasInstanceMethod:@"isCreating" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(AVTRecordViewAccessibility *)self _isCreating])
  {
    v3 = MEMORY[0x29EDBDE08];
    v9 = 0;
    v4 = [(AVTRecordViewAccessibility *)self safeValueForKey:@"avatar"];
    v5 = __UIAccessibilitySafeClass();

    accessibilityLabel = [v3 descriptionForMemoji:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVTRecordViewAccessibility;
    accessibilityLabel = [(AVTRecordViewAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(AVTRecordViewAccessibility *)self accessibilityUserDefinedValue];
  if ([(AVTRecordViewAccessibility *)self _isCreating])
  {
    v8.receiver = self;
    v8.super_class = AVTRecordViewAccessibility;
    accessibilityValue = [(AVTRecordViewAccessibility *)&v8 accessibilityValue];
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
    accessibilityValue = __UIAXStringForVariables();
  }

  return accessibilityValue;
}

- (BOOL)_isCreating
{
  v2 = [(AVTRecordViewAccessibility *)self safeValueForKeyPath:@"faceTrackingDelegate.delegate"];
  v3 = [v2 safeBoolForKey:@"isCreating"];

  return v3;
}

@end