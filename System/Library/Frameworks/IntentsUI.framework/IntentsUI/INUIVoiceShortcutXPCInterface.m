@interface INUIVoiceShortcutXPCInterface
+ (id)remoteViewControllerHostingInterface;
+ (id)remoteViewControllerServingInterface;
@end

@implementation INUIVoiceShortcutXPCInterface

+ (id)remoteViewControllerServingInterface
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283FF5AD0];
  v3 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_buildForAddingShortcut_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_buildForEditingVoiceShortcut_ argumentIndex:0 ofReply:0];

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)remoteViewControllerHostingInterface
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283FDEB00];
  v3 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_remoteViewControllerDidCreateVoiceShortcut_error_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_remoteViewControllerDidUpdateVoiceShortcut_error_ argumentIndex:0 ofReply:0];

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end