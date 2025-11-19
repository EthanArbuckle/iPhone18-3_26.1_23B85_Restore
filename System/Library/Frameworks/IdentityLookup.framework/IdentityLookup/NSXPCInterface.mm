@interface NSXPCInterface
@end

@implementation NSXPCInterface

uint64_t __51__NSXPCInterface_IL__il_messageFilterHostInterface__block_invoke()
{
  il_messageFilterHostInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B62E70];

  return MEMORY[0x2821F96F8]();
}

uint64_t __69__NSXPCInterface_IL_Internal__il_messageFilterExtensionHostInterface__block_invoke()
{
  il_messageFilterExtensionHostInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B5FBC0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __71__NSXPCInterface_IL_Internal__il_messageFilterExtensionVendorInterface__block_invoke()
{
  il_messageFilterExtensionVendorInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B605B0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __72__NSXPCInterface_IL_Internal__il_classificationUIExtensionHostInterface__block_invoke()
{
  il_classificationUIExtensionHostInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B62ED0];

  return MEMORY[0x2821F96F8]();
}

void __74__NSXPCInterface_IL_Internal__il_classificationUIExtensionVendorInterface__block_invoke()
{
  v17[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B62F30];
  v1 = il_classificationUIExtensionVendorInterface_interface;
  il_classificationUIExtensionVendorInterface_interface = v0;

  v2 = il_classificationUIExtensionVendorInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_classificationResponseForRequest_completion_ argumentIndex:0 ofReply:0];

  v6 = il_classificationUIExtensionVendorInterface_interface;
  v7 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_classificationResponseForRequest_completion_ argumentIndex:0 ofReply:1];

  v10 = il_classificationUIExtensionVendorInterface_interface;
  v11 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v15[4] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_prepareForClassificationRequest_ argumentIndex:0 ofReply:0];

  v14 = *MEMORY[0x277D85DE8];
}

@end