@interface MultiChoiceCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation MultiChoiceCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.MultiChoiceCell" hasInstanceMethod:@"accessibilityIsSelectedChoice" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MultiChoiceCellAccessibility *)self safeBoolForKey:@"accessibilityIsSelectedChoice"];
  v6.receiver = self;
  v6.super_class = MultiChoiceCellAccessibility;
  v4 = [(MultiChoiceCellAccessibility *)&v6 accessibilityTraits];
  if (v3)
  {
    return *MEMORY[0x29EDC7FC0] | v4;
  }

  else
  {
    return v4 & ~*MEMORY[0x29EDC7FC0];
  }
}

@end