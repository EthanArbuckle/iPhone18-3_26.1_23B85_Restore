@interface TabDocumentViewAccessibility
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabDocumentViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TabDocumentViewAccessibility;
  [(TabDocumentViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  uUID = [MEMORY[0x29EDBA140] UUID];
  uUIDString = [uUID UUIDString];
  [(TabDocumentViewAccessibility *)self _accessibilitySetRetainedValue:uUIDString forKey:@"tabDocumentViewIdentifier"];
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  if (value == 5074)
  {
    v3 = [(TabDocumentViewAccessibility *)self _accessibilityValueForKey:@"tabDocumentViewIdentifier"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TabDocumentViewAccessibility;
    v3 = [(TabDocumentViewAccessibility *)&v5 _iosAccessibilityAttributeValue:?];
  }

  return v3;
}

@end