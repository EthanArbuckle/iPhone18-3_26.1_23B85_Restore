@interface NSXPCInterface(CXVoicemailProviderSupport)
+ (id)cx_voicemailProviderHostInterface;
+ (id)cx_voicemailProviderVendorInterface;
- (id)_cx_voicemailProviderAllowedClasses;
- (void)cx_setAllowedClassesForVoicemailProviderHostProtocol;
- (void)cx_setAllowedClassesForVoicemailProviderVendorProtocol;
@end

@implementation NSXPCInterface(CXVoicemailProviderSupport)

+ (id)cx_voicemailProviderHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB05D0];
  [v0 cx_setAllowedClassesForVoicemailProviderHostProtocol];

  return v0;
}

+ (id)cx_voicemailProviderVendorInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB0630];
  [v0 cx_setAllowedClassesForVoicemailProviderVendorProtocol];

  return v0;
}

- (id)_cx_voicemailProviderAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__NSXPCInterface_CXVoicemailProviderSupport___cx_voicemailProviderAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = a1;
  if (_cx_voicemailProviderAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_voicemailProviderAllowedClasses_onceToken, block);
  }

  return _cx_voicemailProviderAllowedClasses_voicemailProviderAllowedClasses;
}

- (void)cx_setAllowedClassesForVoicemailProviderHostProtocol
{
  v2 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_reportNewVoicemailsWithUpdates_ argumentIndex:0 ofReply:0];

  v3 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v3 forSelector:sel_reportVoicemailsUpdated_ argumentIndex:0 ofReply:0];

  v4 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v4 forSelector:sel_reportVoicemailsRemovedWithUUIDs_ argumentIndex:0 ofReply:0];
}

- (void)cx_setAllowedClassesForVoicemailProviderVendorProtocol
{
  v2 = [a1 _cx_providerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_commitTransaction_ argumentIndex:0 ofReply:0];
}

@end