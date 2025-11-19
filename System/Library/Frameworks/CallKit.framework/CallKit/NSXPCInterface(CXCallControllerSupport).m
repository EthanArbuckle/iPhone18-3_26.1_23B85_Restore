@interface NSXPCInterface(CXCallControllerSupport)
+ (id)cx_callControllerHostInterface;
+ (id)cx_callControllerVendorInterface;
- (id)_cx_callControllerAllowedClasses;
- (void)_cx_setAllowedClassesForCallControllerHostProtocol;
- (void)_cx_setAllowedClassesForCallControllerVendorProtocol;
@end

@implementation NSXPCInterface(CXCallControllerSupport)

+ (id)cx_callControllerHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB1870];
  [v0 _cx_setAllowedClassesForCallControllerHostProtocol];

  return v0;
}

+ (id)cx_callControllerVendorInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB18D0];
  [v0 _cx_setAllowedClassesForCallControllerVendorProtocol];

  return v0;
}

- (id)_cx_callControllerAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NSXPCInterface_CXCallControllerSupport___cx_callControllerAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = a1;
  if (_cx_callControllerAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_callControllerAllowedClasses_onceToken, block);
  }

  return _cx_callControllerAllowedClasses_providerAllowedClasses;
}

- (void)_cx_setAllowedClassesForCallControllerHostProtocol
{
  v2 = [a1 _cx_callControllerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_requestCalls_ argumentIndex:0 ofReply:1];

  v3 = [a1 _cx_callControllerAllowedClasses];
  [a1 setClasses:v3 forSelector:sel_requestTransaction_reply_ argumentIndex:0 ofReply:0];
}

- (void)_cx_setAllowedClassesForCallControllerVendorProtocol
{
  v2 = [a1 _cx_callControllerAllowedClasses];
  [a1 setClasses:v2 forSelector:sel_addOrUpdateCall_ argumentIndex:0 ofReply:0];

  v3 = [a1 _cx_callControllerAllowedClasses];
  [a1 setClasses:v3 forSelector:sel_removeCall_ argumentIndex:0 ofReply:0];
}

@end