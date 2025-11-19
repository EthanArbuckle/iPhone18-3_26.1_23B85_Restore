@interface SODaemonListener
- (SODaemonListener)initWithMachServiceName:(id)a3;
@end

@implementation SODaemonListener

- (SODaemonListener)initWithMachServiceName:(id)a3
{
  v6.receiver = self;
  v6.super_class = SODaemonListener;
  v3 = [(SODaemonListener *)&v6 initWithMachServiceName:a3];
  v4 = v3;
  if (v3)
  {
    [(SODaemonListener *)v3 setDelegate:v3];
  }

  return v4;
}

@end