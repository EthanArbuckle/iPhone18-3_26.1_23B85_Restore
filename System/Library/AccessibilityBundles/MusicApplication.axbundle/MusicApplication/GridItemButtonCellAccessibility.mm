@interface GridItemButtonCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation GridItemButtonCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.GridItemButtonCell" hasInstanceMethod:@"buttonTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.GridItemButtonCell" hasInstanceMethod:@"buttonSubtitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = GridItemButtonCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(GridItemButtonCellAccessibility *)&v3 accessibilityTraits];
}

@end