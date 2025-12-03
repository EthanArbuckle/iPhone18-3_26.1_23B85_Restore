@interface ListenerWithDelegate
- (ListenerWithDelegate)initWithMachServiceName:(id)name;
@end

@implementation ListenerWithDelegate

- (ListenerWithDelegate)initWithMachServiceName:(id)name
{
  v6.receiver = self;
  v6.super_class = ListenerWithDelegate;
  v3 = [(ListenerWithDelegate *)&v6 initWithMachServiceName:name];
  v4 = v3;
  if (v3)
  {
    [(ListenerWithDelegate *)v3 setDelegate:v3];
  }

  return v4;
}

@end