@interface SKLabelNodeAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation SKLabelNodeAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKLabelNode" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"alpha" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SKNode" hasInstanceMethod:@"isHidden" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SKLabelNodeAccessibility *)self safeValueForKey:@"text"];
  if ([v3 length] && (-[SKLabelNodeAccessibility safeCGFloatForKey:](self, "safeCGFloatForKey:", @"alpha"), v4 > 0.0))
  {
    v5 = [(SKLabelNodeAccessibility *)self safeBoolForKey:@"isHidden"]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = SKLabelNodeAccessibility;
  accessibilityLabel = [(SKLabelNodeAccessibility *)&v5 accessibilityLabel];
  if (!accessibilityLabel)
  {
    accessibilityLabel = [(SKLabelNodeAccessibility *)self safeValueForKey:@"text"];
  }

  return accessibilityLabel;
}

@end