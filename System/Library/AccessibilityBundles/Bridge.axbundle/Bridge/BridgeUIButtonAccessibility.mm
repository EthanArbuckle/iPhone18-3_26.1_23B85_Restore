@interface BridgeUIButtonAccessibility
- (void)setImage:(id)image forState:(unint64_t)state;
@end

@implementation BridgeUIButtonAccessibility

- (void)setImage:(id)image forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = BridgeUIButtonAccessibility;
  [(BridgeUIButtonAccessibility *)&v6 setImage:image forState:state];
  _accessibilityLastDrawnString = [MEMORY[0x29EDBA0F8] _accessibilityLastDrawnString];
  if (_accessibilityLastDrawnString)
  {
    [(BridgeUIButtonAccessibility *)self setAccessibilityLabel:_accessibilityLastDrawnString];
    [MEMORY[0x29EDBA0F8] _accessibilitySetLastDrawnString:0];
  }
}

@end