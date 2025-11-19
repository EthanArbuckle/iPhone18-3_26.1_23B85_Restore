@interface ASDTestFlightServiceExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation ASDTestFlightServiceExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_40 != -1)
  {
    dispatch_once(&_MergedGlobals_40, &__block_literal_global_15);
  }

  v3 = qword_1ED90D570;

  return v3;
}

uint64_t __71__ASDTestFlightServiceExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_1ED90D570 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F303EE48];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED90D578 != -1)
  {
    dispatch_once(&qword_1ED90D578, &__block_literal_global_43_0);
  }

  v3 = qword_1ED90D580;

  return v3;
}

void __73__ASDTestFlightServiceExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F303E8D8];
  v1 = qword_1ED90D580;
  qword_1ED90D580 = v0;

  v2 = qword_1ED90D580;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_didReceivePushMessages_reply_ argumentIndex:0 ofReply:0];
}

@end