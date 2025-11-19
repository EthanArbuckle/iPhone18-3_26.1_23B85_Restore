@interface TabDocumentViewAccessibility
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabDocumentViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TabDocumentViewAccessibility;
  [(TabDocumentViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA140] UUID];
  v4 = [v3 UUIDString];
  [(TabDocumentViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:@"tabDocumentViewIdentifier"];
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  if (a3 == 5074)
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