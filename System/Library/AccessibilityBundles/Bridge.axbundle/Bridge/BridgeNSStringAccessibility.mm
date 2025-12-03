@interface BridgeNSStringAccessibility
- (void)drawInRect:(CGRect)rect withAttributes:(id)attributes;
@end

@implementation BridgeNSStringAccessibility

- (void)drawInRect:(CGRect)rect withAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = BridgeNSStringAccessibility;
  [(BridgeNSStringAccessibility *)&v5 drawInRect:attributes withAttributes:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [MEMORY[0x29EDBA0F8] _accessibilitySetLastDrawnString:self];
}

@end