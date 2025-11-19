@interface WKInterfaceTimer
- (void)setTextColor:(id)a3;
@end

@implementation WKInterfaceTimer

- (void)setTextColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end