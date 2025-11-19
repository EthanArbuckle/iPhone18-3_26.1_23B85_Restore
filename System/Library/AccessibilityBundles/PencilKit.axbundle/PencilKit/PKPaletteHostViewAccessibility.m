@interface PKPaletteHostViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axToolPaletteLocationAlongEdge:(int64_t)a3;
- (id)_axToolPaletteLocationAtCorner:(unint64_t)a3;
@end

@implementation PKPaletteHostViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaletteHostView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PKPaletteHostView" hasInstanceMethod:@"_dockPaletteToPosition:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"PKPaletteHostView" hasInstanceMethod:@"isPaletteVisible" withFullSignature:{"B", 0}];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = MEMORY[0x29EDC8008];
  v8 = *MEMORY[0x29EDC8008];
  v9 = a4;
  [v8 _accessibilitySetBoolValue:1 forKey:@"AXIsHitTestingPKPaletteHostViewKey"];
  v12.receiver = self;
  v12.super_class = PKPaletteHostViewAccessibility;
  v10 = [(PKPaletteHostViewAccessibility *)&v12 _accessibilityHitTest:v9 withEvent:x, y];

  [*v7 _accessibilitySetBoolValue:0 forKey:@"AXIsHitTestingPKPaletteHostViewKey"];

  return v10;
}

- (id)_axToolPaletteLocationAlongEdge:(int64_t)a3
{
  v4 = accessibilityPencilKitLocalizedString(@"tool.palette.location.edge.format");
  if ((a3 - 1) > 7)
  {
    v5 = @"tool.palette.location.edge.unknown";
  }

  else
  {
    v5 = off_29F2E3F88[a3 - 1];
  }

  v6 = accessibilityPencilKitLocalizedString(v5);
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:v4, v6];

  return v7;
}

- (id)_axToolPaletteLocationAtCorner:(unint64_t)a3
{
  v3 = accessibilityPencilKitLocalizedString(@"tool.palette.location.corner.format");
  v4 = accessibilityPencilKitLocalizedString(@"tool.palette.location.corner.unknown");
  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:v3, v4];

  return v5;
}

@end