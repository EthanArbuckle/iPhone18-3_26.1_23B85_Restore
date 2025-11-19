@interface CMIOExtensionDiscoverySessionRegistration
- (BOOL)isRetryAllowed;
- (CMIOExtensionDiscoverySessionRegistration)initWithBundleID:(id)a3 token:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CMIOExtensionDiscoverySessionRegistration

- (CMIOExtensionDiscoverySessionRegistration)initWithBundleID:(id)a3 token:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = CMIOExtensionDiscoverySessionRegistration;
  v6 = [(CMIOExtensionDiscoverySessionRegistration *)&v8 init];
  if (v6)
  {
    v6->_bundleID = a3;
    v6->_token = a4;
    v6->_numOfRetryAttempts = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionDiscoverySessionRegistration;
  [(CMIOExtensionDiscoverySessionRegistration *)&v3 dealloc];
}

- (BOOL)isRetryAllowed
{
  v3 = [(NSString *)self->_bundleID isEqualToString:@"com.apple.cmio.ContinuityCaptureAgent"];
  if (v3)
  {
    LOBYTE(v3) = self->_numOfRetryAttempts < 5;
  }

  return v3;
}

@end