@interface EKCalendarItemLocationInlineEditItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (void)_updateClearButtonAndMakeVisible:(id)a3 index:(unint64_t)a4;
@end

@implementation EKCalendarItemLocationInlineEditItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKCalendarItemLocationInlineEditItem" hasInstanceMethod:@"cellForSubitemAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"EKCalendarItemLocationInlineEditItem" hasInstanceMethod:@"_updateClearButtonAndMakeVisible:index:" withFullSignature:{"v", "@", "Q", 0}];
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = EKCalendarItemLocationInlineEditItemAccessibility;
  v3 = [(EKCalendarItemLocationInlineEditItemAccessibility *)&v6 cellForSubitemAtIndex:a3];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v4];

  return v3;
}

- (void)_updateClearButtonAndMakeVisible:(id)a3 index:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = EKCalendarItemLocationInlineEditItemAccessibility;
  v5 = a3;
  [(EKCalendarItemLocationInlineEditItemAccessibility *)&v7 _updateClearButtonAndMakeVisible:v5 index:a4];
  v6 = UIKitAccessibilityLocalizedString();
  [v5 setAccessibilityLabel:{v6, v7.receiver, v7.super_class}];
}

@end