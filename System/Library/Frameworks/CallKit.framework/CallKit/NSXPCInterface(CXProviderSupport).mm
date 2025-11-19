@interface NSXPCInterface(CXProviderSupport)
+ (id)cx_providerHostInterface;
+ (id)cx_providerVendorInterface;
- (id)_cx_providerAllowedClasses;
- (void)cx_setAllowedClassesForProviderHostProtocol;
- (void)cx_setAllowedClassesForProviderVendorProtocol;
@end

@implementation NSXPCInterface(CXProviderSupport)

+ (id)cx_providerHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CA7158];
  [v0 cx_setAllowedClassesForProviderHostProtocol];

  return v0;
}

+ (id)cx_providerVendorInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CA72F0];
  [v0 cx_setAllowedClassesForProviderVendorProtocol];

  return v0;
}

- (id)_cx_providerAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NSXPCInterface_CXProviderSupport___cx_providerAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = a1;
  if (_cx_providerAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_providerAllowedClasses_onceToken, block);
  }

  return _cx_providerAllowedClasses_providerAllowedClasses;
}

- (void)cx_setAllowedClassesForProviderHostProtocol
{
  v2 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_reportNewIncomingCallWithUUID_update_reply_ argumentIndex:1 ofReply:0];

  v3 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v3 forSelector:sel_reportCallWithUUID_updated_ argumentIndex:1 ofReply:0];

  v4 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v4 forSelector:sel_actionCompleted_completionHandler_ argumentIndex:0 ofReply:0];
}

- (void)cx_setAllowedClassesForProviderVendorProtocol
{
  v2 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_commitTransaction_ argumentIndex:0 ofReply:0];
}

@end