@interface MediaControlsExpandableButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setSelectedOptionIndex:(int64_t)index;
@end

@implementation MediaControlsExpandableButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"setSelectedOptionIndex:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"subtitleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"messageLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceMethod:@"toggleEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MediaControlsExpandableButton" hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
}

- (id)accessibilityLabel
{
  v2 = [(MediaControlsExpandableButtonAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(MediaControlsExpandableButtonAccessibility *)self safeUIViewForKey:@"subtitleView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MediaControlsExpandableButtonAccessibility *)self safeUIViewForKey:@"messageLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(MediaControlsExpandableButtonAccessibility *)self safeBoolForKey:@"toggleEnabled"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v13 = 0;
  objc_opt_class();
  v3 = [(MediaControlsExpandableButtonAccessibility *)self safeArrayForKey:@"_buttons"];
  firstObject = [v3 firstObject];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    [v5 accessibilityActivationPoint];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MediaControlsExpandableButtonAccessibility;
    [(MediaControlsExpandableButtonAccessibility *)&v12 accessibilityActivationPoint];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setSelectedOptionIndex:(int64_t)index
{
  v7.receiver = self;
  v7.super_class = MediaControlsExpandableButtonAccessibility;
  [(MediaControlsExpandableButtonAccessibility *)&v7 setSelectedOptionIndex:?];
  v5 = [(MediaControlsExpandableButtonAccessibility *)self safeArrayForKey:@"_buttons"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __69__MediaControlsExpandableButtonAccessibility_setSelectedOptionIndex___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v32__0__NSObject_8Q16_B24l;
  v6[4] = index;
  [v5 enumerateObjectsUsingBlock:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

void __69__MediaControlsExpandableButtonAccessibility_setSelectedOptionIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = a2;
  v5 = [v8 accessibilityTraits];
  v6 = *MEMORY[0x29EDC7FC0] | v5;
  if (v4 == a3)
  {
    v7 = *MEMORY[0x29EDC7FC0] | v5;
  }

  else
  {
    v7 = v5 & ~*MEMORY[0x29EDC7FC0];
  }

  [v8 setAccessibilityTraits:v7];
}

@end