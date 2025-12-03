@interface PKPaletteHostViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axToolPaletteLocationAlongEdge:(int64_t)edge;
- (id)_axToolPaletteLocationAtCorner:(unint64_t)corner;
@end

@implementation PKPaletteHostViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaletteHostView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PKPaletteHostView" hasInstanceMethod:@"_dockPaletteToPosition:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"PKPaletteHostView" hasInstanceMethod:@"isPaletteVisible" withFullSignature:{"B", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v7 = MEMORY[0x29EDC8008];
  v8 = *MEMORY[0x29EDC8008];
  eventCopy = event;
  [v8 _accessibilitySetBoolValue:1 forKey:@"AXIsHitTestingPKPaletteHostViewKey"];
  v12.receiver = self;
  v12.super_class = PKPaletteHostViewAccessibility;
  v10 = [(PKPaletteHostViewAccessibility *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];

  [*v7 _accessibilitySetBoolValue:0 forKey:@"AXIsHitTestingPKPaletteHostViewKey"];

  return v10;
}

- (id)_axToolPaletteLocationAlongEdge:(int64_t)edge
{
  v4 = accessibilityPencilKitLocalizedString(@"tool.palette.location.edge.format");
  if ((edge - 1) > 7)
  {
    v5 = @"tool.palette.location.edge.unknown";
  }

  else
  {
    v5 = off_29F2E3F88[edge - 1];
  }

  v6 = accessibilityPencilKitLocalizedString(v5);
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:v4, v6];

  return v7;
}

- (id)_axToolPaletteLocationAtCorner:(unint64_t)corner
{
  v3 = accessibilityPencilKitLocalizedString(@"tool.palette.location.corner.format");
  v4 = accessibilityPencilKitLocalizedString(@"tool.palette.location.corner.unknown");
  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:v3, v4];

  return v5;
}

@end