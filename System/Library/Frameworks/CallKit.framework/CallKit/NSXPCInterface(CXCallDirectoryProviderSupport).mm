@interface NSXPCInterface(CXCallDirectoryProviderSupport)
+ (id)cx_callDirectoryProviderHostInterface;
- (id)_cx_callDirectoryProviderAllowedClasses;
- (void)_cx_setAllowedClassesForCallDirectoryProviderHostProtocol;
@end

@implementation NSXPCInterface(CXCallDirectoryProviderSupport)

+ (id)cx_callDirectoryProviderHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CAC660];
  [v0 _cx_setAllowedClassesForCallDirectoryProviderHostProtocol];

  return v0;
}

- (void)_cx_setAllowedClassesForCallDirectoryProviderHostProtocol
{
  _cx_callDirectoryProviderAllowedClasses = [self _cx_callDirectoryProviderAllowedClasses];
  [self setClasses:_cx_callDirectoryProviderAllowedClasses forSelector:sel_addBlockingEntriesWithData_reply_ argumentIndex:0 ofReply:0];

  _cx_callDirectoryProviderAllowedClasses2 = [self _cx_callDirectoryProviderAllowedClasses];
  [self setClasses:_cx_callDirectoryProviderAllowedClasses2 forSelector:sel_addIdentificationEntriesWithData_reply_ argumentIndex:0 ofReply:0];
}

- (id)_cx_callDirectoryProviderAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__NSXPCInterface_CXCallDirectoryProviderSupport___cx_callDirectoryProviderAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  if (_cx_callDirectoryProviderAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_callDirectoryProviderAllowedClasses_onceToken, block);
  }

  return _cx_callDirectoryProviderAllowedClasses_allowedClasses;
}

@end