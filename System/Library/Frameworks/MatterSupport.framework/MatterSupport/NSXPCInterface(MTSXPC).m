@interface NSXPCInterface(MTSXPC)
+ (id)mts_serverInterface;
@end

@implementation NSXPCInterface(MTSXPC)

+ (id)mts_serverInterface
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C4D720];
  v1 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_fetchSystemCommissionerPairingsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_fetchDevicePairingsForSystemCommissionerPairingUUID_completionHandler_ argumentIndex:0 ofReply:1];

  v7 = *MEMORY[0x277D85DE8];

  return v0;
}

@end