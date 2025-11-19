@interface WKInterfaceSlider
- (void)setColor:(id)a3;
- (void)setNumberOfSteps:(int64_t)a3;
- (void)setValue:(float)a3;
@end

@implementation WKInterfaceSlider

- (void)setValue:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"#value"];
}

- (void)setColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

- (void)setNumberOfSteps:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"steps"];
}

@end