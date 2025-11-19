@interface BridgeNSStringAccessibility
- (void)drawInRect:(CGRect)a3 withAttributes:(id)a4;
@end

@implementation BridgeNSStringAccessibility

- (void)drawInRect:(CGRect)a3 withAttributes:(id)a4
{
  v5.receiver = self;
  v5.super_class = BridgeNSStringAccessibility;
  [(BridgeNSStringAccessibility *)&v5 drawInRect:a4 withAttributes:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [MEMORY[0x29EDBA0F8] _accessibilitySetLastDrawnString:self];
}

@end