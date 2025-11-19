@interface RPCCAudioSettingsModuleHelper
- (RPCCAudioSettingsModuleHelper)init;
- (void)dealloc;
@end

@implementation RPCCAudioSettingsModuleHelper

- (RPCCAudioSettingsModuleHelper)init
{
  v3 = objc_opt_new();

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPCCAudioSettingsModuleHelper;
  [(RPCCAudioSettingsModuleHelper *)&v2 dealloc];
}

@end