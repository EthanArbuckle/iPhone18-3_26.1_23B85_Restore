@interface MusicVideoHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation MusicVideoHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.MusicVideoHorizontalCell" hasInstanceMethod:@"additionalDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SongCell" isKindOfClass:@"MusicApplication.HorizontalLockupCollectionViewCell"];
  [v3 validateClass:@"MusicApplication.HorizontalLockupCollectionViewCell" hasInstanceMethod:@"accessibilityMediaPickerAddButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = MusicVideoHorizontalCellAccessibility;
  v3 = [(MusicVideoHorizontalCellAccessibility *)&v9 accessibilityTraits];
  objc_opt_class();
  v4 = [(MusicVideoHorizontalCellAccessibility *)self safeValueForKey:@"accessibilityMediaPickerAddButton"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *MEMORY[0x29EDC7F70] | v3;
  LODWORD(v3) = [v5 safeBoolForKey:@"selected"];

  v7 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v7 = 0;
  }

  return v6 | v7;
}

@end