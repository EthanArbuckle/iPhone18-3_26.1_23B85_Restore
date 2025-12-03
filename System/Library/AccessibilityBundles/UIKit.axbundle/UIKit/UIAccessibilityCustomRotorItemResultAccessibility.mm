@interface UIAccessibilityCustomRotorItemResultAccessibility
- (UIAccessibilityCustomRotorItemResultAccessibility)init;
- (id)description;
@end

@implementation UIAccessibilityCustomRotorItemResultAccessibility

- (UIAccessibilityCustomRotorItemResultAccessibility)init
{
  v7[1] = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = UIAccessibilityCustomRotorItemResultAccessibility;
  v8 = [(UIAccessibilityCustomRotorItemResultAccessibility *)&v6 init];
  v7[0] = MEMORY[0x29EDC9748](v8);
  v3 = v7[0];
  uUID = [MEMORY[0x29EDBA140] UUID];
  [v3 setUuid:?];
  MEMORY[0x29EDC9740](uUID);
  v5 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)description
{
  selfCopy = self;
  v9 = a2;
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = UIAccessibilityCustomRotorItemResultAccessibility;
  v6 = [(UIAccessibilityCustomRotorItemResultAccessibility *)&v8 description];
  targetElement = [(UIAccessibilityCustomRotorItemResultAccessibility *)selfCopy targetElement];
  targetRange = [(UIAccessibilityCustomRotorItemResultAccessibility *)selfCopy targetRange];
  v7 = [v3 stringWithFormat:@"%@: targetElement: %@, targetRange: %@", v6, targetElement, targetRange];
  MEMORY[0x29EDC9740](targetRange);
  MEMORY[0x29EDC9740](targetElement);
  MEMORY[0x29EDC9740](v6);

  return v7;
}

@end