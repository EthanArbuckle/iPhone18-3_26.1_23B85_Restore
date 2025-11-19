@interface LNDaemonConnectionListener
- (LNDaemonConnectionListener)initWithBundleIdentifier:(id)a3;
@end

@implementation LNDaemonConnectionListener

- (LNDaemonConnectionListener)initWithBundleIdentifier:(id)a3
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.appintents.client-connection-queue", v5);

  v8 = objc_alloc(MEMORY[0x1E696B0D8]);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.private.appintents.delegate.%@", v6];

  v10 = [v8 initWithMachServiceName:v9];
  v13.receiver = self;
  v13.super_class = LNDaemonConnectionListener;
  v11 = [(LNConnectionListener *)&v13 initWithListener:v10 clientConnectionQueue:v7];

  return v11;
}

@end