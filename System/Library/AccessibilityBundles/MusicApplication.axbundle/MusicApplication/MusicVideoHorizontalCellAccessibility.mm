@interface MusicVideoHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation MusicVideoHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"additionalDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SongCell" isKindOfClass:@"MusicApplication.HorizontalLockupCollectionViewCell"];
  [validationsCopy validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"accessibilityMediaPickerAddButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = MusicVideoHorizontalCellAccessibility;
  accessibilityTraits = [(MusicVideoHorizontalCellAccessibility *)&v9 accessibilityTraits];
  objc_opt_class();
  v4 = [(MusicVideoHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityMediaPickerAddButton"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *MEMORY[0x29EDC7F70] | accessibilityTraits;
  LODWORD(accessibilityTraits) = [v5 safeBoolForKey:@"selected"];

  v7 = *MEMORY[0x29EDC7FC0];
  if (!accessibilityTraits)
  {
    v7 = 0;
  }

  return v6 | v7;
}

@end