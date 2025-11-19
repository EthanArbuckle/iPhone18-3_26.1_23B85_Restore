@interface LSDIconService
@end

@implementation LSDIconService

void __31___LSDIconService_XPCInterface__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA2688];
  v1 = XPCInterface_interface;
  XPCInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_setAlternateIconName_forIdentifier_iconsDictionary_reply_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_setAlternateIconName_forIdentifier_iconsDictionary_reply_ argumentIndex:1 ofReply:0];
  [XPCInterface_interface setClasses:v4 forSelector:sel_setAlternateIconName_forIdentifier_iconsDictionary_reply_ argumentIndex:2 ofReply:0];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_setAlternateIconName_forIdentifier_iconsDictionary_reply_ argumentIndex:1 ofReply:1];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_getAlternateIconNameForIdentifier_reply_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_getAlternateIconNameForIdentifier_reply_ argumentIndex:1 ofReply:1];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_setAlternateIconNameForCurrentApplication_completionHandler_ argumentIndex:0 ofReply:0];
  [XPCInterface_interface setClass:objc_opt_class() forSelector:sel_setAlternateIconNameForCurrentApplication_completionHandler_ argumentIndex:1 ofReply:1];

  v5 = *MEMORY[0x1E69E9840];
}

@end