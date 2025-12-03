@interface BrickCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation BrickCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.BrickCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

@end