@interface PassThroughViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassThroughViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(PassThroughViewAccessibility *)self hitTest:eventCopy withEvent:x, y];
  if (![v8 isAccessibilityElement])
  {
    goto LABEL_4;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __64__PassThroughViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
  v12[3] = &unk_29F2CC628;
  v12[4] = self;
  v12[5] = &v13;
  [v8 accessibilityEnumerateAncestorsUsingBlock:v12];
  if (v14[3])
  {
    _Block_object_dispose(&v13, 8);
LABEL_4:
    v11.receiver = self;
    v11.super_class = PassThroughViewAccessibility;
    v9 = [(PassThroughViewAccessibility *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
    goto LABEL_6;
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
LABEL_6:

  return v9;
}

uint64_t __64__PassThroughViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isAccessibilityElement] && *(a1 + 32) != v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return MEMORY[0x2A1C71028]();
}

@end