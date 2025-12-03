@interface AAUIProfilePhotoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AAUIProfilePhotoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUIProfilePhotoView" hasInstanceVariable:@"_editButton" withType:"UIButton"];
  [validationsCopy validateClass:@"AAUIProfilePhotoView" hasInstanceVariable:@"_photoView" withType:"UIImageView"];
  [validationsCopy validateClass:@"AAUIProfilePhotoView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  _accessibilityPhotoView = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityPhotoView];
  accessibilityLabel = [_accessibilityPhotoView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(AAUIProfilePhotoViewAccessibility *)self _accessibilityIsEditing])
  {
    accessibilityHint = accessibilityLocalizedString(@"editablePhoto.hint");
  }

  else
  {
    _accessibilityPhotoView = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityPhotoView];
    accessibilityHint = [_accessibilityPhotoView accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  _accessibilityIsEditing = [(AAUIProfilePhotoViewAccessibility *)self _accessibilityIsEditing];
  v3 = *MEMORY[0x29EDC7F70];
  if (!_accessibilityIsEditing)
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