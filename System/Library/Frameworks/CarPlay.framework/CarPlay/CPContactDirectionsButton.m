@interface CPContactDirectionsButton
- (CPContactDirectionsButton)initWithHandler:(void *)handler;
@end

@implementation CPContactDirectionsButton

- (CPContactDirectionsButton)initWithHandler:(void *)handler
{
  v4.receiver = self;
  v4.super_class = CPContactDirectionsButton;
  return [(CPButton *)&v4 initWithImage:0 handler:handler];
}

@end