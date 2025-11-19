@interface PUPhotoEditEffectCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PUPhotoEditEffectCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PUPhotoEditEffectCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end