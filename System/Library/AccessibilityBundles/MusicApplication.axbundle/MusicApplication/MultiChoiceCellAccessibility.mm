@interface MultiChoiceCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation MultiChoiceCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"accessibilityIsSelectedChoice" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MultiChoiceCellAccessibility *)self safeBoolForKey:@"accessibilityIsSelectedChoice"];
  v6.receiver = self;
  v6.super_class = MultiChoiceCellAccessibility;
  accessibilityTraits = [(MultiChoiceCellAccessibility *)&v6 accessibilityTraits];
  if (v3)
  {
    return *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    return accessibilityTraits & ~*MEMORY[0x29EDC7FC0];
  }
}

@end