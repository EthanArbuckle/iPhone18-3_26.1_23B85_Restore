@interface XPCInterface
+ (id)CTCSCreateXPCTransportInterface;
+ (id)CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords;
+ (id)CTCSGetExpectedClassesForOptionsOverXPCInterface;
+ (void)CTCSSetExpectedClassesForXPCBrokerInterface:(id)interface;
@end

@implementation XPCInterface

+ (id)CTCSGetExpectedClassesForOptionsOverXPCInterface
{
  if (CTCSGetExpectedClassesForOptionsOverXPCInterface_onceToken != -1)
  {
    +[XPCInterface CTCSGetExpectedClassesForOptionsOverXPCInterface];
  }

  v3 = CTCSGetExpectedClassesForOptionsOverXPCInterface_classes;

  return v3;
}

uint64_t __64__XPCInterface_CTCSGetExpectedClassesForOptionsOverXPCInterface__block_invoke()
{
  v11 = MEMORY[0x277CBEB98];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  CTCSGetExpectedClassesForOptionsOverXPCInterface_classes = [v11 setWithObjects:{v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords
{
  if (CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords_onceToken != -1)
  {
    +[XPCInterface CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords];
  }

  v3 = CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords_classes;

  return v3;
}

uint64_t __73__XPCInterface_CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords__block_invoke()
{
  v14 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords_classes = [v14 setWithObjects:{v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (void)CTCSSetExpectedClassesForXPCBrokerInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = +[XPCInterface CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveListOfPreferredNetworkEntriesInternallyWithCompletion_ipV4NwSignature_ipv6NwSignature_wifiSSID_showCurrentEntry_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerStoreThreadNetworkCredentialActiveDataSet_credentialsDataSet_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerStoreThreadNetworkCredentialActiveDataSetInternally_network_credentialsDataSet_waitForSync_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerStoreCachedAODasPreferredNetwork_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsValidateAODInternally_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerDeletePreferredNetworkWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerCleanKeychainThreadNetworksWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrievePreferredNetworkWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrievePreferredNetworkInternallyWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveActiveDataSetRecordWithXPANId_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsIsPreferredNetworkForActiveOperationalDataset_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveIsPreferredNetworkAvailable_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId_completion_ argumentIndex:0 ofReply:1];
  [interfaceCopy setClasses:v4 forSelector:sel_ctcsUpdatePreferredNetworkInternallyWithCompletion_ argumentIndex:0 ofReply:1];
}

+ (id)CTCSCreateXPCTransportInterface
{
  if (CTCSCreateXPCTransportInterface_onceToken != -1)
  {
    +[XPCInterface CTCSCreateXPCTransportInterface];
  }

  v3 = CTCSCreateXPCTransportInterface_interface;

  return v3;
}

uint64_t __47__XPCInterface_CTCSCreateXPCTransportInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DB5DA8];
  v1 = CTCSCreateXPCTransportInterface_interface;
  CTCSCreateXPCTransportInterface_interface = v0;

  v2 = CTCSCreateXPCTransportInterface_interface;

  return [XPCInterface CTCSSetExpectedClassesForXPCBrokerInterface:v2];
}

@end