@interface WKSPInterfaceSlider
- (void)setValue:(float)value;
@end

@implementation WKSPInterfaceSlider

- (void)setValue:(float)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
}

@end