@interface SODaemonListener
- (SODaemonListener)initWithMachServiceName:(id)name;
@end

@implementation SODaemonListener

- (SODaemonListener)initWithMachServiceName:(id)name
{
  v6.receiver = self;
  v6.super_class = SODaemonListener;
  v3 = [(SODaemonListener *)&v6 initWithMachServiceName:name];
  v4 = v3;
  if (v3)
  {
    [(SODaemonListener *)v3 setDelegate:v3];
  }

  return v4;
}

@end