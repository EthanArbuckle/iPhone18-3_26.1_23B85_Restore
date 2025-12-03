@interface LNDaemonConnectionListener
- (LNDaemonConnectionListener)initWithBundleIdentifier:(id)identifier;
@end

@implementation LNDaemonConnectionListener

- (LNDaemonConnectionListener)initWithBundleIdentifier:(id)identifier
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  identifierCopy = identifier;
  v7 = dispatch_queue_create("com.apple.appintents.client-connection-queue", v5);

  v8 = objc_alloc(MEMORY[0x1E696B0D8]);
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.private.appintents.delegate.%@", identifierCopy];

  v10 = [v8 initWithMachServiceName:identifierCopy];
  v13.receiver = self;
  v13.super_class = LNDaemonConnectionListener;
  v11 = [(LNConnectionListener *)&v13 initWithListener:v10 clientConnectionQueue:v7];

  return v11;
}

@end