@interface EventTap
+ (EventTap)eventTapWithHandler:(id)handler;
- (EventTap)initWithHandler:(id)handler;
@end

@implementation EventTap

- (EventTap)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = EventTap;
  v5 = [(EventTap *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

+ (EventTap)eventTapWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] initWithHandler:handlerCopy];

  return v5;
}

@end