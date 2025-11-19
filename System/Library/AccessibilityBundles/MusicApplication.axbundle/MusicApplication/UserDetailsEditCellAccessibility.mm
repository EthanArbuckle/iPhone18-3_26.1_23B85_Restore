@interface UserDetailsEditCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation UserDetailsEditCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.UserDetailsEditCell" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.UserDetailsEditCell" hasInstanceMethod:@"nickname" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UserDetailsEditCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UserDetailsEditCellAccessibility *)&v3 accessibilityTraits];
}

@end