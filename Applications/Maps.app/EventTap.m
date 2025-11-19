@interface EventTap
+ (EventTap)eventTapWithHandler:(id)a3;
- (EventTap)initWithHandler:(id)a3;
@end

@implementation EventTap

- (EventTap)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EventTap;
  v5 = [(EventTap *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

+ (EventTap)eventTapWithHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandler:v4];

  return v5;
}

@end