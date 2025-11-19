@interface AAUIProfilePhotoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AAUIProfilePhotoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUIProfilePhotoView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [v3 validateClass:@"AAUIProfilePhotoView" hasInstanceVariable:@"_photoView" withType:"UIImageView"];
  [v3 validateClass:@"AAUIProfilePhotoView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityPhotoView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityHint
{
  if ([(AAUIProfilePhotoViewAccessibility *)self _accessibilityIsEditing])
  {
    v3 = accessibilityLocalizedString(@"editablePhoto.hint");
  }

  else
  {
    v4 = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityPhotoView];
    v3 = [v4 accessibilityHint];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityIsEditing];
  v3 = *MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | *MEMORY[0x29EDC7F88];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AAUIProfilePhotoViewAccessibility *)self safeValueForKey:@"_editButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end