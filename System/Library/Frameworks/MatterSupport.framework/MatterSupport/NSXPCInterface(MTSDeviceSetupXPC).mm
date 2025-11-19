@interface NSXPCInterface(MTSDeviceSetupXPC)
+ (id)mts_deviceSetupExtensionInterface;
@end

@implementation NSXPCInterface(MTSDeviceSetupXPC)

+ (id)mts_deviceSetupExtensionInterface
{
  v14[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C4C618];
  v1 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_fetchRoomsInHome_completionHandler_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_selectWiFiNetworkFromScanResults_completionHandler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_selectThreadNetworkFromScanResults_completionHandler_ argumentIndex:0 ofReply:0];

  v10 = *MEMORY[0x277D85DE8];

  return v0;
}

@end