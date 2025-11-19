@interface CPContactCallButton
- (CPContactCallButton)initWithHandler:(void *)handler;
@end

@implementation CPContactCallButton

- (CPContactCallButton)initWithHandler:(void *)handler
{
  v4.receiver = self;
  v4.super_class = CPContactCallButton;
  return [(CPButton *)&v4 initWithImage:0 handler:handler];
}

@end