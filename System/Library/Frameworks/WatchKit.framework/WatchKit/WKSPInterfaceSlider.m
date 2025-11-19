@interface WKSPInterfaceSlider
- (void)setValue:(float)a3;
@end

@implementation WKSPInterfaceSlider

- (void)setValue:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
}

@end