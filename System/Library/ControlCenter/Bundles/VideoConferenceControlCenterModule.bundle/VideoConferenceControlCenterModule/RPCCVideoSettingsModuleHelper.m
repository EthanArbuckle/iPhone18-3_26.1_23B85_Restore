@interface RPCCVideoSettingsModuleHelper
- (RPCCVideoSettingsModuleHelper)init;
- (void)dealloc;
@end

@implementation RPCCVideoSettingsModuleHelper

- (RPCCVideoSettingsModuleHelper)init
{
  v3 = objc_opt_new();

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPCCVideoSettingsModuleHelper;
  [(RPCCVideoSettingsModuleHelper *)&v2 dealloc];
}

@end