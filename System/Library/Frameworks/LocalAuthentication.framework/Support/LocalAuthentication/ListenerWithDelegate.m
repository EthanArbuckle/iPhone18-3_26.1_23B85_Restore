@interface ListenerWithDelegate
- (ListenerWithDelegate)initWithMachServiceName:(id)a3;
@end

@implementation ListenerWithDelegate

- (ListenerWithDelegate)initWithMachServiceName:(id)a3
{
  v6.receiver = self;
  v6.super_class = ListenerWithDelegate;
  v3 = [(ListenerWithDelegate *)&v6 initWithMachServiceName:a3];
  v4 = v3;
  if (v3)
  {
    [(ListenerWithDelegate *)v3 setDelegate:v3];
  }

  return v4;
}

@end