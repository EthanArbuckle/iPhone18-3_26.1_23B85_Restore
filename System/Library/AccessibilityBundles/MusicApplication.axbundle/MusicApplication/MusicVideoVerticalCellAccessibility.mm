@interface MusicVideoVerticalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MusicVideoVerticalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.MusicVideoVerticalCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MusicVideoVerticalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MusicVideoVerticalCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MusicVideoVerticalCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MusicVideoVerticalCellAccessibility *)self safeValueForKey:@"headline"];
  v4 = [(MusicVideoVerticalCellAccessibility *)self safeValueForKey:@"title"];
  v5 = [(MusicVideoVerticalCellAccessibility *)self safeValueForKey:@"subtitle"];
  if (([(MusicVideoVerticalCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"]& 1) != 0)
  {
    v8 = accessibilityMusicLocalizedString(@"explicit");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

@end