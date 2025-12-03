@interface BTAudioSmartRouteSession
- (BTAudioSmartRouteSession)init;
- (BTAudioSmartRouteSession)initWithbundleID:(id)d;
- (void)dealloc;
@end

@implementation BTAudioSmartRouteSession

- (void)dealloc
{
  v3 = qword_D8520;
  if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = self->_bundleID;
    *buf = 138412290;
    v7 = bundleID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Release Bluetooth Smart Route Session in Route Manager %@ ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = BTAudioSmartRouteSession;
  [(BTAudioSmartRouteSession *)&v5 dealloc];
}

- (BTAudioSmartRouteSession)initWithbundleID:(id)d
{
  v8.receiver = self;
  v8.super_class = BTAudioSmartRouteSession;
  v4 = [(BTAudioSmartRouteSession *)&v8 init];
  v5 = [[NSString alloc] initWithString:d];
  v4->_bundleID = v5;
  v6 = qword_D8520;
  if (os_log_type_enabled(qword_D8520, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Initialize Bluetooth Audio Smart Route Session in Route Manager %@ ", buf, 0xCu);
  }

  return v4;
}

- (BTAudioSmartRouteSession)init
{
  v3.receiver = self;
  v3.super_class = BTAudioSmartRouteSession;
  return [(BTAudioSmartRouteSession *)&v3 init];
}

@end