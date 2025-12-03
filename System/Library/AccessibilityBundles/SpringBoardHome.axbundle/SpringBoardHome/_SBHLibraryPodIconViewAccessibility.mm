@interface _SBHLibraryPodIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsHiddenPod;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (int64_t)accessibilityContainerType;
@end

@implementation _SBHLibraryPodIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SBHLibraryPodIconView" isKindOfClass:@"SBIconView"];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"customIconImageViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHLibraryCategoryIconViewController" hasInstanceMethod:@"_canBeLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHLibraryCategoryIconViewController" hasInstanceMethod:@"isLocked" withFullSignature:{"B", 0}];
}

- (id)accessibilityHint
{
  if ([(_SBHLibraryPodIconViewAccessibility *)self _axIsHiddenPod])
  {
    v2 = accessibilityLocalizedString(@"app.library.hidden.folder.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  if ([(_SBHLibraryPodIconViewAccessibility *)self _axIsHiddenPod])
  {
    [(_SBHLibraryPodIconViewAccessibility *)self accessibilityFrame];

    AX_CGRectGetCenter();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _SBHLibraryPodIconViewAccessibility;
    [(_SBHLibraryPodIconViewAccessibility *)&v5 accessibilityActivationPoint];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (int64_t)accessibilityContainerType
{
  if ([(_SBHLibraryPodIconViewAccessibility *)self _axIsHiddenPod])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _SBHLibraryPodIconViewAccessibility;
  return [(_SBHLibraryPodIconViewAccessibility *)&v4 accessibilityContainerType];
}

- (BOOL)_axIsHiddenPod
{
  v2 = [(_SBHLibraryPodIconViewAccessibility *)self safeValueForKey:@"customIconImageViewController"];
  if ([v2 safeBoolForKey:@"_canBeLocked"])
  {
    v3 = [v2 safeBoolForKey:@"isLocked"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end