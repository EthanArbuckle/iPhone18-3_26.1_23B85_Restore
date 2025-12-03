@interface WKInterfaceTimer
- (void)setTextColor:(id)color;
@end

@implementation WKInterfaceTimer

- (void)setTextColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end