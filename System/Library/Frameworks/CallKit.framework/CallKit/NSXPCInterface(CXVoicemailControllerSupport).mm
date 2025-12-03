@interface NSXPCInterface(CXVoicemailControllerSupport)
+ (id)cx_voicemailControllerHostInterface;
+ (id)cx_voicemailControllerVendorInterface;
- (id)_cx_voicemailControllerAllowedClasses;
- (void)_cx_setAllowedClassesForVoicemailControllerHostProtocol;
- (void)_cx_setAllowedClassesForVoicemailControllerVendorProtocol;
@end

@implementation NSXPCInterface(CXVoicemailControllerSupport)

+ (id)cx_voicemailControllerHostInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB2448];
  [v0 _cx_setAllowedClassesForVoicemailControllerHostProtocol];

  return v0;
}

+ (id)cx_voicemailControllerVendorInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB24A8];
  [v0 _cx_setAllowedClassesForVoicemailControllerVendorProtocol];

  return v0;
}

- (id)_cx_voicemailControllerAllowedClasses
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__NSXPCInterface_CXVoicemailControllerSupport___cx_voicemailControllerAllowedClasses__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  if (_cx_voicemailControllerAllowedClasses_onceToken != -1)
  {
    dispatch_once(&_cx_voicemailControllerAllowedClasses_onceToken, block);
  }

  return _cx_voicemailControllerAllowedClasses_voicemailControllerAllowedClasses;
}

- (void)_cx_setAllowedClassesForVoicemailControllerHostProtocol
{
  _cx_voicemailControllerAllowedClasses = [self _cx_voicemailControllerAllowedClasses];
  [self setClasses:_cx_voicemailControllerAllowedClasses forSelector:sel_requestVoicemails_ argumentIndex:0 ofReply:1];

  _cx_voicemailControllerAllowedClasses2 = [self _cx_voicemailControllerAllowedClasses];
  [self setClasses:_cx_voicemailControllerAllowedClasses2 forSelector:sel_requestTransaction_reply_ argumentIndex:0 ofReply:0];
}

- (void)_cx_setAllowedClassesForVoicemailControllerVendorProtocol
{
  _cx_voicemailControllerAllowedClasses = [self _cx_voicemailControllerAllowedClasses];
  [self setClasses:_cx_voicemailControllerAllowedClasses forSelector:sel_addOrUpdateVoicemails_ argumentIndex:0 ofReply:0];

  _cx_voicemailControllerAllowedClasses2 = [self _cx_voicemailControllerAllowedClasses];
  [self setClasses:_cx_voicemailControllerAllowedClasses2 forSelector:sel_removeVoicemails_ argumentIndex:0 ofReply:0];
}

@end