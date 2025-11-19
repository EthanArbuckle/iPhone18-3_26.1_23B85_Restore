@interface WKSPInterfaceGroup
- (void)setBackgroundColor:(id)a3;
@end

@implementation WKSPInterfaceGroup

- (void)setBackgroundColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end