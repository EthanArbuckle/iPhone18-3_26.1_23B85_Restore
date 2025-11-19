@interface UserDetailsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UserDetailsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.UserDetailsCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.UserDetailsCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(UserDetailsCellAccessibility *)self safeValueForKey:@"title"];
  v6 = [(UserDetailsCellAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UserDetailsCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UserDetailsCellAccessibility *)&v3 accessibilityTraits];
}

@end