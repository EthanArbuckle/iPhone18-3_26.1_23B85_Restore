@interface VUIUpNextButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUIUpNextButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIUpNextButton" hasProperty:@"properties" withType:"@"];
  [v3 validateClass:@"VUIUpNextButtonProperties" hasProperty:@"isWatchListed" withType:"B"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUIUpNextButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUIUpNextButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(VUIUpNextButtonAccessibility *)self safeValueForKey:@"properties"];
  v3 = [v2 safeBoolForKey:@"isWatchListed"];

  if (v3)
  {
    v4 = @"upnext.button.remove";
  }

  else
  {
    v4 = @"upnext.button.add";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

@end