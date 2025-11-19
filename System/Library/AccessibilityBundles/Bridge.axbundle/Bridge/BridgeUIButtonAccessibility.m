@interface BridgeUIButtonAccessibility
- (void)setImage:(id)a3 forState:(unint64_t)a4;
@end

@implementation BridgeUIButtonAccessibility

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = BridgeUIButtonAccessibility;
  [(BridgeUIButtonAccessibility *)&v6 setImage:a3 forState:a4];
  v5 = [MEMORY[0x29EDBA0F8] _accessibilityLastDrawnString];
  if (v5)
  {
    [(BridgeUIButtonAccessibility *)self setAccessibilityLabel:v5];
    [MEMORY[0x29EDBA0F8] _accessibilitySetLastDrawnString:0];
  }
}

@end