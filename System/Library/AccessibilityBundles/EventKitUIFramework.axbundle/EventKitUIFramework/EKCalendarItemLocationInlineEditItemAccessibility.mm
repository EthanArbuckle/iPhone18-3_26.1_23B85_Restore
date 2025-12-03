@interface EKCalendarItemLocationInlineEditItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_updateClearButtonAndMakeVisible:(id)visible index:(unint64_t)index;
@end

@implementation EKCalendarItemLocationInlineEditItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKCalendarItemLocationInlineEditItem" hasInstanceMethod:@"cellForSubitemAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"EKCalendarItemLocationInlineEditItem" hasInstanceMethod:@"_updateClearButtonAndMakeVisible:index:" withFullSignature:{"v", "@", "Q", 0}];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = EKCalendarItemLocationInlineEditItemAccessibility;
  v3 = [(EKCalendarItemLocationInlineEditItemAccessibility *)&v6 cellForSubitemAtIndex:index];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits];

  return v3;
}

- (void)_updateClearButtonAndMakeVisible:(id)visible index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = EKCalendarItemLocationInlineEditItemAccessibility;
  visibleCopy = visible;
  [(EKCalendarItemLocationInlineEditItemAccessibility *)&v7 _updateClearButtonAndMakeVisible:visibleCopy index:index];
  v6 = UIKitAccessibilityLocalizedString();
  [visibleCopy setAccessibilityLabel:{v6, v7.receiver, v7.super_class}];
}

@end