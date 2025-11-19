void sub_21571C114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21571C824(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id ASCServiceBrokerGetInterface()
{
  if (ASCServiceBrokerGetInterface_onceToken != -1)
  {
    ASCServiceBrokerGetInterface_cold_1();
  }

  v1 = ASCServiceBrokerGetInterface_interface;

  return v1;
}

void __ASCServiceBrokerGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827F51B8];
  v1 = ASCServiceBrokerGetInterface_interface;
  ASCServiceBrokerGetInterface_interface = v0;

  v2 = ASCServiceBrokerGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_testConnectionWithReplyHandler_ argumentIndex:0 ofReply:1];

  v4 = ASCServiceBrokerGetInterface_interface;
  v5 = ASCAppOfferStateDelegateGetInterface();
  [v4 setInterface:v5 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v6 = ASCServiceBrokerGetInterface_interface;
  v7 = ASCAppOfferStateServiceGetInterface();
  [v6 setInterface:v7 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v8 = ASCServiceBrokerGetInterface_interface;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:1 ofReply:1];

  v10 = ASCServiceBrokerGetInterface_interface;
  v11 = ASCUtilityServiceGetInterface();
  [v10 setInterface:v11 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = ASCServiceBrokerGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v14 = ASCServiceBrokerGetInterface_interface;
  v15 = ASCLockupFetcherServiceGetInterface();
  [v14 setInterface:v15 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = ASCServiceBrokerGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v18 = ASCServiceBrokerGetInterface_interface;
  v19 = ASCMetricsServiceGetInterface();
  [v18 setInterface:v19 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = ASCServiceBrokerGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCAppOfferStateDelegateGetInterface()
{
  if (ASCAppOfferStateDelegateGetInterface_onceToken != -1)
  {
    ASCAppOfferStateDelegateGetInterface_cold_1();
  }

  v1 = ASCAppOfferStateDelegateGetInterface_interface;

  return v1;
}

void __ASCAppOfferStateDelegateGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827B9110];
  v1 = ASCAppOfferStateDelegateGetInterface_interface;
  ASCAppOfferStateDelegateGetInterface_interface = v0;

  v2 = ASCAppOfferStateDelegateGetInterface_interface;
  v3 = ASCOfferGetCodableClasses();
  [v2 setClasses:v3 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:0 ofReply:0];

  v4 = ASCAppOfferStateDelegateGetInterface_interface;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:1 ofReply:0];

  v6 = ASCAppOfferStateDelegateGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:2 ofReply:0];

  v8 = ASCAppOfferStateDelegateGetInterface_interface;
  v9 = ASCOfferGetCodableClasses();
  [v8 setClasses:v9 forSelector:sel_offer_didChangeStatusText_ argumentIndex:0 ofReply:0];

  v10 = ASCAppOfferStateDelegateGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_offer_didChangeStatusText_ argumentIndex:1 ofReply:0];
}

id ASCOfferGetCodableClasses()
{
  if (ASCOfferGetCodableClasses_onceToken != -1)
  {
    ASCOfferGetCodableClasses_cold_1();
  }

  v1 = ASCOfferGetCodableClasses_classes;

  return v1;
}

uint64_t __ASCOfferGetCodableClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  ASCOfferGetCodableClasses_classes = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void __ASCAppOfferStateServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827F5038];
  v1 = ASCAppOfferStateServiceGetInterface_interface;
  ASCAppOfferStateServiceGetInterface_interface = v0;

  v2 = ASCAppOfferStateServiceGetInterface_interface;
  v3 = ASCOfferGetCodableClasses();
  v4 = [v3 setByAddingObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_startObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v5 = ASCAppOfferStateServiceGetInterface_interface;
  v6 = ASCOfferGetCodableClasses();
  v7 = [v6 setByAddingObject:objc_opt_class()];
  [v5 setClasses:v7 forSelector:sel_stopObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v8 = ASCAppOfferStateServiceGetInterface_interface;
  v9 = ASCOfferGetCodableClasses();
  [v8 setClasses:v9 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:0];

  v10 = ASCAppOfferStateServiceGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:1 ofReply:0];

  v12 = ASCAppOfferStateServiceGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:2 ofReply:0];

  v14 = ASCAppOfferStateServiceGetInterface_interface;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = ASCAppOfferStateServiceGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v18 = ASCAppOfferStateServiceGetInterface_interface;
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v18 setClasses:v19 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = ASCAppOfferStateServiceGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v22 = ASCAppOfferStateServiceGetInterface_interface;
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v22 setClasses:v23 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = ASCAppOfferStateServiceGetInterface_interface;
  v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v24 setClasses:v25 forSelector:sel_viewAppForAppDistributionOffer_ argumentIndex:0 ofReply:0];

  v26 = ASCAppOfferStateServiceGetInterface_interface;
  v27 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v26 setClasses:v27 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v28 = ASCAppOfferStateServiceGetInterface_interface;
  v29 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v28 setClasses:v29 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v30 = ASCAppOfferStateServiceGetInterface_interface;
  v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v30 setClasses:v31 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = ASCAppOfferStateServiceGetInterface_interface;
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCAppOfferStateServiceGetInterface()
{
  if (ASCAppOfferStateServiceGetInterface_onceToken != -1)
  {
    ASCAppOfferStateServiceGetInterface_cold_1();
  }

  v1 = ASCAppOfferStateServiceGetInterface_interface;

  return v1;
}

id ASCUtilityServiceGetInterface()
{
  if (ASCUtilityServiceGetInterface_onceToken != -1)
  {
    ASCUtilityServiceGetInterface_cold_1();
  }

  v1 = ASCUtilityServiceGetInterface_interface;

  return v1;
}

void __ASCUtilityServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827F5098];
  v1 = ASCUtilityServiceGetInterface_interface;
  ASCUtilityServiceGetInterface_interface = v0;

  v2 = ASCUtilityServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCUtilityServiceGetInterface_interface;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = ASCUtilityServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_restoreAppStoreWithReplyHandler_ argumentIndex:0 ofReply:1];
}

void __ASCLockupFetcherServiceGetInterface_block_invoke()
{
  v37 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827F50F8];
  v1 = ASCLockupFetcherServiceGetInterface_interface;
  ASCLockupFetcherServiceGetInterface_interface = v0;

  v2 = ASCLockupFetcherServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCLockupFetcherServiceGetInterface_interface;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v5 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v6 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v7 = ASCLockupFetcherServiceGetInterface_interface;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v7 setClasses:v8 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v9 = ASCLockupFetcherServiceGetInterface_interface;
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v9 setClasses:v10 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v11 = ASCLockupFetcherServiceGetInterface_interface;
  v12 = ASCLockupFeatureGetClasses();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:3];
  v14 = [v12 setByAddingObjectsFromArray:v13];
  [v11 setClasses:v14 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = ASCLockupFetcherServiceGetInterface_interface;
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v17 = ASCLockupFetcherServiceGetInterface_interface;
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v19 = ASCLockupFetcherServiceGetInterface_interface;
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0, v34, v35}];
  [v19 setClasses:v22 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v23 = ASCLockupFetcherServiceGetInterface_interface;
  v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v23 setClasses:v24 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v25 = ASCLockupFetcherServiceGetInterface_interface;
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:0];

  v27 = ASCLockupFetcherServiceGetInterface_interface;
  v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v27 setClasses:v28 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:0];

  v29 = ASCLockupFetcherServiceGetInterface_interface;
  v30 = ASCLockupFeatureGetClasses();
  v31 = [v30 setByAddingObject:objc_opt_class()];
  [v29 setClasses:v31 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = ASCLockupFetcherServiceGetInterface_interface;
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCLockupFetcherServiceGetInterface()
{
  if (ASCLockupFetcherServiceGetInterface_onceToken != -1)
  {
    ASCLockupFetcherServiceGetInterface_cold_1();
  }

  v1 = ASCLockupFetcherServiceGetInterface_interface;

  return v1;
}

id ASCLockupFeatureGetClasses()
{
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
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
  v10 = [v18 initWithObjects:{v17, v16, v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return v10;
}

uint64_t sub_21571DD8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2157A93E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI14LayoutTextView_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21571DDD0()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  if (v0[35])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  if (v0[40])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  }

  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 42));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 49));
  __swift_destroy_boxed_opaque_existential_1((v0 + 54));
  __swift_destroy_boxed_opaque_existential_1((v0 + 59));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 69));
  __swift_destroy_boxed_opaque_existential_1((v0 + 74));
  __swift_destroy_boxed_opaque_existential_1((v0 + 79));
  __swift_destroy_boxed_opaque_existential_1((v0 + 84));
  __swift_destroy_boxed_opaque_existential_1((v0 + 89));
  __swift_destroy_boxed_opaque_existential_1((v0 + 94));
  __swift_destroy_boxed_opaque_existential_1((v0 + 99));
  __swift_destroy_boxed_opaque_existential_1((v0 + 106));
  __swift_destroy_boxed_opaque_existential_1((v0 + 111));
  __swift_destroy_boxed_opaque_existential_1((v0 + 116));
  __swift_destroy_boxed_opaque_existential_1((v0 + 121));
  __swift_destroy_boxed_opaque_existential_1((v0 + 126));
  __swift_destroy_boxed_opaque_existential_1((v0 + 131));

  return MEMORY[0x2821FE8E8](v0, 1088, 7);
}

uint64_t sub_21571DF08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21571DF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2157A8B50();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21571E06C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2157A8B50();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21571E1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2157A8B50();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xB)
  {
    return v5 - 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21571E230(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 10);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2157A8B50();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21571E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21571E360(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21571E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2157A9160();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21571E500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_2157A9160();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21571E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SmallLockupLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21571E664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SmallLockupLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21571E720()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21571E758()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21571E7A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));
  __swift_destroy_boxed_opaque_existential_1((v0 + 9));
  __swift_destroy_boxed_opaque_existential_1((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1((v0 + 19));
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1((v0 + 34));
  __swift_destroy_boxed_opaque_existential_1((v0 + 39));
  __swift_destroy_boxed_opaque_existential_1((v0 + 44));
  __swift_destroy_boxed_opaque_existential_1((v0 + 49));
  __swift_destroy_boxed_opaque_existential_1((v0 + 54));
  __swift_destroy_boxed_opaque_existential_1((v0 + 61));
  __swift_destroy_boxed_opaque_existential_1((v0 + 66));
  __swift_destroy_boxed_opaque_existential_1((v0 + 71));
  __swift_destroy_boxed_opaque_existential_1((v0 + 76));
  __swift_destroy_boxed_opaque_existential_1((v0 + 81));
  __swift_destroy_boxed_opaque_existential_1((v0 + 86));
  __swift_destroy_boxed_opaque_existential_1((v0 + 91));
  if (v0[99])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 101));
  __swift_destroy_boxed_opaque_existential_1((v0 + 106));
  if (v0[114])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 111));
  }

  if (v0[119])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 116));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 121));
  if (v0[129])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 126));
  }

  if (v0[134])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 131));
  }

  if (v0[139])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  }

  if (v0[144])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 141));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 146));

  return MEMORY[0x2821FE8E8](v0, 1208, 7);
}

uint64_t sub_21571E8F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  if (*(v0 + 392))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 408);
  __swift_destroy_boxed_opaque_existential_1(v0 + 448);
  if (*(v0 + 512))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 488);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 528);

  return MEMORY[0x2821FE8E8](v0, 568, 7);
}

uint64_t sub_21571E998()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1(v0 + 360);
  if (*(v0 + 424))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 400);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 440);
  __swift_destroy_boxed_opaque_existential_1(v0 + 480);
  if (*(v0 + 544))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 520);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 560);

  return MEMORY[0x2821FE8E8](v0, 600, 7);
}

uint64_t sub_21571EA48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_21571EA90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return MEMORY[0x2821FE8E8](v0, 353, 7);
}

uint64_t sub_21571EB00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21571EB38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21571EB78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  return MEMORY[0x2821FE8E8](v0, 336, 7);
}

uint64_t sub_21571EBD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21571EC14()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void ASCUnknownEnumCase(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not have case with value %@", v3, v4];
  v6 = objc_alloc(MEMORY[0x277CBEAD8]);
  v10[0] = @"enumName";
  v10[1] = @"enumValue";
  v11[0] = v3;
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v6 initWithName:@"ASCUnknownEnumCaseException" reason:v5 userInfo:v7];
  v9 = v8;

  objc_exception_throw(v8);
}

id ASCLockupImageStringForName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [ASCImageRenderer bundleImageNamed:v3 compatibleWithTraitCollection:v4];
    if (v5 || ([ASCImageRenderer systemImageNamed:v3 compatibleWithTraitCollection:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v7 = [MEMORY[0x277D74270] textAttachmentWithImage:v5];
      v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];

      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASCLockupImageStringForName_cold_1(v3);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

id ASCLocalizedFormatString(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = a1;
  v3 = [v1 asc_storefrontLocale];
  v4 = [v3 localeIdentifier];

  v5 = [MEMORY[0x277CCA8D8] asc_frameworkBundle];
  v6 = [v5 __asc_localizedStringForKey:v2 inTable:0 withLanguage:v4];

  return v6;
}

id ASCLocalizedPlatformFormatString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAF8] asc_storefrontLocale];
  v3 = [v2 localeIdentifier];

  v4 = [MEMORY[0x277CCA8D8] asc_frameworkBundle];
  v5 = [MEMORY[0x277CCA8D8] asc_localizedStringKeyPlatformSuffix];
  v6 = [v1 stringByAppendingString:v5];

  v7 = [v4 __asc_localizedStringForKey:v6 inTable:0 withLanguage:v3];
  if ([v7 isEqualToString:v6])
  {
    v8 = [v4 __asc_localizedStringForKey:v1 inTable:0 withLanguage:v3];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

double ASCFontPointSizesResolve(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [v9 preferredContentSizeCategory];
  if (([v10 isEqualToString:*MEMORY[0x277D76830]] & 1) == 0)
  {
    if ([v10 isEqualToString:*MEMORY[0x277D76858]])
    {
      v11 = a3 * 0.333333333;
      v12 = 0.666666667;
LABEL_6:
      v13 = v11 + a2 * v12;
LABEL_7:
      a2 = round(v13);
      goto LABEL_8;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D76840]])
    {
      v11 = a3 * 0.666666667;
      v12 = 0.333333333;
      goto LABEL_6;
    }

    a2 = a3;
    if ([v10 isEqualToString:*MEMORY[0x277D76838]])
    {
      goto LABEL_8;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D76828]])
    {
      v15 = a4 * 0.333333333;
      v16 = 0.666666667;
LABEL_14:
      v13 = v15 + a3 * v16;
      goto LABEL_7;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D76820]])
    {
      v15 = a4 * 0.666666667;
      v16 = 0.333333333;
      goto LABEL_14;
    }

    a2 = a4;
    if ([v10 isEqualToString:*MEMORY[0x277D76818]])
    {
      goto LABEL_8;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D76808]])
    {
      v17 = a5 * 0.2;
      v18 = 0.8;
LABEL_24:
      v13 = v17 + a4 * v18;
      goto LABEL_7;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D76800]])
    {
      v17 = a5 * 0.4;
      v18 = 0.6;
      goto LABEL_24;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D767F8]])
    {
      v17 = a5 * 0.6;
      v18 = 0.4;
      goto LABEL_24;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D767F0]])
    {
      v17 = a5 * 0.8;
      v18 = 0.2;
      goto LABEL_24;
    }

    a2 = a5;
    if (([v10 isEqualToString:*MEMORY[0x277D767E8]] & 1) == 0)
    {
      ASCUnknownEnumCase(@"UIContentSizeCategory", v10);
    }
  }

LABEL_8:

  return a2;
}

void sub_2157216D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215721AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2157221C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2157227A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

unint64_t ASCSignpostTagCreateForProcess(unint64_t a1, int a2)
{
  if (!(a1 >> 47))
  {
    return a2 | (a1 << 17);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ASCSignpostTagCreateForProcess_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ASCSignpostTagCreateForProcess_onceToken != -1)
  {
    dispatch_once(&ASCSignpostTagCreateForProcess_onceToken, block);
  }

  return a1 + a2;
}

void __ASCSignpostTagCreateForProcess_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __ASCSignpostTagCreateForProcess_block_invoke_cold_1(a1);
  }
}

unint64_t ASCSignpostTagCreate(unint64_t a1)
{
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(a1, v2);
}

unint64_t ASCSignpostTagUnique()
{
  add_explicit = atomic_fetch_add_explicit(ASCSignpostTagUnique_nextValue, 1uLL, memory_order_relaxed);
  v1 = getpid();

  return ASCSignpostTagCreateForProcess(add_explicit, v1);
}

unint64_t ASCSignpostTagFromIDInProcess(void *a1, int a2)
{
  v3 = [a1 int64value];

  return ASCSignpostTagCreateForProcess(v3, a2);
}

unint64_t ASCSignpostTagFromID(void *a1)
{
  v1 = [a1 int64value];
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(v1, v2);
}

void sub_215726520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21572698C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_215726E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215727400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ASCMetricsFieldsGetCodableClasses()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return v5;
}

id ASCMetricsFieldsDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCMetricsFieldsGetCodableClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

id ASCMetricsDataDecodeArrayForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2157362D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ASCOfferFlagsGetDescription(__int16 a1)
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ASCOfferHasMessagesExtension"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ASCOfferCreatesJobs"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"ASCOfferIsArcadeApp"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"ASCOfferIsPreorder"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"ASCOfferIsDisabled"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"ASCOfferForceWatchInstall"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"ASCOfferIsDeletableSystemApp"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"ASCOfferIsIOSAppOnMacOS"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"ASCOfferIsFree"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"ASCOfferIsDSIDLess"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"ASCOfferIsContingentOffer"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"ASCOfferIsAppDistributionOffer"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  [v3 addObject:@"ASCOfferShouldOpenFromLockscreen"];
  if ((a1 & 0x4000) != 0)
  {
LABEL_15:
    [v3 addObject:@"ASCOfferIsIOSAppOnVisionOS"];
  }

LABEL_16:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

id ASCOfferTitlesDecodeForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

id ASCOfferDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCOfferGetCodableClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

id ASCLockupDarkStyleSubtitleColor()
{
  v0 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v1 = +[ASCSemanticColor secondaryLabel];
  v2 = [v1 resolvedColorWithTraitCollection:v0];

  return v2;
}

double ASCArtworkCropScaleSizeToFit(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if ((a2 != *MEMORY[0x277CBF3A8] || a3 != v11) && (a4 != v10 || a5 != v11))
  {
    if (a4 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2 / a4;
    }

    if (a5 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a3 / a5;
    }

    if ((![v9 isEqualToString:@"cc"] || a2 != a3) && (objc_msgSend(v9, "isEqualToString:", @"sr") & 1) == 0)
    {
      v16 = a4 * v15;
      if ([v9 isEqualToString:@"bb"])
      {
        if (v14 >= v15)
        {
          a2 = v16;
        }
      }

      else if (v14 < v15)
      {
        a2 = v16;
      }
    }

    v10 = floor(a2);
  }

  return v10;
}

uint64_t ASCArtworkFormatIsLayered(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = [v1 isEqualToString:@"lcr"];

  return v2;
}

uint64_t ASCArtworkDecorationHasBorder(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  if ([v1 isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"circlePrerendered"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"] ^ 1;
  }

  return v2;
}

uint64_t ASCArtworkDecorationIsPrerendered(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"circlePrerendered"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdGridContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adGridWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adGridWithLandscapeScreenshots"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdMaterialContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adMaterialWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adMaterialWithLandscapeScreenshots"];
  }

  return v2;
}

id ASCLockupFeaturesDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

id ASCOfferMetadataGetOfferTheme(void *a1)
{
  if ([a1 isViewInAppStore])
  {
    v1 = +[ASCOfferTheme viewInAppStoreTheme];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id ASCOfferMetadataAnimationForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else
  {
    if (![v1 isEqualToString:@"rotate"])
    {
      ASCUnknownEnumCase(@"ASCOfferMetadataAnimationName", v1);
    }

    v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
    [v2 setFromValue:&unk_2827B3950];
    [v2 setToValue:&unk_2827B3960];
    [v2 setByValue:&unk_2827B3970];
    [v2 setDuration:1.0];
    [v2 setRemovedOnCompletion:0];
    LODWORD(v3) = 2139095040;
    [v2 setRepeatCount:v3];
  }

  return v2;
}

void sub_215748864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_21574D3E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21574EE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21574F23C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21575166C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215751A40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_2157555FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKStoreProductViewControllerClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  result = objc_getClass("SKStoreProductViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKStoreProductViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKStoreProductViewControllerClass_block_invoke_cold_1();
    return StoreKitLibrary();
  }

  return result;
}

uint64_t StoreKitLibrary()
{
  v0 = StoreKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t StoreKitLibraryCore()
{
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return StoreKitLibraryCore_frameworkLibrary;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterITunesItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr;
  v6 = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr;
  if (!getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr)
  {
    v1 = StoreKitLibrary();
    v4[3] = dlsym(v1, "SKStoreProductParameterCustomProductPageIdentifier");
    getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21575621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterCustomProductPageIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSKStoreProductParameterIsViewOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterIsViewOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterIsViewOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterEnableOpenAppCallback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSKStoreProductParameterWebBrowserSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStoreProductParameterWebBrowser");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStoreProductParameterWebBrowserSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2157574E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2157576D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215757AC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215758790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_215758A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215758D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215759480(void *a1)
{
  objc_begin_catch(a1);
  objc_storeStrong(&ASCUtilities_testingUtilities, v1);
  objc_exception_rethrow();
}

void sub_215759744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2157599D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215759D4C(void *a1)
{
  objc_begin_catch(a1);
  objc_storeStrong(&ASCWorkspace_testingWorkspace, v1);
  objc_exception_rethrow();
}

void sub_21575A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21575B308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id ASCAXLabelForElements(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCAC30];
  v3 = v1;
  v4 = [v2 predicateWithBlock:&__block_literal_global_23];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v7 = getAXLabelForElementsSymbolLoc_ptr;
  v15 = getAXLabelForElementsSymbolLoc_ptr;
  if (!getAXLabelForElementsSymbolLoc_ptr)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getAXLabelForElementsSymbolLoc_block_invoke;
    v11[3] = &unk_2781CC5A0;
    v11[4] = &v12;
    __getAXLabelForElementsSymbolLoc_block_invoke(v11);
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v7)
  {
    v10 = [ASCLockupProductDetails presentFromViewController:animated:completion:];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v10);
  }

  v8 = v7(v6);

  return v8;
}

id ASCAXFormatFloatWithPercentage(uint64_t a1, float a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAXFormatFloatWithPercentageSymbolLoc_ptr;
  v12 = getAXFormatFloatWithPercentageSymbolLoc_ptr;
  if (!getAXFormatFloatWithPercentageSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getAXFormatFloatWithPercentageSymbolLoc_block_invoke;
    v8[3] = &unk_2781CC5A0;
    v8[4] = &v9;
    __getAXFormatFloatWithPercentageSymbolLoc_block_invoke(v8);
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v7 = [ASCLockupProductDetails presentFromViewController:animated:completion:];
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v7);
  }

  v5 = v4(a1, a2);

  return v5;
}

id ASCAXStarRatingStringForRating(float a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getUIAXStarRatingStringForRatingSymbolLoc_ptr;
  v10 = getUIAXStarRatingStringForRatingSymbolLoc_ptr;
  if (!getUIAXStarRatingStringForRatingSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getUIAXStarRatingStringForRatingSymbolLoc_block_invoke;
    v6[3] = &unk_2781CC5A0;
    v6[4] = &v7;
    __getUIAXStarRatingStringForRatingSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = [ASCLockupProductDetails presentFromViewController:animated:completion:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(a1);

  return v3;
}

void *__getAXLabelForElementsSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AXRuntimeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2781CC890;
    v7 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AXRuntimeLibraryCore_frameworkLibrary;
    if (AXRuntimeLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AXRuntimeLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXLabelForElements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLabelForElementsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXRuntimeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  return result;
}

BOOL __VisibleAXElementsFrom_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = 0;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v2 isHidden] & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v2 alpha], v3 > 0.05))
    {
      v4 = 1;
    }
  }

  return v4;
}

void *__getAXFormatFloatWithPercentageSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AXCoreUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AXCoreUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2781CC8C8;
    v7 = 0;
    AXCoreUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AXCoreUtilitiesLibraryCore_frameworkLibrary;
    if (AXCoreUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AXCoreUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXFormatFloatWithPercentage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXFormatFloatWithPercentageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXCoreUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXCoreUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getUIAXStarRatingStringForRatingSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2781CC8E0;
    v7 = 0;
    UIAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = UIAccessibilityLibraryCore_frameworkLibrary;
    if (UIAccessibilityLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "UIAXStarRatingStringForRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIAXStarRatingStringForRatingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

CGPath *ASCPathCreateProgressRing(double a1, double a2, double a3, double a4, CGFloat a5, double a6, double a7)
{
  v20 = CGRectInset(*&a1, a5, a5);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v15 = CGRectGetHeight(v23);
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = v15 * 0.5;
  Mutable = CGPathCreateMutable();
  CGPathAddRelativeArc(Mutable, 0, MidX, MidY, v16, a6 * 6.28318531 + -1.57079633, a7 * 6.28318531);
  return Mutable;
}

void sub_2157603B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215769704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21576982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21576DAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21576FB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_0(void *a1, const char *a2)
{

  return [a1 setHidden:v2];
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_215772450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215772CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215773854(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_215773E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double ASCLockupViewSizeGetIconSize(void *a1, uint64_t a2)
{
  v3 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  if ([v3 isEqualToString:@"mini"])
  {
    v4 = 0x4044000000000000;
LABEL_5:
    v5 = *&v4;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"small"])
  {
LABEL_4:
    v4 = 0x404F000000000000;
    goto LABEL_5;
  }

  if (![v3 isEqualToString:@"medium"])
  {
    if ([v3 isEqualToString:@"largeAppShowcase"])
    {
      v4 = 0x4056000000000000;
      goto LABEL_5;
    }

    if ([v3 isEqualToString:@"largeAppAd"])
    {
      v4 = 0x404E000000000000;
      goto LABEL_5;
    }

    if (([v3 isEqualToString:@"smallOfferButton"] & 1) == 0)
    {
      if (([v3 isEqualToString:@"mediumOfferButton"] & 1) == 0)
      {
        ASCUnknownEnumCase(@"ASCLockupViewSize", v3);
      }

      v4 = 0x4049000000000000;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a2 == 2)
  {
    v5 = 105.0;
  }

  else
  {
    v5 = 88.0;
  }

LABEL_6:

  return v5;
}

double ASCLockupViewSizeGetLayoutEstimatedSize(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  +[ASCEligibility assertCurrentProcessEligibility];
  if ([v7 isEqualToString:@"mini"])
  {
    [__ASCLayoutProxy miniLockupEstimatedSizeFittingSize:v8 compatibleWithTraitCollection:a3, a4];
  }

  else if ([v7 isEqualToString:@"small"])
  {
    [__ASCLayoutProxy smallLockupEstimatedSizeFittingSize:v8 compatibleWithTraitCollection:a3, a4];
  }

  else if ([v7 isEqualToString:@"medium"])
  {
    [__ASCLayoutProxy mediumLockupEstimatedSizeFittingSize:v8 compatibleWithTraitCollection:a3, a4];
  }

  else if ([v7 isEqualToString:@"smallOfferButton"])
  {
    [__ASCLayoutProxy smallOfferButtonLockupEstimatedSizeFittingSize:v8 compatibleWithTraitCollection:a3, a4];
  }

  else
  {
    if (![v7 isEqualToString:@"mediumOfferButton"])
    {
      v10 = *MEMORY[0x277CBF3A8];
      goto LABEL_12;
    }

    [__ASCLayoutProxy mediumOfferButtonLockupEstimatedSizeFittingSize:v8 compatibleWithTraitCollection:a3, a4];
  }

  v10 = v9;
LABEL_12:

  return v10;
}

double ASCLockupViewSizeGetEstimatedSize(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = a2;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (([v15 isEqualToString:@"mini"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"small") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"medium") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"smallOfferButton") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"mediumOfferButton"))
  {
    a3 = a6 + a8 + ASCLockupViewSizeGetLayoutEstimatedSize(v15, v16, a3 - a6 - a8, a4 - a5 - a7);
  }

  else
  {
    if (([v15 isEqualToString:@"largeAppShowcase"] & 1) == 0 && !objc_msgSend(v15, "isEqualToString:", @"largeAppAd"))
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", v15);
    }

    ASCLockupViewSizeGetIconSize(v15, [v16 horizontalSizeClass]);
  }

  return a3;
}

id ASCLockupViewSizeGetOfferButtonSize(void *a1)
{
  v1 = [a1 isEqualToString:@"mediumOfferButton"];
  v2 = &ASCOfferButtonSizeMedium;
  if (!v1)
  {
    v2 = &ASCOfferButtonSizeSmall;
  }

  v3 = *v2;

  return v3;
}

uint64_t ASCLockupViewSizeOfferButtonSubtitlePosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"medium"])
  {
    v2 = 1;
  }

  else
  {
    [v1 isEqualToString:@"mini"];
    v2 = 0;
  }

  return v2;
}

id ASCLockupViewSizeGetOfferTheme(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (([v1 isEqualToString:@"mini"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"small") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"medium") & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"smallOfferButton"))
  {
    v2 = +[ASCOfferTheme grayTheme];
  }

  else if ([v1 isEqualToString:@"largeAppShowcase"] || objc_msgSend(v1, "isEqualToString:", @"largeAppAd"))
  {
    v2 = +[ASCOfferTheme blueTheme];
  }

  else
  {
    if (![v1 isEqualToString:@"mediumOfferButton"])
    {
      ASCUnknownEnumCase(@"ASCLockupViewSize", v1);
    }

    v2 = +[ASCOfferTheme essoTheme];
  }

  v3 = v2;

  return v3;
}

void sub_215775DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2157772B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215777470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2157794CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_0_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

id ASCMetricsServiceGetInterface()
{
  if (ASCMetricsServiceGetInterface_onceToken != -1)
  {
    ASCMetricsServiceGetInterface_cold_1();
  }

  v1 = ASCMetricsServiceGetInterface_interface;

  return v1;
}

void __ASCMetricsServiceGetInterface_block_invoke()
{
  v27[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827F5158];
  v1 = ASCMetricsServiceGetInterface_interface;
  ASCMetricsServiceGetInterface_interface = v0;

  v2 = ASCMetricsServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCMetricsServiceGetInterface_interface;
  v5 = ASCMetricsFieldsGetCodableClasses();
  [v4 setClasses:v5 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v6 = ASCMetricsServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:2 ofReply:0];

  v8 = ASCMetricsServiceGetInterface_interface;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = ASCMetricsServiceGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v12 = ASCMetricsServiceGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v14 = ASCMetricsServiceGetInterface_interface;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:0];

  v16 = ASCMetricsServiceGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:1 ofReply:0];

  v18 = ASCMetricsServiceGetInterface_interface;
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v18 setClasses:v19 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:2 ofReply:0];

  v20 = ASCMetricsServiceGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:3 ofReply:0];

  v22 = ASCMetricsServiceGetInterface_interface;
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v22 setClasses:v23 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = ASCMetricsFieldsGetCodableClasses();
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v26 = [v24 setByAddingObjectsFromArray:v25];

  [ASCMetricsServiceGetInterface_interface setClasses:v26 forSelector:sel_logErrorMessage_ argumentIndex:0 ofReply:0];
}

__CFString *ASCStringFromNotifyStatus(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          v1 = @"NOTIFY_STATUS_SERVER_NOT_FOUND";
          goto LABEL_27;
        case 0xA:
          v1 = @"NOTIFY_STATUS_NULL_INPUT";
          goto LABEL_27;
        case 0xF4240:
          v1 = @"NOTIFY_STATUS_FAILED";
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v1 = @"NOTIFY_STATUS_INVALID_REQUEST";
    }

    else if (a1 == 7)
    {
      v1 = @"NOTIFY_STATUS_NOT_AUTHORIZED";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_OPT_DISABLE";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v1 = @"NOTIFY_STATUS_OK";
          goto LABEL_27;
        case 1:
          v1 = @"NOTIFY_STATUS_INVALID_NAME";
          goto LABEL_27;
        case 2:
          v1 = @"NOTIFY_STATUS_INVALID_TOKEN";
          goto LABEL_27;
      }

LABEL_26:
      v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NOTIFY_STATUS_UNKNOWN (%u)", a1];
      goto LABEL_27;
    }

    if (a1 == 3)
    {
      v1 = @"NOTIFY_STATUS_INVALID_PORT";
    }

    else if (a1 == 4)
    {
      v1 = @"NOTIFY_STATUS_INVALID_FILE";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_INVALID_SIGNAL";
    }
  }

LABEL_27:

  return v1;
}

id PaymentServiceHostBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentServiceHostBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentServiceHostBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21577DF60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21577DF80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21577DFC4(uint64_t a1, id *a2)
{
  result = sub_2157A93C0();
  *a2 = 0;
  return result;
}

uint64_t sub_21577E03C(uint64_t a1, id *a2)
{
  v3 = sub_2157A93D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21577E0BC@<X0>(uint64_t *a1@<X8>)
{
  sub_2157A93E0();
  v2 = sub_2157A93B0();

  *a1 = v2;
  return result;
}

uint64_t sub_21577E100()
{
  v0 = sub_2157A93E0();
  v2 = v1;
  if (v0 == sub_2157A93E0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2157A95F0();
  }

  return v5 & 1;
}

uint64_t sub_21577E188@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2157A93B0();

  *a1 = v2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21577E1F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21577E210(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_21577E250(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21577E29C(uint64_t a1)
{
  v2 = sub_21577E39C(&qword_27CA71060);
  v3 = sub_21577E39C(&qword_27CA71068);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21577E39C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Size(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21577E414()
{
  v0 = sub_2157A93E0();
  v1 = MEMORY[0x216070250](v0);

  return v1;
}

uint64_t sub_21577E450()
{
  sub_2157A93E0();
  sub_2157A93F0();
}

uint64_t sub_21577E4A4()
{
  sub_2157A93E0();
  sub_2157A9610();
  sub_2157A93F0();
  v0 = sub_2157A9630();

  return v0;
}

Swift::String __swiftcall NSBundle.localizedString(forKey:in:with:)(Swift::String forKey, Swift::String_optional in, Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v20[1] = in.value._object;
  v6 = forKey._object;
  v7 = forKey._countAndFlagsBits;
  v8 = sub_2157A93A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71070);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2157B2B70;
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v13 = v3;

  sub_2157A9390();
  v14 = sub_2157A9380();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  if (v16)
  {
    v17 = v14;
    v6 = v16;
  }

  else
  {

    v17 = v7;
  }

  v18 = v6;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_21577E6EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = sub_2157A93A0();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2157A93E0();
  if (a4)
  {
    sub_2157A93E0();
  }

  v9 = sub_2157A93E0();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71070);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2157B2B70;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = a1;
  sub_2157A9390();
  sub_2157A9380();
  v15 = v14;

  (*(v6 + 8))(v8, v19);
  if (v15)
  {
  }

  v16 = sub_2157A93B0();

  return v16;
}

uint64_t sub_21577E8C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21577E910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1160) = 0u;
    *(result + 1176) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1192) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 1192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21577EAA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 712))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21577EAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 696) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 712) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 712) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21577EBF0(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 traitCollection];
  v11 = sub_2157A9480();

  v12 = a2;
  if ((v11 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v3 + 1152), *(v3 + 1176));
    v12 = a2;
    if (sub_2157A8A60())
    {
      __swift_project_boxed_opaque_existential_1((v3 + 632), *(v3 + 656));
      sub_21579F1CC();
      sub_2157A8BB0();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      v12 = (a2 - v14) * 0.5;
    }
  }

  v15 = [a1 traitCollection];
  v16 = sub_2157A94B0();

  if ((v16 & 1) == 0)
  {
    v17 = [a1 traitCollection];
    v18 = sub_2157A9480();

    if (v18)
    {
      __swift_project_boxed_opaque_existential_1((v3 + 712), *(v3 + 736));
      sub_2157A8AD0();
      v20 = v12 - v19;
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_21579F1CC();
      sub_2157A8BB0();
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v9, v6);
      v24 = v20 - v22 - *(v3 + 456);
      __swift_project_boxed_opaque_existential_1((v3 + 472), *(v3 + 496));
      sub_21579F1CC();
      sub_2157A8BB0();
      v26 = v25;
      v23(v9, v6);
      return v24 - v26;
    }
  }

  return v12;
}

double sub_21577EED8(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21577EBF0(a1, a2);
  v11 = &selRef_setNumberOfViews_;
  v12 = [a1 traitCollection];
  v13 = sub_2157A94B0();

  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v14 = *(v7 + 8);
    v14(v9, v6);
    __swift_project_boxed_opaque_existential_1(v3 + 52, v3[55]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v14(v9, v6);
    __swift_project_boxed_opaque_existential_1(v3 + 59, v3[62]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v14(v9, v6);
    v11 = &selRef_setNumberOfViews_;
  }

  v15 = [a1 v11[243]];
  v16 = sub_2157A9480();

  if ((v16 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 144, v3[147]);
    if (sub_2157A8A60())
    {
      __swift_project_boxed_opaque_existential_1(v3 + 79, v3[82]);
      sub_21579F1CC();
      sub_2157A8BB0();
      (*(v7 + 8))(v9, v6);
    }
  }

  __swift_project_boxed_opaque_existential_1(v3 + 84, v3[87]);
  sub_21579F1CC();
  sub_2157A8BB0();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1(v3 + 144, v3[147]);
  sub_2157A8AC0();
  __swift_project_boxed_opaque_existential_1(v3 + 144, v3[147]);
  if (sub_2157A8A60())
  {
    v17 = [a1 v11[243]];
    sub_2157A9480();
  }

  return a2;
}

uint64_t sub_21577F310@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v92 = a6;
  v86 = a2;
  v12 = sub_2157A8A50();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2157A9130();
  v79 = *(v81 - 8);
  v15 = MEMORY[0x28223BE20](v81);
  v80 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v75 - v17;
  v18 = sub_2157A9150();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x28223BE20](v18);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2157A95E0();
  v90 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 traitCollection];
  v23 = sub_2157A9480();

  v24 = [a1 traitCollection];
  v25 = sub_2157A9480();

  v93 = a5;
  if ((v25 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v7 + 144, v7[147]);
    v26 = sub_2157A8A60();
    a5 = v93;
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v7 + 79, v7[82]);
      v27 = v89;
      sub_21579F1CC();
      sub_2157A8BB0();
      v29 = v28;
      (*(v90 + 8))(v27, v20);
      a5 = (v93 - v29) * 0.5;
    }
  }

  __swift_project_boxed_opaque_existential_1(v7 + 144, v7[147]);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v30 = v92;
  v31 = v93;
  v109.size.width = v93;
  v109.size.height = v92;
  CGRectGetHeight(v109);
  sub_2157A8AD0();
  v91 = v32;
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = v31;
  v110.size.height = v30;
  CGRectGetHeight(v110);
  sub_2157A94E0();
  __swift_project_boxed_opaque_existential_1(v7 + 144, v7[147]);
  v33 = sub_2157A8A60();
  v77 = v23;
  if (v33 & v23)
  {
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    v34 = v14;
    v35 = v89;
    sub_21579F1CC();
    sub_2157A8BB0();
    v36 = v35;
    v14 = v34;
    (*(v90 + 8))(v36, v20);
  }

  v76 = v20;
  v82 = *&a1;
  sub_215782FEC(v7, v107);
  sub_215783024((v7 + 94), v106, &qword_27CA71078);
  sub_21578326C((v7 + 99), v105);
  sub_21578326C((v7 + 104), v104);
  sub_215783024((v7 + 109), v103, &qword_27CA71078);
  sub_215783024((v7 + 114), v102, &qword_27CA71078);
  sub_215783024((v7 + 124), v101, &qword_27CA71080);
  sub_215783024((v7 + 129), v100, &qword_27CA71078);
  sub_215783024((v7 + 134), v99, &qword_27CA71080);
  sub_215783024((v7 + 139), v98, &qword_27CA71080);
  memset(v97, 0, 40);
  memset(&v97[15], 0, 240);
  sub_215782FEC(v107, &v97[45]);
  sub_21578308C(v106, v97, &qword_27CA71078);
  sub_21578326C(v105, &v97[5]);
  sub_21578326C(v104, &v97[10]);
  sub_21578308C(v103, &v97[15], &qword_27CA71078);
  sub_21578308C(v102, &v97[20], &qword_27CA71078);
  sub_21578308C(v101, &v97[25], &qword_27CA71080);
  sub_215783024(v100, v94, &qword_27CA71078);
  v37 = v95;
  if (v95)
  {
    v38 = v96;
    v39 = __swift_project_boxed_opaque_existential_1(v94, v95);
    v108[3] = v37;
    v108[4] = *(v38 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v108);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v39, v37);
    sub_215783830(v100, &qword_27CA71078);
    sub_215783830(v101, &qword_27CA71080);
    sub_215783830(v102, &qword_27CA71078);
    sub_215783830(v103, &qword_27CA71078);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v105);
    sub_215783830(v106, &qword_27CA71078);
    sub_215783140(v107);
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    sub_215783830(v100, &qword_27CA71078);
    sub_215783830(v101, &qword_27CA71080);
    sub_215783830(v102, &qword_27CA71078);
    sub_215783830(v103, &qword_27CA71078);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v105);
    sub_215783830(v106, &qword_27CA71078);
    sub_215783140(v107);
    sub_215783830(v94, &qword_27CA71078);
    memset(v108, 0, 40);
  }

  v41 = v82;
  sub_215783170(v108, &v97[30]);
  sub_215783170(v99, &v97[35]);
  sub_215783170(v98, &v97[40]);
  memcpy(v108, v97, 0x430uLL);
  v97[3] = &type metadata for AdLockupLayout.AdLockupInnerContentLayout;
  v97[4] = sub_2157831E0();
  v97[0] = swift_allocObject();
  sub_215783234(v108, v97[0] + 16);
  sub_21578326C((v7 + 89), v107);
  sub_21578326C((v7 + 2), v106);
  sub_21578326C((v7 + 119), v105);
  sub_21578326C((v7 + 59), v104);
  v42 = *MEMORY[0x277D22898];
  v43 = *(v79 + 104);
  v44 = v81;
  v43(v78, v42, v81);
  v43(v80, v42, v44);
  v45 = v83;
  sub_2157A9140();
  sub_2157A9120();
  v46 = v90;
  if (v77)
  {
    sub_2157A8A30();
    MinX = v47;
    sub_2157A8A30();
    v50 = v49;
    sub_2157A8A00();
    v82 = a5;
    v52 = v50 + v51;
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    v53 = v14;
    v54 = v89;
    sub_21579F1CC();
    sub_2157A8BB0();
    v56 = v55;
    v57 = v54;
    v14 = v53;
    (*(v46 + 8))(v57, v76);
    v58 = v52 + v56;
    a5 = v82;
  }

  else
  {
    v59 = [*&v41 traitCollection];
    v60 = sub_2157A94A0();

    if (v60)
    {
      v111.origin.x = a3;
      v111.origin.y = a4;
      v111.size.height = v92;
      v111.size.width = v93;
      MinX = CGRectGetMinX(v111);
    }

    else
    {
      sub_2157A8A30();
      v62 = v61;
      sub_2157A8A00();
      v64 = v62 + v63;
      __swift_project_boxed_opaque_existential_1(v7 + 79, v7[82]);
      v65 = v14;
      v66 = v89;
      sub_21579F1CC();
      sub_2157A8BB0();
      v68 = v67;
      v69 = v66;
      v14 = v65;
      (*(v46 + 8))(v69, v76);
      MinX = v64 + v68;
    }

    sub_2157A8A30();
    v71 = v70;
    sub_2157A8A00();
    v58 = floor(v71 + v72 * 0.5 - v91 * 0.5);
  }

  __swift_project_boxed_opaque_existential_1(v7 + 144, v7[147]);
  v73 = v91;
  sub_2157A8A90();
  v112.origin.x = MinX;
  v112.origin.y = v58;
  v112.size.width = a5;
  v112.size.height = v73;
  CGRectGetMaxY(v112);
  sub_2157A8A30();
  sub_2157A8A00();
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.height = v92;
  v113.size.width = v93;
  CGRectGetWidth(v113);
  sub_2157A89F0();
  (*(v87 + 8))(v14, v88);
  (*(v84 + 8))(v45, v85);
  return sub_2157832D0(v108);
}

uint64_t sub_21577FEC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_2157A8A50();
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x28223BE20](v13);
  v138 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2157A9160();
  v127 = *(v129 - 8);
  v15 = MEMORY[0x28223BE20](v129);
  v128 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v124 - v17;
  v19 = sub_2157A9190();
  v130 = *(v19 - 8);
  v131 = v19;
  MEMORY[0x28223BE20](v19);
  v137 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2157A95E0();
  v141 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 traitCollection];
  v126 = [v23 horizontalSizeClass];

  v24 = [a1 traitCollection];
  v25 = sub_2157A9480();

  if ((v25 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 1152), *(v7 + 1176));
    if (sub_2157A8A60())
    {
      __swift_project_boxed_opaque_existential_1((v7 + 632), *(v7 + 656));
      sub_21579F1CC();
      sub_2157A8BB0();
      (*(v141 + 8))(v22, v135);
    }
  }

  v142 = a1;
  v26 = sub_21577EBF0(a1, a5);
  sub_215782FEC(v7, &v156);
  sub_215783024(v7 + 752, v155, &qword_27CA71078);
  sub_21578326C(v7 + 792, v154);
  sub_21578326C(v7 + 832, v153);
  sub_215783024(v7 + 872, v152, &qword_27CA71078);
  sub_215783024(v7 + 912, v151, &qword_27CA71078);
  sub_215783024(v7 + 992, v150, &qword_27CA71080);
  sub_215783024(v7 + 1032, v149, &qword_27CA71078);
  sub_215783024(v7 + 1072, v148, &qword_27CA71080);
  sub_215783024(v7 + 1112, v147, &qword_27CA71080);
  memset(v146, 0, 40);
  memset(&v146[15], 0, 240);
  sub_215782FEC(&v156, &v146[45]);
  sub_21578308C(v155, v146, &qword_27CA71078);
  sub_21578326C(v154, &v146[5]);
  sub_21578326C(v153, &v146[10]);
  sub_21578308C(v152, &v146[15], &qword_27CA71078);
  sub_21578308C(v151, &v146[20], &qword_27CA71078);
  sub_21578308C(v150, &v146[25], &qword_27CA71080);
  sub_215783024(v149, v143, &qword_27CA71078);
  v27 = v144;
  if (v144)
  {
    v28 = v145;
    v29 = __swift_project_boxed_opaque_existential_1(v143, v144);
    v158[3] = v27;
    v158[4] = *(v28 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v158);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
    sub_215783830(v149, &qword_27CA71078);
    sub_215783830(v150, &qword_27CA71080);
    sub_215783830(v151, &qword_27CA71078);
    sub_215783830(v152, &qword_27CA71078);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_215783830(v155, &qword_27CA71078);
    sub_215783140(&v156);
    __swift_destroy_boxed_opaque_existential_1(v143);
  }

  else
  {
    sub_215783830(v149, &qword_27CA71078);
    sub_215783830(v150, &qword_27CA71080);
    sub_215783830(v151, &qword_27CA71078);
    sub_215783830(v152, &qword_27CA71078);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_215783830(v155, &qword_27CA71078);
    sub_215783140(&v156);
    sub_215783830(v143, &qword_27CA71078);
    memset(v158, 0, 40);
  }

  v31 = v138;
  sub_215783170(v158, &v146[30]);
  sub_215783170(v148, &v146[35]);
  sub_215783170(v147, &v146[40]);
  memcpy(v158, v146, 0x430uLL);
  v32 = v142;
  sub_215783364(&v158[45], v142, v26);
  if (v33 > *(v7 + 8))
  {
    v34 = v33;
  }

  else
  {
    v34 = *(v7 + 8);
  }

  v139 = a5;
  v140 = a6;
  sub_2157A94E0();
  v146[3] = &type metadata for AdLockupLayout.AdLockupInnerContentLayout;
  v146[4] = sub_2157831E0();
  v146[0] = swift_allocObject();
  sub_215783234(v158, v146[0] + 16);
  sub_21578326C(v7 + 712, &v156);
  sub_21578326C(v7 + 16, v155);
  sub_21578326C(v7 + 952, v154);
  sub_21578326C(v7 + 472, v153);
  v35 = *(v127 + 104);
  v36 = v129;
  v35(v18, *MEMORY[0x277D228B8], v129);
  v35(v128, *MEMORY[0x277D228C8], v36);
  sub_2157A9180();
  sub_2157A9170();
  __swift_project_boxed_opaque_existential_1((v7 + 632), *(v7 + 656));
  sub_21579F1CC();
  sub_2157A8BB0();
  v38 = v37;
  v39 = v31;
  v40 = v22;
  v42 = v141 + 8;
  v41 = *(v141 + 8);
  v43 = v135;
  v41(v40, v135);
  v136 = a3;
  if (v126 == 1)
  {
    v141 = v42;
    __swift_project_boxed_opaque_existential_1((v7 + 1152), *(v7 + 1176));
    sub_2157A8AD0();
    v45 = v44;
    v47 = v46;
    sub_2157A8A30();
    v49 = v48;
    sub_2157A8A30();
    v51 = v50;
    sub_2157A8A00();
    v53 = v51 + v52;
    __swift_project_boxed_opaque_existential_1((v7 + 672), *(v7 + 696));
    sub_21579F1CC();
    sub_2157A8BB0();
    v55 = v54;
    v41(v40, v43);
    v56 = v53 + v55;
  }

  else
  {
    v57 = [v32 traitCollection];
    v58 = sub_2157A94A0();

    MaxX = 0.0;
    v61 = v139;
    v60 = v140;
    v62 = v32;
    if (v58)
    {
      v159.origin.x = a3;
      v159.origin.y = a4;
      v159.size.width = v139;
      v159.size.height = v140;
      MaxX = CGRectGetMaxX(v159);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71090);
    v63 = swift_allocObject();
    v64 = *(v7 + 816);
    v65 = *(v7 + 824);
    v66 = __swift_project_boxed_opaque_existential_1((v7 + 792), v64);
    *(v63 + 56) = v64;
    *(v63 + 64) = *(v65 + 8);
    v67 = __swift_allocate_boxed_opaque_existential_1((v63 + 32));
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    v68 = *(v7 + 856);
    v69 = *(v7 + 864);
    v70 = __swift_project_boxed_opaque_existential_1((v7 + 832), v68);
    *(v63 + 96) = v68;
    *(v63 + 104) = *(v69 + 8);
    v71 = __swift_allocate_boxed_opaque_existential_1((v63 + 72));
    (*(*(v68 - 8) + 16))(v71, v70, v68);
    sub_215783024(v7 + 872, v146, &qword_27CA71078);
    v72 = v146[3];
    if (v146[3])
    {
      v73 = v146[4];
      v74 = __swift_project_boxed_opaque_existential_1(v146, v146[3]);
      *(v63 + 136) = v72;
      *(v63 + 144) = *(v73 + 8);
      v75 = __swift_allocate_boxed_opaque_existential_1((v63 + 112));
      (*(*(v72 - 8) + 16))(v75, v74, v72);
      __swift_destroy_boxed_opaque_existential_1(v146);
    }

    else
    {
      sub_215783830(v146, &qword_27CA71078);
      *(v63 + 144) = 0;
      *(v63 + 112) = 0u;
      *(v63 + 128) = 0u;
    }

    sub_215783024(v7 + 912, v146, &qword_27CA71078);
    v76 = v146[3];
    if (v146[3])
    {
      v77 = v146[4];
      v78 = __swift_project_boxed_opaque_existential_1(v146, v146[3]);
      *(v63 + 176) = v76;
      *(v63 + 184) = *(v77 + 8);
      v79 = __swift_allocate_boxed_opaque_existential_1((v63 + 152));
      (*(*(v76 - 8) + 16))(v79, v78, v76);
      __swift_destroy_boxed_opaque_existential_1(v146);
    }

    else
    {
      sub_215783830(v146, &qword_27CA71078);
      *(v63 + 184) = 0;
      *(v63 + 168) = 0u;
      *(v63 + 152) = 0u;
    }

    sub_215783024(v7 + 1072, v63 + 192, &qword_27CA71080);
    sub_215783024(v7 + 992, v63 + 232, &qword_27CA71080);
    sub_215783024(v7 + 1032, v146, &qword_27CA71078);
    v80 = v146[3];
    if (v146[3])
    {
      v81 = v146[4];
      v82 = __swift_project_boxed_opaque_existential_1(v146, v146[3]);
      *(v63 + 296) = v80;
      *(v63 + 304) = *(v81 + 8);
      v83 = __swift_allocate_boxed_opaque_existential_1((v63 + 272));
      (*(*(v80 - 8) + 16))(v83, v82, v80);
      __swift_destroy_boxed_opaque_existential_1(v146);
    }

    else
    {
      sub_215783830(v146, &qword_27CA71078);
      *(v63 + 304) = 0;
      *(v63 + 272) = 0u;
      *(v63 + 288) = 0u;
    }

    for (i = 32; i != 312; i += 40)
    {
      sub_215783024(v63 + i, &v156, &qword_27CA71080);
      if (v157)
      {
        sub_21571DF08(&v156, v146);
        __swift_project_boxed_opaque_existential_1(v146, v146[3]);
        if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v146, v146[3]), (sub_2157A8AA0()))
        {
          __swift_destroy_boxed_opaque_existential_1(v146);
        }

        else
        {
          v85 = [v62 traitCollection];
          v86 = sub_2157A94A0();

          __swift_project_boxed_opaque_existential_1(v146, v146[3]);
          sub_2157A8A80();
          if (v86)
          {
            MinX = CGRectGetMinX(*&v87);
            if (MinX < MaxX)
            {
              MaxX = MinX;
            }
          }

          else
          {
            v92 = CGRectGetMaxX(*&v87);
            if (MaxX <= v92)
            {
              MaxX = v92;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(v146);
          v62 = v142;
        }
      }

      else
      {
        sub_215783830(&v156, &qword_27CA71080);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v93 = [v62 traitCollection];
    v94 = sub_2157A94A0();

    v125 = a4;
    v95 = a3;
    v96 = a4;
    v97 = v61;
    v98 = v60;
    if (v94)
    {
      v99 = CGRectGetMinX(*&v95);
      __swift_project_boxed_opaque_existential_1((v7 + 952), *(v7 + 976));
      sub_2157A8A80();
      Width = CGRectGetWidth(v160);
      v101 = MaxX;
      MaxX = v99 + Width;
    }

    else
    {
      v102 = CGRectGetMaxX(*&v95);
      __swift_project_boxed_opaque_existential_1((v7 + 952), *(v7 + 976));
      sub_2157A8A80();
      v101 = v102 - CGRectGetWidth(v161);
    }

    v103 = v38 + MaxX;
    v104 = v101 - v38;
    sub_2157A8A30();
    v106 = v105;
    v107 = v104 - (v38 + MaxX);
    __swift_project_boxed_opaque_existential_1((v7 + 1152), *(v7 + 1176));
    sub_2157A8AD0();
    v45 = v108;
    v47 = v109;
    v162.origin.x = v103;
    v162.origin.y = v106;
    v162.size.width = v104 - v103;
    v162.size.height = v34;
    v110 = CGRectGetMidX(v162) - v45 * 0.5;
    v163.origin.x = v103;
    v163.origin.y = v106;
    v163.size.width = v107;
    v163.size.height = v34;
    v111 = CGRectGetMidY(v163) - v47 * 0.5;
    sub_21578326C(v7 + 952, v146);
    __swift_project_boxed_opaque_existential_1(v146, v146[3]);
    v112 = [v62 traitCollection];
    v113 = sub_2157A94A0();

    v114 = v136;
    a4 = v125;
    v115 = v125;
    v116 = v139;
    v117 = v140;
    if (v113)
    {
      v118 = CGRectGetMinX(*&v114);
    }

    else
    {
      v119 = CGRectGetMaxX(*&v114);
      __swift_project_boxed_opaque_existential_1((v7 + 952), *(v7 + 976));
      sub_2157A8A80();
      v118 = v119 - v120;
    }

    v49 = floor(v110);
    v56 = floor(v111);
    v121 = sub_2157A8A70();
    *v122 = v118;
    v121(&v156, 0);
    __swift_destroy_boxed_opaque_existential_1(v146);
    v39 = v138;
  }

  __swift_project_boxed_opaque_existential_1((v7 + 1152), *(v7 + 1176));
  sub_2157A8A90();
  v164.origin.x = v49;
  v164.origin.y = v56;
  v164.size.width = v45;
  v164.size.height = v47;
  CGRectGetMaxY(v164);
  sub_2157A8A30();
  sub_2157A8A00();
  v165.origin.x = v136;
  v165.origin.y = a4;
  v165.size.width = v139;
  v165.size.height = v140;
  CGRectGetWidth(v165);
  sub_2157A89F0();
  (*(v132 + 8))(v39, v133);
  (*(v130 + 8))(v137, v131);
  return sub_2157832D0(v158);
}

uint64_t sub_215781040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v152 = a2;
  v159 = sub_2157A8FA0();
  v163 = *(v159 - 8);
  (MEMORY[0x28223BE20])();
  v158 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2157A8FB0();
  v6 = *(v156 - 8);
  (MEMORY[0x28223BE20])();
  v154 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2157A8F40();
  v164 = *(v161 - 8);
  (MEMORY[0x28223BE20])();
  v153 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2157A8FE0();
  v162 = *(v157 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v149 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v130 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v151 = &v130 - v15;
  MEMORY[0x28223BE20](v14);
  v148 = &v130 - v16;
  sub_215783024(v2, v175, &qword_27CA71078);
  v17 = v176;
  if (!v176)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v175, v176);
  v18 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(v175);
  if ((v18 & 1) == 0)
  {
    sub_215783024(v3, v175, &qword_27CA71078);
    v17 = v176;
    if (v176)
    {
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v17 = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(v175);
      goto LABEL_7;
    }

LABEL_6:
    sub_215783830(v175, &qword_27CA71078);
    goto LABEL_7;
  }

  v17 = 0;
LABEL_7:
  sub_215783024((v3 + 20), v175, &qword_27CA71078);
  v19 = v176;
  if (!v176)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(v175, v176);
  v20 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(v175);
  if (v20)
  {
    v19 = 0;
    goto LABEL_13;
  }

  sub_215783024((v3 + 20), v175, &qword_27CA71078);
  v19 = v176;
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    v19 = sub_2157A8A60();
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
LABEL_12:
    sub_215783830(v175, &qword_27CA71078);
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  if (sub_2157A8AA0())
  {
    LODWORD(v150) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    LODWORD(v150) = sub_2157A8A60();
  }

  sub_215783024((v3 + 15), v175, &qword_27CA71078);
  if (!v176)
  {
LABEL_20:
    sub_215783830(v175, &qword_27CA71078);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v175, v176);
  v21 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(v175);
  if ((v21 & 1) == 0)
  {
    sub_215783024((v3 + 15), v175, &qword_27CA71078);
    if (v176)
    {
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v160 = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(v175);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_21:
  v160 = 0;
LABEL_22:
  sub_215783024((v3 + 40), v175, &qword_27CA71080);
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    v22 = sub_2157A8AA0();
    __swift_destroy_boxed_opaque_existential_1(v175);
    if (v22)
    {
      goto LABEL_31;
    }

    sub_215783024((v3 + 40), v175, &qword_27CA71080);
    if (v176)
    {
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v23 = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(v175);
      if (((v17 | v19 | v160) & 1) == 0 && (v23 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  sub_215783830(v175, &qword_27CA71080);
LABEL_31:
  if (((v17 | v19 | v160) & 1) == 0)
  {
LABEL_27:
    v24 = [a1 traitCollection];
    sub_2157A94B0();

    v25 = [a1 traitCollection];
    v26 = sub_2157A94B0();

    v27 = 67;
    if (v26)
    {
      v27 = 57;
    }

    sub_21578326C(&v3[v27], v175);
    sub_21578326C((v3 + 5), &v172);
    sub_21578326C((v3 + 10), &v169);
    sub_21578326C(v175, v167);
    sub_21578326C((v3 + 62), v166);
    sub_21578326C((v3 + 77), &v165);
    v28 = sub_2157A92F0();
    v29 = MEMORY[0x277D229C8];
    v30 = v152;
    v152[3] = v28;
    v30[4] = v29;
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_2157A92E0();
    return __swift_destroy_boxed_opaque_existential_1(v175);
  }

LABEL_32:
  sub_215783024(v3, v175, &qword_27CA71078);
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    sub_2157A8D30();
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
    sub_215783830(v175, &qword_27CA71078);
  }

  sub_215783024(v3, v175, &qword_27CA71078);
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    sub_2157A8D10();
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
    sub_215783830(v175, &qword_27CA71078);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_2157A8D30();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_2157A8D10();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_2157A8D30();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_2157A8D10();
  sub_215783024((v3 + 15), v175, &qword_27CA71078);
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    sub_2157A8D30();
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
    sub_215783830(v175, &qword_27CA71078);
  }

  sub_215783024((v3 + 15), v175, &qword_27CA71078);
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(v175, v176);
    sub_2157A8D10();
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
    sub_215783830(v175, &qword_27CA71078);
  }

  sub_215783024(v3, &v172, &qword_27CA71078);
  v31 = MEMORY[0x277D227C8];
  v32 = MEMORY[0x277D227F0];
  v155 = v6;
  v147 = v13;
  if (v173)
  {
    sub_21571DF08(&v172, v175);
    if (v17)
    {
      v33 = v176;
      v34 = v177;
      v35 = __swift_project_boxed_opaque_existential_1(v175, v176);
      v173 = v33;
      v174 = *(v34 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v172);
      (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
      v37 = v153;
      v38 = v32;
      v39 = v161;
      (*(v164 + 104))(v153, *v31, v161);
      v40 = v154;
      v41 = v156;
      (*(v6 + 104))(v154, *v38, v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
      v42 = v163;
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2157B2B70;
      sub_2157A8F70();
      *&v167[0] = v43;
      sub_21578372C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
      sub_215783784();
      v44 = v158;
      v45 = v159;
      sub_2157A9540();
      v46 = v148;
      sub_2157A8FD0();
      v47 = v44;
      v6 = v155;
      (*(v42 + 8))(v47, v45);
      (*(v6 + 8))(v40, v41);
      (*(v164 + 8))(v37, v39);
      sub_215783830(&v169, &qword_27CA710A8);
      __swift_destroy_boxed_opaque_existential_1(&v172);
      v48 = sub_215785358(0, 1, 1, MEMORY[0x277D84F90]);
      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = sub_215785358(v49 > 1, v50 + 1, 1, v48);
      }

      v146 = v48;
      v48[2] = v50 + 1;
      (*(v162 + 32))(v48 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v50, v46, v157);
      __swift_destroy_boxed_opaque_existential_1(v175);
      v51 = 72;
      v32 = MEMORY[0x277D227F0];
      v31 = MEMORY[0x277D227C8];
      goto LABEL_53;
    }

    __swift_destroy_boxed_opaque_existential_1(v175);
    goto LABEL_52;
  }

  sub_215783830(&v172, &qword_27CA71078);
  if ((v17 & 1) == 0)
  {
LABEL_52:
    v146 = MEMORY[0x277D84F90];
    v51 = 67;
    goto LABEL_53;
  }

  v146 = MEMORY[0x277D84F90];
  v51 = 72;
LABEL_53:
  sub_21578326C(&v3[v51], v175);
  v52 = v3[8];
  v53 = v3[9];
  v54 = __swift_project_boxed_opaque_existential_1(v3 + 5, v52);
  v173 = v52;
  v174 = *(v53 + 8);
  v55 = __swift_allocate_boxed_opaque_existential_1(&v172);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  v56 = *v31;
  v57 = v164;
  v58 = *(v164 + 104);
  v59 = v153;
  v145 = v56;
  v148 = (v164 + 104);
  v144 = v58;
  v58(v153);
  v60 = *v32;
  v61 = *(v6 + 104);
  v62 = v154;
  v142 = v60;
  v63 = v156;
  v143 = v6 + 104;
  v141 = v61;
  v61(v154);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
  v65 = v163;
  v66 = *(v163 + 72);
  v67 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v138 = *(v163 + 80);
  v139 = v64;
  v136 = v67 + v66;
  v68 = swift_allocObject();
  v134 = xmmword_2157B2B70;
  *(v68 + 16) = xmmword_2157B2B70;
  v140 = v67;
  sub_2157A8F70();
  *&v167[0] = v68;
  v69 = sub_21578372C();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
  v71 = sub_215783784();
  v72 = v158;
  v132 = v71;
  v133 = v70;
  v73 = v159;
  v135 = v69;
  sub_2157A9540();
  sub_2157A8FD0();
  v74 = *(v65 + 8);
  v163 = v65 + 8;
  v137 = v74;
  v74(v72, v73);
  v75 = v155 + 8;
  v76 = *(v155 + 8);
  v76(v62, v63);
  v77 = *(v57 + 8);
  v164 = v57 + 8;
  v77(v59, v161);
  sub_215783830(&v169, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v172);
  v78 = v146;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155 = v75;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_215785358(0, *(v78 + 2) + 1, 1, v78);
  }

  v80 = v150;
  v82 = *(v78 + 2);
  v81 = *(v78 + 3);
  if (v82 >= v81 >> 1)
  {
    v78 = sub_215785358(v81 > 1, v82 + 1, 1, v78);
  }

  *(v78 + 2) = v82 + 1;
  v83 = *(v162 + 32);
  v84 = (*(v162 + 80) + 32) & ~*(v162 + 80);
  v85 = *(v162 + 72);
  v162 += 32;
  v83(&v78[v84 + v85 * v82], v151);
  if (v80)
  {
    v131 = v85;
    v146 = v84;
    v150 = v83;
    v151 = v76;
    v86 = v3[13];
    v87 = v3[14];
    v88 = __swift_project_boxed_opaque_existential_1(v3 + 10, v86);
    v173 = v86;
    v174 = *(v87 + 8);
    v89 = __swift_allocate_boxed_opaque_existential_1(&v172);
    (*(*(v86 - 8) + 16))(v89, v88, v86);
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v90 = swift_allocObject();
    *(v90 + 16) = v134;
    sub_2157A8F90();
    *&v167[0] = v90;
    v92 = v158;
    v91 = v159;
    sub_2157A9540();
    v93 = v153;
    v94 = v77;
    v95 = v161;
    v144(v153, v145, v161);
    v96 = v78;
    v97 = v154;
    v98 = v156;
    v141(v154, v142, v156);
    sub_2157A8FD0();
    v99 = v97;
    v78 = v96;
    v76 = v151;
    (v151)(v99, v98);
    v100 = v95;
    v77 = v94;
    v94(v93, v100);
    v137(v92, v91);
    sub_215783830(&v169, &qword_27CA710A8);
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v102 = *(v78 + 2);
    v101 = *(v78 + 3);
    if (v102 >= v101 >> 1)
    {
      v78 = sub_215785358(v101 > 1, v102 + 1, 1, v78);
    }

    v103 = v157;
    v83 = v150;
    v84 = v146;
    v104 = v147;
    *(v78 + 2) = v102 + 1;
    v85 = v131;
    (v83)(&v78[v84 + v102 * v131], v104, v103);
  }

  sub_215783024((v3 + 15), &v169, &qword_27CA71078);
  if (*(&v170 + 1))
  {
    sub_21571DF08(&v169, &v172);
    if (v160)
    {
      v131 = v85;
      v146 = v84;
      v150 = v83;
      v151 = v76;
      v105 = v173;
      v106 = v174;
      v107 = __swift_project_boxed_opaque_existential_1(&v172, v173);
      *(&v170 + 1) = v105;
      v171 = *(v106 + 8);
      v108 = __swift_allocate_boxed_opaque_existential_1(&v169);
      (*(*(v105 - 8) + 16))(v108, v107, v105);
      v168 = 0;
      memset(v167, 0, sizeof(v167));
      v109 = swift_allocObject();
      *(v109 + 16) = v134;
      sub_2157A8F90();
      v166[0] = v109;
      v111 = v158;
      v110 = v159;
      sub_2157A9540();
      v112 = v153;
      v113 = v77;
      v114 = v161;
      v144(v153, v145, v161);
      v115 = v78;
      v116 = v154;
      v117 = v156;
      v141(v154, v142, v156);
      sub_2157A8FD0();
      v118 = v116;
      v119 = v115;
      (v151)(v118, v117);
      v113(v112, v114);
      v137(v111, v110);
      sub_215783830(v167, &qword_27CA710A8);
      __swift_destroy_boxed_opaque_existential_1(&v169);
      v121 = *(v115 + 2);
      v120 = *(v115 + 3);
      if (v121 >= v120 >> 1)
      {
        v119 = sub_215785358(v120 > 1, v121 + 1, 1, v115);
      }

      v122 = v157;
      v123 = v149;
      v124 = v150;
      v125 = v146;
      *(v119 + 16) = v121 + 1;
      v124(&v125[v119 + v121 * v131], v123, v122);
    }

    __swift_destroy_boxed_opaque_existential_1(&v172);
  }

  else
  {
    sub_215783830(&v169, &qword_27CA71078);
  }

  v126 = sub_2157A9000();
  v127 = MEMORY[0x277D22808];
  v128 = v152;
  v152[3] = v126;
  v128[4] = v127;
  __swift_allocate_boxed_opaque_existential_1(v128);
  sub_2157A8FC0();
  return __swift_destroy_boxed_opaque_existential_1(v175);
}

uint64_t sub_215782434@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v55 = a2;
  v56 = sub_2157A95E0();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2157A9330();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2157A8A50();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215781040(a1, v63);
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_2157A9260();
  sub_2157A8A30();
  v21 = v20;
  sub_2157A8A00();
  v23 = v21 + v22;
  sub_2157A8A40();
  sub_2157A9320();
  v25 = v24;
  (*(v15 + 8))(v17, v14);
  v26 = v52;
  v27 = v23 - v25;
  __swift_project_boxed_opaque_existential_1(v6 + 92, v6[95]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v29 = v28;
  v30 = *(v26 + 1);
  v52 = v13;
  v30(v13, v56);
  v31 = v27 + v29;
  sub_2157A8A30();
  v33 = v32;
  sub_215783024((v6 + 40), &v59, &qword_27CA71080);
  if (v60)
  {
    sub_21571DF08(&v59, v61);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    if (sub_2157A8A60())
    {
      __swift_project_boxed_opaque_existential_1(v61, v62);
      if ((sub_2157A8AA0() & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v61, v62);
        sub_2157A8AC0();
        v35 = v34;
        v51 = v33;
        __swift_project_boxed_opaque_existential_1(v61, v62);
        sub_2157A8A30();
        sub_2157A94E0();
        sub_2157A8A90();
        __swift_project_boxed_opaque_existential_1(v6 + 114, v6[117]);
        v36 = v52;
        sub_21579F1CC();
        sub_2157A8BB0();
        v38 = v37;
        v30(v36, v56);
        v33 = v51 + v35 + v38;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    sub_215783830(&v59, &qword_27CA71080);
  }

  sub_215783024((v6 + 20), &v59, &qword_27CA71078);
  if (v60)
  {
    sub_21571DF08(&v59, v61);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    if (sub_2157A8A60())
    {
      __swift_project_boxed_opaque_existential_1(v61, v62);
      if ((sub_2157A8AA0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    sub_215783830(&v59, &qword_27CA71078);
  }

  sub_215783024((v6 + 35), &v59, &qword_27CA71080);
  if (v60)
  {
    sub_21571DF08(&v59, v61);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v61, v62), (sub_2157A8AA0()))
    {
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_17;
    }

LABEL_24:
    __swift_project_boxed_opaque_existential_1(v61, v62);
    sub_2157A8AC0();
    v56 = v48;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    sub_2157A94E0();
    sub_2157A8A90();
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v61);
    goto LABEL_28;
  }

  sub_215783830(&v59, &qword_27CA71080);
LABEL_17:
  sub_215783024((v6 + 25), &v59, &qword_27CA71080);
  if (v60)
  {
    sub_21571DF08(&v59, v61);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    if ((sub_2157A8AA0() & 1) == 0)
    {
      sub_215783024((v6 + 30), &v57, &qword_27CA71080);
      if (v58)
      {
        sub_21571DF08(&v57, &v59);
        __swift_project_boxed_opaque_existential_1(&v59, v60);
        if ((sub_2157A8AA0() & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(v61, v62);
          sub_2157A8AC0();
          v40 = v39;
          v42 = v41;
          v51 = a6;
          v44 = v31 - (v41 - v43);
          __swift_project_boxed_opaque_existential_1(v61, v62);
          sub_2157A94E0();
          sub_2157A8A90();
          __swift_project_boxed_opaque_existential_1(&v59, v60);
          sub_2157A8AC0();
          v50[2] = v45;
          v64.origin.x = v33;
          v50[1] = v46;
          v64.origin.y = v44;
          v64.size.width = v40;
          v64.size.height = v42;
          CGRectGetMaxX(v64);
          __swift_project_boxed_opaque_existential_1(v6 + 109, v6[112]);
          v47 = v52;
          sub_21579F1CC();
          sub_2157A8BB0();
          v30(v47, v56);
          __swift_project_boxed_opaque_existential_1(&v59, v60);
          a6 = v51;
          sub_2157A94E0();
          sub_2157A8A90();
        }

        __swift_destroy_boxed_opaque_existential_1(&v59);
      }

      else
      {
        sub_215783830(&v57, &qword_27CA71080);
      }
    }

    goto LABEL_27;
  }

  sub_215783830(&v59, &qword_27CA71080);
LABEL_28:
  v65.origin.x = a3;
  v65.origin.y = a4;
  v65.size.width = a5;
  v65.size.height = a6;
  CGRectGetWidth(v65);
  sub_2157A89F0();
  (*(v53 + 8))(v19, v54);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_215782EB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_2157A94B0();

  if (v13)
  {

    return sub_21577F310(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_21577FEC0(a1, a2, a3, a4, a5, a6);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_215783024(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21578308C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_215783170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2157831E0()
{
  result = qword_27CA71088;
  if (!qword_27CA71088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71088);
  }

  return result;
}

uint64_t sub_21578326C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_215783364(void *a1, void *a2, double a3)
{
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 traitCollection];
  sub_2157A94B0();

  __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v11 = *(v7 + 8);
  v11(v9, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 32, a1[35]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v11(v9, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 47, a1[50]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v11(v9, v6);
  return a3;
}

uint64_t sub_215783578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1072))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157835C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1064) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1072) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 1072) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21578372C()
{
  result = qword_280D2AF60;
  if (!qword_280D2AF60)
  {
    sub_2157A8FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF60);
  }

  return result;
}

unint64_t sub_215783784()
{
  result = qword_280D2AF50;
  if (!qword_280D2AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA710A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_215783830(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2157838A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157838EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 536) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 552) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157839D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_215783A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_215783ABC@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v118 = sub_2157A8FA0();
  v1 = *(v118 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v118);
  v117 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2157A8F40();
  v144 = *(v142 - 8);
  v4 = v144;
  MEMORY[0x28223BE20](v142);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2157A8FB0();
  v7 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2157A8FE0();
  v145 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v114 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v108 - v12;
  MEMORY[0x28223BE20](v13);
  v112 = &v108 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = &v108 - v16;
  MEMORY[0x28223BE20](v17);
  v109 = &v108 - v18;
  MEMORY[0x28223BE20](v19);
  v108 = &v108 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v108 - v22;
  v113 = sub_2157A8CF0();
  v154 = v113;
  v155 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v153);
  sub_2157A8CE0();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v24 = *(v7 + 104);
  v136 = *MEMORY[0x277D227E8];
  v137 = v7 + 104;
  v135 = v24;
  v24(v9);
  v25 = *(v4 + 104);
  v133 = *MEMORY[0x277D227C8];
  v26 = v142;
  v134 = v4 + 104;
  v132 = v25;
  v25(v6);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
  v28 = *(v1 + 80);
  v29 = (v28 + 32) & ~v28;
  v129 = *(v1 + 72);
  v128 = v28;
  v131 = v27;
  v30 = swift_allocObject();
  v126 = xmmword_2157B2B70;
  *(v30 + 16) = xmmword_2157B2B70;
  v130 = v29;
  sub_2157A8F70();
  *&v148[0] = v30;
  v31 = sub_21578372C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
  v33 = sub_215783784();
  v34 = v117;
  v125 = v32;
  v124 = v33;
  v35 = v118;
  v127 = v31;
  sub_2157A9540();
  v121 = v23;
  sub_2157A8FD0();
  v36 = *(v2 + 8);
  v140 = v2 + 8;
  v123 = v36;
  v36(v34, v35);
  v37 = *(v144 + 8);
  v144 += 8;
  v37(v6, v26);
  v38 = *(v7 + 8);
  v138 = v9;
  v139 = v7 + 8;
  v122 = v38;
  v38(v9, v141);
  sub_215783830(&v150, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  v39 = sub_215785358(0, 1, 1, MEMORY[0x277D84F90]);
  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = sub_215785358(v40 > 1, v41 + 1, 1, v39);
  }

  v39[2] = v41 + 1;
  v42 = *(v145 + 32);
  v120 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v119 = *(v145 + 72);
  v43 = v121;
  v145 += 32;
  v121 = v42;
  v42(v39 + v120 + v119 * v41, v43, v143);
  v44 = v146;
  sub_21578326C((v146 + 49), &v153);
  __swift_project_boxed_opaque_existential_1(&v153, v154);
  sub_2157A8D30();
  __swift_destroy_boxed_opaque_existential_1(&v153);
  __swift_project_boxed_opaque_existential_1(v44 + 49, v44[52]);
  sub_2157A8D10();
  sub_215783024((v44 + 44), &v150, &qword_27CA71080);
  v45 = v118;
  v46 = v117;
  v116 = v37;
  if (*(&v151 + 1))
  {
    sub_21571DF08(&v150, &v153);
    __swift_project_boxed_opaque_existential_1(&v153, v154);
    if ((sub_2157A8AA0() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(&v153, v154);
      if (sub_2157A8A60())
      {
        v152 = 0;
        v150 = 0u;
        v151 = 0u;
        v47 = v138;
        v48 = v141;
        v135(v138, v136, v141);
        v49 = v142;
        v132(v6, v133, v142);
        v50 = swift_allocObject();
        *(v50 + 16) = v126;
        sub_2157A8F70();
        *&v148[0] = v50;
        sub_2157A9540();
        v51 = v108;
        sub_2157A8FD0();
        v123(v46, v45);
        v37(v6, v49);
        v122(v47, v48);
        sub_215783830(&v150, &qword_27CA710A8);
        v53 = v39[2];
        v52 = v39[3];
        if (v53 >= v52 >> 1)
        {
          v39 = sub_215785358(v52 > 1, v53 + 1, 1, v39);
        }

        v39[2] = v53 + 1;
        v121(v39 + v120 + v53 * v119, v51, v143);
        v54 = v146[52];
        v55 = v146[53];
        v56 = __swift_project_boxed_opaque_existential_1(v146 + 49, v54);
        *(&v151 + 1) = v54;
        v152 = *(v55 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v150);
        (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v56, v54);
        v149 = 0;
        memset(v148, 0, sizeof(v148));
        v58 = v138;
        v59 = v141;
        v135(v138, v136, v141);
        v60 = v142;
        v132(v6, v133, v142);
        v61 = swift_allocObject();
        *(v61 + 16) = v126;
        sub_2157A8F70();
        v147 = v61;
        sub_2157A9540();
        v62 = v109;
        sub_2157A8FD0();
        v123(v46, v45);
        v63 = v116;
        v116(v6, v60);
        v122(v58, v59);
        sub_215783830(v148, &qword_27CA710A8);
        __swift_destroy_boxed_opaque_existential_1(&v150);
        v65 = v39[2];
        v64 = v39[3];
        if (v65 >= v64 >> 1)
        {
          v39 = sub_215785358(v64 > 1, v65 + 1, 1, v39);
        }

        v39[2] = v65 + 1;
        v121(v39 + v120 + v65 * v119, v62, v143);
        __swift_destroy_boxed_opaque_existential_1(&v153);
        goto LABEL_16;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v153);
  }

  else
  {
    sub_215783830(&v150, &qword_27CA71080);
  }

  v66 = v146[52];
  v67 = v146[53];
  v68 = __swift_project_boxed_opaque_existential_1(v146 + 49, v66);
  v154 = v66;
  v155 = *(v67 + 8);
  v69 = __swift_allocate_boxed_opaque_existential_1(&v153);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v70 = v138;
  v71 = v141;
  v135(v138, v136, v141);
  v72 = v142;
  v132(v6, v133, v142);
  v73 = swift_allocObject();
  *(v73 + 16) = v126;
  sub_2157A8F70();
  *&v148[0] = v73;
  sub_2157A9540();
  v74 = v111;
  sub_2157A8FD0();
  v123(v46, v45);
  v63 = v116;
  v116(v6, v72);
  v122(v70, v71);
  sub_215783830(&v150, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  v76 = v39[2];
  v75 = v39[3];
  if (v76 >= v75 >> 1)
  {
    v39 = sub_215785358(v75 > 1, v76 + 1, 1, v39);
  }

  v39[2] = v76 + 1;
  v121(v39 + v120 + v76 * v119, v74, v143);
LABEL_16:
  v77 = v146;
  __swift_project_boxed_opaque_existential_1(v146 + 54, v146[57]);
  sub_2157A8D30();
  __swift_project_boxed_opaque_existential_1(v77 + 54, v77[57]);
  sub_2157A8D10();
  v78 = v77[57];
  v79 = v77[58];
  v80 = __swift_project_boxed_opaque_existential_1(v77 + 54, v78);
  v154 = v78;
  v155 = *(v79 + 8);
  v81 = __swift_allocate_boxed_opaque_existential_1(&v153);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  sub_21578326C((v77 + 24), &v150);
  v82 = v138;
  v83 = v141;
  v135(v138, v136, v141);
  v84 = swift_allocObject();
  *(v84 + 16) = v126;
  sub_2157A8F90();
  *&v148[0] = v84;
  sub_2157A9540();
  v85 = v142;
  v132(v6, v133, v142);
  v86 = v112;
  sub_2157A8FD0();
  v63(v6, v85);
  v123(v46, v45);
  v122(v82, v83);
  sub_215783830(&v150, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  v88 = v39[2];
  v87 = v39[3];
  if (v88 >= v87 >> 1)
  {
    v39 = sub_215785358(v87 > 1, v88 + 1, 1, v39);
  }

  v39[2] = v88 + 1;
  v121(v39 + v120 + v88 * v119, v86, v143);
  sub_215783024((v146 + 59), &v150, &qword_27CA71078);
  if (*(&v151 + 1))
  {
    sub_21571DF08(&v150, &v153);
    __swift_project_boxed_opaque_existential_1(&v153, v154);
    if ((sub_2157A8AA0() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(&v153, v154);
      if (sub_2157A8A60())
      {
        v89 = v154;
        v90 = v155;
        v91 = __swift_project_boxed_opaque_existential_1(&v153, v154);
        *(&v151 + 1) = v89;
        v152 = *(v90 + 8);
        v92 = __swift_allocate_boxed_opaque_existential_1(&v150);
        (*(*(v89 - 8) + 16))(v92, v91, v89);
        sub_21578326C((v146 + 34), v148);
        v93 = v138;
        v94 = v141;
        v135(v138, v136, v141);
        v95 = v142;
        v132(v6, v133, v142);
        v96 = swift_allocObject();
        *(v96 + 16) = v126;
        v63 = v116;
        sub_2157A8F70();
        v147 = v96;
        sub_2157A9540();
        v97 = v110;
        sub_2157A8FD0();
        v123(v46, v45);
        v63(v6, v95);
        v122(v93, v94);
        sub_215783830(v148, &qword_27CA710A8);
        __swift_destroy_boxed_opaque_existential_1(&v150);
        v99 = v39[2];
        v98 = v39[3];
        if (v99 >= v98 >> 1)
        {
          v39 = sub_215785358(v98 > 1, v99 + 1, 1, v39);
        }

        v39[2] = v99 + 1;
        v121(v39 + v120 + v99 * v119, v97, v143);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v153);
  }

  else
  {
    sub_215783830(&v150, &qword_27CA71078);
  }

  v154 = v113;
  v155 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v153);
  sub_2157A8CE0();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v100 = v138;
  v101 = v141;
  v135(v138, v136, v141);
  v102 = v142;
  v132(v6, v133, v142);
  v103 = swift_allocObject();
  *(v103 + 16) = v126;
  sub_2157A8F70();
  *&v148[0] = v103;
  sub_2157A9540();
  v104 = v114;
  sub_2157A8FD0();
  v123(v46, v45);
  v63(v6, v102);
  v122(v100, v101);
  sub_215783830(&v150, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  v106 = v39[2];
  v105 = v39[3];
  if (v106 >= v105 >> 1)
  {
    v39 = sub_215785358(v105 > 1, v106 + 1, 1, v39);
  }

  v39[2] = v106 + 1;
  v121(v39 + v120 + v106 * v119, v104, v143);
  return sub_2157A8FC0();
}

uint64_t sub_215785124()
{
  v0 = sub_2157A9000();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215783ABC(v3);
  sub_2157A8F60();
  return (*(v1 + 8))(v3, v0);
}

double sub_215785234()
{
  v0 = sub_2157A9000();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215783ABC(v3);
  sub_2157A8F50();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

size_t sub_215785358(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B0);
  v10 = *(sub_2157A8FE0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2157A8FE0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2157855D4()
{
  type metadata accessor for LockupMediaLayout.DisplayType(319);
  if (v0 <= 0x3F)
  {
    sub_2157A8B50();
    if (v1 <= 0x3F)
    {
      sub_215785688();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_215785688()
{
  if (!qword_27CA710D0)
  {
    sub_2157A8B50();
    v0 = sub_2157A9520();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA710D0);
    }
  }
}

uint64_t sub_215785708()
{
  v0 = sub_2157A8B50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2157857A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2157857E0()
{
  sub_21578587C();
  if (v0 <= 0x3F)
  {
    sub_2157858E0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LockupMediaLayout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21578587C()
{
  result = qword_280D2B5E8;
  if (!qword_280D2B5E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280D2B5E8);
  }

  return result;
}

void sub_2157858E0()
{
  if (!qword_27CA710F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA71100);
    v0 = sub_2157A9470();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA710F8);
    }
  }
}

uint64_t sub_215785944(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v85 = a2;
  v7 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v7);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v75 - v10;
  v11 = sub_2157A95E0();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v75 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v75 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v75 - v23;
  v25 = sub_2157A8B50();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v76 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v75 - v35;
  v86 = v7;
  sub_215787230(a1 + *(v7 + 24), v24);
  v37 = *(v26 + 48);
  if (v37(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v36, v24, v25);
    sub_2157A8B60();
    sub_2157A8B00();
    v44 = v43;
    sub_2157A8B00();
    if (v45 >= v44)
    {
      sub_2157A8B20();
    }

    else
    {
      sub_2157A8B10();
    }

    v46 = *(v26 + 8);
    v46(v33, v25);
    v47 = v36;
    v48 = v25;
    return (v46)(v47, v48);
  }

  sub_215783830(v24, &qword_27CA710B8);
  sub_215787BA4(a1, v21, type metadata accessor for LockupMediaLayout.DisplayType);
  result = (v37)(v21, 10, v25);
  if (result <= 5)
  {
    if (result > 3)
    {
      if (result != 4)
      {
        return result;
      }

      return sub_2157A8B20();
    }

    if ((result - 1) >= 3)
    {
      (*(v26 + 32))(v30, v21, v25);
      v39 = v76;
      sub_2157A8B60();
      sub_2157A8B00();
      v41 = v40;
      sub_2157A8B00();
      if (v42 >= v41)
      {
        sub_2157A8B20();
      }

      else
      {
        sub_2157A8B10();
      }

      v46 = *(v26 + 8);
      v46(v39, v25);
      v47 = v30;
      v48 = v25;
      return (v46)(v47, v48);
    }

LABEL_16:
    v58 = v81;
    sub_215787BA4(a1, v81, type metadata accessor for LockupMediaLayout.DisplayType);
    v59 = v37(v58, 10, v25);
    if (v59 <= 4)
    {
      v60 = v84;
      v61 = v80;
      if (!v59)
      {
        sub_215787C0C(v81, type metadata accessor for LockupMediaLayout.DisplayType);
      }
    }

    else
    {
      v60 = v84;
      v61 = v80;
    }

    sub_215787BA4(a1, v61, type metadata accessor for LockupMediaLayout.DisplayType);
    v70 = v37(v61, 10, v25);
    if (v70 - 9 >= 2)
    {
      v71 = MEMORY[0x277D85048];
      if (v70 != 7)
      {
        v88 = MEMORY[0x277D85048];
        v89 = MEMORY[0x277D225F8];
        v87[0] = 0x4024000000000000;
        sub_215787C0C(v61, type metadata accessor for LockupMediaLayout.DisplayType);
        goto LABEL_36;
      }

      v89 = MEMORY[0x277D225F8];
      v72 = 0x4022000000000000;
    }

    else
    {
      v71 = MEMORY[0x277D85048];
      v89 = MEMORY[0x277D225F8];
      v72 = 0x4010000000000000;
    }

    v88 = v71;
    v87[0] = v72;
LABEL_36:
    __swift_project_boxed_opaque_existential_1(v87, MEMORY[0x277D85048]);
    v73 = v82;
    sub_21579F1CC();
    sub_2157A8BB0();
    (*(v83 + 8))(v73, v60);
    __swift_destroy_boxed_opaque_existential_1(v87);
    return sub_2157A8B20();
  }

  if (result > 8)
  {
    goto LABEL_16;
  }

  if (result == 6)
  {
    v49 = v78;
    sub_215787BA4(a1, v78, type metadata accessor for LockupMediaLayout.Metrics);
    sub_2157A8AF0();
    v63 = v62;
    sub_2157A8B40();
    v65 = v64;
    sub_215787C0C(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    v54 = *(v26 + 56);
    v55 = v63 < v65;
    v56 = 8;
    v57 = 3;
    goto LABEL_23;
  }

  if (result == 7)
  {
    v49 = v79;
    sub_215787BA4(a1, v79, type metadata accessor for LockupMediaLayout.Metrics);
    sub_2157A8AF0();
    v51 = v50;
    sub_2157A8B40();
    v53 = v52;
    sub_215787C0C(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    v54 = *(v26 + 56);
    v55 = v51 < v53;
    v56 = 10;
    v57 = 9;
LABEL_23:
    if (v55)
    {
      v66 = v57;
    }

    else
    {
      v66 = v56;
    }

    v54(v49, v66, 10, v25);
    sub_215785944(v49, v85, a3, a4);
    return sub_215787C0C(v49, type metadata accessor for LockupMediaLayout.Metrics);
  }

  sub_2157A8B20();
  v67 = v77;
  sub_215787BA4(a1, v77, type metadata accessor for LockupMediaLayout.DisplayType);
  v68 = v37(v67, 10, v25);
  if (v68 - 9 >= 2)
  {
    v69 = v84;
    v88 = MEMORY[0x277D85048];
    v89 = MEMORY[0x277D225F8];
    if (v68 == 7)
    {
      v87[0] = 0x4022000000000000;
    }

    else
    {
      v87[0] = 0x4024000000000000;
      sub_215787C0C(v67, type metadata accessor for LockupMediaLayout.DisplayType);
    }
  }

  else
  {
    v88 = MEMORY[0x277D85048];
    v89 = MEMORY[0x277D225F8];
    v87[0] = 0x4010000000000000;
    v69 = v84;
  }

  __swift_project_boxed_opaque_existential_1(v87, MEMORY[0x277D85048]);
  v74 = v82;
  sub_21579F1CC();
  sub_2157A8BB0();
  (*(v83 + 8))(v74, v69);
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

void sub_21578637C(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v73 = a2;
  v12 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v67 - v16;
  v18 = sub_2157A8B50();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v67 - v23;
  v25 = *(type metadata accessor for LockupMediaLayout(0) + 24);
  v76 = v6;
  v26 = v6 + v25;
  v27 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_215787230(v26 + *(v27 + 24), v17);
  v28 = *(v19 + 48);
  v67[1] = v19 + 48;
  v67[0] = v28;
  v29 = v28(v17, 1, v18);
  v70 = v14;
  v69 = v18;
  if (v29 == 1)
  {
    sub_215783830(v17, &qword_27CA710B8);
    v30 = a5;
    v31 = a6;
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_2157A8B60();
    sub_2157A8B00();
    v33 = v32;
    sub_2157A8B00();
    if (v34 >= v33)
    {
      sub_2157A8B20();
      v31 = v36;
      v30 = a5;
    }

    else
    {
      sub_2157A8B10();
      v30 = v35;
      v31 = a6;
    }

    v37 = *(v19 + 8);
    v37(v21, v18);
    v37(v24, v18);
  }

  v68 = v26;
  v72 = v30;
  v71 = v31;
  v38 = a1;
  v39 = sub_2157872A0(v26, a1, v30, v31);
  v74 = v40;
  v75 = v39;
  v41 = v76[5];
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = v41 + 32;
    v78 = 0.0;
    v45 = 0.0;
    while (v43 < *(v41 + 16))
    {
      v46 = v43 + 1;
      v79 = v43;
      sub_21578326C(v44, v80);
      v47 = sub_215786A14(v43, v38, v75, v74, a3, a4, a5, a6);
      v48 = a4;
      v50 = v49;
      v77 = v45;
      v51 = a3;
      v53 = v52;
      v54 = a5;
      v55 = a6;
      v57 = v56;
      __swift_project_boxed_opaque_existential_1(v80, v82);
      sub_2157A8A90();
      v83.origin.x = v47;
      v83.origin.y = v50;
      v83.size.width = v53;
      v83.size.height = v57;
      MaxX = CGRectGetMaxX(v83);
      v59 = v78;
      if (v78 <= MaxX)
      {
        v59 = MaxX;
      }

      v78 = v59;
      v84.origin.x = v47;
      v84.origin.y = v50;
      a4 = v48;
      v84.size.width = v53;
      a3 = v51;
      v45 = v77;
      v84.size.height = v57;
      a6 = v55;
      a5 = v54;
      MaxY = CGRectGetMaxY(v84);
      if (v45 <= MaxY)
      {
        v45 = MaxY;
      }

      sub_215783830(&v79, &qword_27CA71110);
      v44 += 40;
      ++v43;
      if (v42 == v46)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v78 = 0.0;
LABEL_17:
    v61 = v70;
    sub_215787BA4(v68, v70, type metadata accessor for LockupMediaLayout.DisplayType);
    v62 = (v67[0])(v61, 10, v69);
    if ((v62 - 6) >= 2)
    {
      if (v62 == 8)
      {
        v87.origin.x = a3;
        v87.origin.y = a4;
        v87.size.width = a5;
        v87.size.height = a6;
        CGRectGetMidX(v87);
      }

      else
      {
        sub_215787C0C(v61, type metadata accessor for LockupMediaLayout.DisplayType);
      }
    }

    else
    {
      v85.origin.x = a3;
      v85.origin.y = a4;
      v85.size.width = a5;
      v85.size.height = a6;
      CGRectGetMidX(v85);
      v86.origin.x = a3;
      v86.origin.y = a4;
      v86.size.width = a5;
      v86.size.height = a6;
      CGRectGetMidY(v86);
    }

    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    sub_2157A94E0();
    sub_2157A8A90();
    v63 = [v38 traitCollection];
    v64 = sub_2157A94A0();

    if (v64)
    {
      v65 = *(v41 + 16);
      if (v65)
      {
        v66 = v41 + 32;
        do
        {
          sub_21578326C(v66, &v79);
          __swift_project_boxed_opaque_existential_1(&v79, v81);
          __swift_project_boxed_opaque_existential_1(&v79, v81);
          sub_2157A8A80();
          sub_2157A94E0();
          sub_2157A8A90();
          __swift_destroy_boxed_opaque_existential_1(&v79);
          v66 += 40;
          --v65;
        }

        while (v65);
      }
    }

    sub_2157A89E0();
  }
}

double sub_215786A14(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v66 = a1;
  v67 = a2;
  v15 = sub_2157A95E0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v64 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v68 = v8 + *(type metadata accessor for LockupMediaLayout(0) + 24);
  sub_215787BA4(v68, v28, type metadata accessor for LockupMediaLayout.DisplayType);
  v29 = sub_2157A8B50();
  v30 = *(*(v29 - 8) + 48);
  v31 = v30(v28, 10, v29);
  v32 = MEMORY[0x277D85048];
  if ((v31 - 9) < 2)
  {
    v71 = MEMORY[0x277D225F8];
    v33 = 0x4010000000000000;
LABEL_5:
    v70 = MEMORY[0x277D85048];
    v69[0] = v33;
    goto LABEL_7;
  }

  if (v31 == 7)
  {
    v71 = MEMORY[0x277D225F8];
    v33 = 0x4022000000000000;
    goto LABEL_5;
  }

  v70 = MEMORY[0x277D85048];
  v71 = MEMORY[0x277D225F8];
  v69[0] = 0x4024000000000000;
  sub_215787C0C(v28, type metadata accessor for LockupMediaLayout.DisplayType);
  v32 = v70;
LABEL_7:
  __swift_project_boxed_opaque_existential_1(v69, v32);
  sub_21579F1CC();
  sub_2157A8BB0();
  v35 = v34;
  (*(v16 + 8))(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v36 = v68;
  sub_215787BA4(v68, v25, type metadata accessor for LockupMediaLayout.DisplayType);
  v37 = v30;
  v38 = v30(v25, 10, v29);
  if (v38 > 5)
  {
    if (v38 <= 8)
    {
      if (v38 == 6)
      {
        type metadata accessor for LockupMediaLayout.Metrics(0);
        sub_2157A8AF0();
        v51 = v50;
        sub_2157A8B40();
        if (v51 < v52)
        {
          v53 = floor(v66 / 3.0) + (v66 % 3);
          v43 = v53 * a3 + v53 * v35;
          return v43 + a5;
        }

        v44 = sub_2157879EC(v66, a3, a4, v35);
      }

      else if (v38 == 7)
      {
        sub_215787AD0(v66);
      }

      else
      {
        sub_215787988(v66);
      }

      v43 = v44;
      return v43 + a5;
    }

    v73.origin.x = a5;
    v73.origin.y = a6;
    v73.size.width = a7;
    v73.size.height = a8;
    Width = CGRectGetWidth(v73);
    v46 = v65;
    sub_215787BA4(v36, v65, type metadata accessor for LockupMediaLayout.DisplayType);
    v47 = v37(v46, 10, v29);
    if (v47 <= 4)
    {
      v48 = v64;
      if (v47 <= 1)
      {
        if (!v47)
        {
          sub_215787C0C(v46, type metadata accessor for LockupMediaLayout.DisplayType);
        }

        v49 = 1.0;
      }

      else if (v47 == 2)
      {
        v49 = 2.0;
      }

      else if (v47 == 3)
      {
        v49 = 3.0;
      }

      else
      {
        v49 = 1.0;
      }
    }

    else
    {
      v48 = v64;
      if (v47 > 7)
      {
        if (v47 == 8)
        {
          v49 = 5.0;
        }

        else if (v47 == 9)
        {
          v49 = 7.0;
        }

        else
        {
          v49 = 4.0;
        }
      }

      else if (v47 == 5)
      {
        v49 = 0.0;
      }

      else if (v47 == 6)
      {
        v49 = 9.0;
      }

      else
      {
        v49 = 14.0;
      }
    }

    sub_215787BA4(v36, v48, type metadata accessor for LockupMediaLayout.DisplayType);
    v58 = v37(v48, 10, v29);
    if (v58 <= 4)
    {
      if (v58 <= 1)
      {
        if (!v58)
        {
          sub_215787C0C(v48, type metadata accessor for LockupMediaLayout.DisplayType);
        }

        v59 = 0.0;
      }

      else
      {
        v59 = 2.0;
        if (v58 != 3)
        {
          v59 = 0.0;
        }

        if (v58 == 2)
        {
          v59 = 1.0;
        }
      }
    }

    else
    {
      v59 = 4.0;
      v60 = 6.0;
      if (v58 != 9)
      {
        v60 = 3.0;
      }

      if (v58 != 8)
      {
        v59 = v60;
      }

      v61 = -1.0;
      v62 = 8.0;
      if (v58 != 6)
      {
        v62 = 13.0;
      }

      if (v58 != 5)
      {
        v61 = v62;
      }

      if (v58 <= 7)
      {
        v59 = v61;
      }
    }

    v57 = v66;
    v56 = (Width - (v49 * a3 + v35 * v59)) * 0.5;
LABEL_73:
    v43 = (v35 + a3) * v57 + v56;
    return v43 + a5;
  }

  if (v38 <= 2)
  {
    v39 = a5;
    v40 = a6;
    v41 = a7;
    v42 = a8;
    if (!v38)
    {
      v43 = (CGRectGetWidth(*&v39) - a3) * 0.5;
      sub_215787C0C(v25, type metadata accessor for LockupMediaLayout.DisplayType);
      return v43 + a5;
    }

    if (v38 == 1)
    {
      v43 = CGRectGetMidX(*&v39) + a3 * -0.5;
      return v43 + a5;
    }

    v54 = CGRectGetWidth(*&v39);
    v55 = a3 + a3 + v35;
    goto LABEL_31;
  }

  if (v38 == 3)
  {
    v74.origin.x = a5;
    v74.origin.y = a6;
    v74.size.width = a7;
    v74.size.height = a8;
    v54 = CGRectGetWidth(v74);
    v55 = a3 * 3.0 + v35 + v35;
LABEL_31:
    v56 = (v54 - v55) * 0.5;
    v57 = v66;
    goto LABEL_73;
  }

  if (v38 == 4)
  {
    v72.origin.x = a5;
    v72.origin.y = a6;
    v72.size.width = a7;
    v72.size.height = a8;
    v43 = (CGRectGetWidth(v72) - a3) * 0.5;
  }

  else
  {
    v43 = 0.0;
  }

  return v43 + a5;
}

unint64_t sub_2157871D8()
{
  result = qword_27CA71108;
  if (!qword_27CA71108)
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71108);
  }

  return result;
}

uint64_t sub_215787230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2157872A0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v65 = a2;
  v66 = sub_2157A95E0();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8B50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v27 = a1;
  sub_215787BA4(a1, &v62 - v25, type metadata accessor for LockupMediaLayout.DisplayType);
  v62 = v9;
  v28 = *(v9 + 48);
  v29 = v28(v26, 10, v8);
  if (v29 > 5)
  {
    if (v29 > 8)
    {
      goto LABEL_14;
    }

    if (v29 == 6)
    {
      v36 = *(v27 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28)) * 0.78;
    }

    else
    {
      if (v29 != 7)
      {
        v36 = a3 * 0.64;
        type metadata accessor for LockupMediaLayout.Metrics(0);
        goto LABEL_40;
      }

      v35 = *(v27 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28)) * 0.35;
      if (v35 <= 232.0)
      {
        v35 = 232.0;
      }

      if (v35 <= 280.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 280.0;
      }
    }

    sub_2157A8AF0();
    v51 = v50;
    sub_2157A8B40();
    if (v51 < v52)
    {
LABEL_38:
      sub_2157A8B10();
      return v53;
    }

LABEL_40:
    sub_2157A8B20();
    return v36;
  }

  if (v29 > 3)
  {
    v36 = 0.0;
    if (v29 == 4)
    {
      type metadata accessor for LockupMediaLayout.Metrics(0);
      sub_2157A8B60();
      sub_2157A8B00();
      v47 = v46;
      sub_2157A8B00();
      if (v48 >= v47)
      {
        sub_2157A8B20();
      }

      else
      {
        sub_2157A8B10();
        a3 = v49;
      }

      (*(v62 + 8))(v17, v8);
      return a3;
    }

    return v36;
  }

  if ((v29 - 1) >= 3)
  {
    v30 = v62;
    (*(v62 + 32))(v14, v26, v8);
    sub_2157A8B60();
    sub_2157A8B00();
    v32 = v31;
    sub_2157A8B00();
    if (v33 >= v32)
    {
      sub_2157A8B20();
    }

    else
    {
      sub_2157A8B10();
      a3 = v34;
    }

    v60 = *(v30 + 8);
    v60(v11, v8);
    v60(v14, v8);
    return a3;
  }

LABEL_14:
  sub_215787BA4(v27, v23, type metadata accessor for LockupMediaLayout.DisplayType);
  v37 = v28(v23, 10, v8);
  if (v37 <= 4)
  {
    v44 = v63;
    v43 = v64;
    if (v37 <= 1)
    {
      if (!v37)
      {
        sub_215787C0C(v23, type metadata accessor for LockupMediaLayout.DisplayType);
      }

      v42 = 1.0;
    }

    else
    {
      v45 = 3.0;
      if (v37 != 3)
      {
        v45 = 1.0;
      }

      if (v37 == 2)
      {
        v42 = 2.0;
      }

      else
      {
        v42 = v45;
      }
    }
  }

  else
  {
    v38 = 5.0;
    v39 = 7.0;
    if (v37 != 9)
    {
      v39 = 4.0;
    }

    if (v37 != 8)
    {
      v38 = v39;
    }

    v40 = 0.0;
    v41 = 9.0;
    if (v37 != 6)
    {
      v41 = 14.0;
    }

    if (v37 != 5)
    {
      v40 = v41;
    }

    if (v37 <= 7)
    {
      v42 = v40;
    }

    else
    {
      v42 = v38;
    }

    v44 = v63;
    v43 = v64;
  }

  sub_215787BA4(v27, v20, type metadata accessor for LockupMediaLayout.DisplayType);
  v54 = v28(v20, 10, v8);
  if ((v54 - 9) >= 2)
  {
    v55 = v66;
    v68 = MEMORY[0x277D85048];
    v69 = MEMORY[0x277D225F8];
    if (v54 == 7)
    {
      v67[0] = 0x4022000000000000;
    }

    else
    {
      v67[0] = 0x4024000000000000;
      sub_215787C0C(v20, type metadata accessor for LockupMediaLayout.DisplayType);
    }
  }

  else
  {
    v68 = MEMORY[0x277D85048];
    v69 = MEMORY[0x277D225F8];
    v67[0] = 0x4010000000000000;
    v55 = v66;
  }

  __swift_project_boxed_opaque_existential_1(v67, MEMORY[0x277D85048]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v57 = v56;
  (*(v43 + 8))(v44, v55);
  __swift_destroy_boxed_opaque_existential_1(v67);
  v58 = v42 + -1.0;
  if (v42 + -1.0 <= 0.0)
  {
    v58 = 0.0;
  }

  v36 = (a3 - v58 * v57) / v42;
  type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_2157A8B20();
  if (v59 > a4)
  {
    goto LABEL_38;
  }

  return v36;
}

uint64_t sub_215787988(uint64_t result)
{
  if (__OFSUB__(result, 3 * (result / 3)))
  {
    __break(1u);
  }

  return result;
}

double sub_2157879EC(uint64_t a1, double a2, double a3, double a4)
{
  v4 = 1.0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 != 7)
      {
        return a2 + a4;
      }

      v4 = 0.0;
    }

    else if (a1 != 5)
    {
      v4 = 0.0;
      return v4 * a2 + v4 * a4;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      if (a1 != 1)
      {
        v4 = 2.0;
        if (a1 != 2)
        {
          return a2 + a4;
        }

        return v4 * a2 + v4 * a4;
      }

      return a4 * 0.5 + a2 * 0.5 + v4 * a2 + v4 * a4;
    }

    if (a1 != 3)
    {
      return v4 * a2 + v4 * a4;
    }

    v4 = 0.0;
  }

  return a4 * 0.5 + a2 * 0.5 + v4 * a2 + v4 * a4;
}

uint64_t sub_215787AD0(uint64_t result)
{
  v1 = result - qword_28279FF80;
  if (__OFSUB__(result, qword_28279FF80) || (v1 & 0x8000000000000000) == 0 && ((v2 = v1 - qword_28279FF88, __OFSUB__(v1, qword_28279FF88)) || (v2 & 0x8000000000000000) == 0 && ((v3 = v2 - qword_28279FF90, __OFSUB__(v2, qword_28279FF90)) || (v3 & 0x8000000000000000) == 0 && __OFSUB__(v3, qword_28279FF98))))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215787BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215787C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215787C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  sub_21578856C(v2, v6);
  v9 = sub_2157A8B50();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 10, v9);
  if (v11 == 2)
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    sub_21578856C(v2, a1);
    return sub_2157885D0(v6);
  }

  if (v11 != 1)
  {
    goto LABEL_6;
  }

  if (v8 == 1)
  {
    (*(v10 + 56))(a1, 2, 10, v9);
    return sub_2157885D0(v6);
  }

LABEL_8:
  sub_2157885D0(v6);
  return (*(v10 + 56))(a1, 3, 10, v9);
}

uint64_t sub_215787E04@<X0>(id a1@<X1>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_215788950(a1, a2, 0, 1);
  v7 = v6;
  v8 = v6 >> 62;
  if (v6 >> 62)
  {
    if (sub_2157A95B0() >= 1)
    {
      goto LABEL_3;
    }

LABEL_44:
    v42 = sub_2157A8B50();
    (*(*(v42 - 8) + 56))(a4, 5, 10, v42);
    goto LABEL_45;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (a3)
  {
    v9 = sub_2157A93E0();
    v11 = v10;
    if (v9 == sub_2157A93E0() && v11 == v12)
    {
      goto LABEL_11;
    }

    v14 = sub_2157A95F0();

    if (v14)
    {
      goto LABEL_12;
    }

    v15 = sub_2157A93E0();
    v17 = v16;
    if (v15 == sub_2157A93E0() && v17 == v18)
    {
LABEL_11:

      goto LABEL_12;
    }

    v26 = sub_2157A95F0();

    if (v26)
    {
LABEL_12:

      v19 = [objc_opt_self() currentDevice];
      v20 = [v19 userInterfaceIdiom];

      v21 = sub_2157A8B50();
      v22 = *(*(v21 - 8) + 56);
      v23 = a4;
      if (v20 == 1)
      {
        v24 = 7;
      }

      else
      {
        v24 = 6;
      }

LABEL_15:

      return v22(v23, v24, 10, v21);
    }

    v27 = sub_2157A93E0();
    v29 = v28;
    if (v27 == sub_2157A93E0() && v29 == v30)
    {
      goto LABEL_21;
    }

    v31 = sub_2157A95F0();

    if (v31)
    {
      goto LABEL_23;
    }

    v37 = sub_2157A93E0();
    v39 = v38;
    if (v37 == sub_2157A93E0() && v39 == v40)
    {
LABEL_21:

LABEL_23:
      if (v8)
      {
        result = sub_2157A95B0();
      }

      else
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2160703B0](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v32 = *(v7 + 32);
        }

        v33 = v32;

        v34 = [v33 isPortrait];
      }

      else
      {

        v33 = 0;
        v34 = 1;
      }

      v35 = [objc_opt_self() currentDevice];
      v36 = [v35 userInterfaceIdiom];

      v21 = sub_2157A8B50();
      v22 = *(*(v21 - 8) + 56);
      v23 = a4;
      if (v34)
      {
        if (v36 == 1)
        {
          v24 = 9;
        }

        else
        {
          v24 = 3;
        }
      }

      else if (v36 == 1)
      {
        v24 = 10;
      }

      else
      {
        v24 = 8;
      }

      goto LABEL_15;
    }

    v41 = sub_2157A95F0();

    if (v41)
    {
      goto LABEL_23;
    }
  }

  sub_215788274(v7, a4);
LABEL_45:
}

uint64_t sub_215788274@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v7 <= 2 || v5 == 1)
    {
      if (v7 >= 2)
      {
        v17 = sub_2157A8B50();
        v12 = *(*(v17 - 8) + 56);
        v13 = v17;
        v14 = a2;
        v15 = 2;
      }

      else
      {
        v13 = sub_2157A8B50();
        v12 = *(*(v13 - 8) + 56);
        v14 = a2;
        if (v7 == 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = 5;
        }
      }
    }

    else
    {
      v11 = sub_2157A8B50();
      v12 = *(*(v11 - 8) + 56);
      v13 = v11;
      v14 = a2;
      v15 = 3;
    }

    goto LABEL_16;
  }

  v7 = sub_2157A95B0();
  result = sub_2157A95B0();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2160703B0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(a1 + 32);
  }

  v9 = v8;
  v10 = [v8 isPortrait];

  if (v10)
  {
    goto LABEL_7;
  }

  v16 = sub_2157A8B50();
  v12 = *(*(v16 - 8) + 56);
  v13 = v16;
  v14 = a2;
  v15 = 4;
LABEL_16:

  return v12(v14, v15, 10, v13);
}

uint64_t sub_21578847C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2157A95B0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2157A95B0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21578862C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2157887C0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21578856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2157885D0(uint64_t a1)
{
  v2 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21578862C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2157A95B0();
LABEL_9:
  result = sub_2157A9580();
  *v1 = result;
  return result;
}

void sub_2157886CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_215788D28(0, &qword_27CA71118);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2157887C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2157A95B0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2157A95B0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_215788D70();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71128);
            v9 = sub_21579570C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_215788D28(0, &qword_27CA71118);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215788950(id a1, id a2, int64_t a3, char a4)
{
  LOBYTE(v6) = a4;
  v27 = MEMORY[0x277D84F90];
  if (!a2)
  {
    goto LABEL_10;
  }

  v4 = [a2 videos];
  sub_215788D28(0, &qword_27CA71120);
  v9 = sub_2157A9440();

  if (v9 >> 62)
  {
    v10 = sub_2157A95B0();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_43:

    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x2160703B0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v11 = *(v9 + 32);
  }

  v4 = v11;

  v12 = [v4 preview];

  if (!v12)
  {
    goto LABEL_10;
  }

  v4 = v12;
  MEMORY[0x216070260]();
  v10 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    sub_2157A9460();

LABEL_10:
    if (a1)
    {
LABEL_11:
      v13 = [a1 artwork];
      sub_215788D28(0, &qword_27CA71118);
      v14 = sub_2157A9440();

      sub_21578847C(v14);
    }

LABEL_12:
    v15 = v27;
    if (v6)
    {
      return v15;
    }

    a1 = (v27 >> 62);
    if (v27 >> 62)
    {
      v10 = sub_2157A95B0();
      if (v10 <= a3)
      {
        return v15;
      }
    }

    else
    {
      v10 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 <= a3)
      {
        return v15;
      }
    }

    if (a3 < 0)
    {
LABEL_49:
      __break(1u);
    }

    else
    {
      if (a1)
      {
        if (v27 < 0)
        {
          v6 = v27;
        }

        else
        {
          v6 = v27 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_2157A95B0() < 0)
        {
          __break(1u);
          goto LABEL_53;
        }

        v10 = sub_2157A95B0();
      }

      else
      {
        v10 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10 >= a3)
      {
        if ((v27 & 0xC000000000000001) != 0 && a3)
        {
          sub_215788D28(0, &qword_27CA71118);

          v16 = 0;
          do
          {
            v17 = v16 + 1;
            sub_2157A9560();
            v16 = v17;
          }

          while (a3 != v17);
          if (!a1)
          {
LABEL_29:
            v6 = v27 & 0xFFFFFFFFFFFFFF8;
            v18 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
            a3 = (2 * a3) | 1;
            if (a3)
            {
LABEL_34:
              v5 = v18;
              sub_2157A9600();
              swift_unknownObjectRetain_n();
              v23 = swift_dynamicCastClass();
              if (!v23)
              {
                swift_unknownObjectRelease();
                v23 = MEMORY[0x277D84F90];
              }

              v24 = *(v23 + 16);

              if (__OFSUB__(a3 >> 1, a1))
              {
LABEL_53:
                __break(1u);
              }

              else if (v24 == (a3 >> 1) - a1)
              {
                v25 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                v15 = v25;
                if (v25)
                {
                  return v15;
                }

                v22 = MEMORY[0x277D84F90];
                goto LABEL_40;
              }

              swift_unknownObjectRelease();
              v18 = v5;
            }

LABEL_33:
            sub_2157886CC(v6, v18, a1, a3);
            v22 = v21;

LABEL_40:
            swift_unknownObjectRelease();
            return v22;
          }
        }

        else
        {

          if (!a1)
          {
            goto LABEL_29;
          }
        }

        v6 = sub_2157A95C0();
        a1 = v19;
        a3 = v20;
        if (v20)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_51:
    v5 = v10;
    sub_2157A9450();
  }
}

uint64_t sub_215788D28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_215788D70()
{
  result = qword_27CA71130;
  if (!qword_27CA71130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA71128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71130);
  }

  return result;
}

uint64_t sub_215788DD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v125 = sub_2157A8FB0();
  v4 = *(v125 - 8);
  MEMORY[0x28223BE20](v125 - 8);
  v119 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2157A8F40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_2157A8FA0();
  v126 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2157A8FE0();
  v11 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v110 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = v92 - v14;
  MEMORY[0x28223BE20](v15);
  v113 = v92 - v16;
  v112 = sub_2157A9000();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v123 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21578B32C((v1 + 63), &v135);
  v18 = v136;
  sub_215783830(&v135, &qword_27CA71078);
  if (!v18)
  {
    goto LABEL_4;
  }

  sub_21578B32C((v2 + 63), &v135);
  v19 = v136;
  if (!v136)
  {
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(&v135, v136);
  v20 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v135);
  if (v20)
  {
LABEL_4:
    v19 = 0;
    goto LABEL_8;
  }

  sub_21578B32C((v2 + 63), &v135);
  v19 = v136;
  if (v136)
  {
    __swift_project_boxed_opaque_existential_1(&v135, v136);
    v19 = sub_2157A8A60();
    __swift_destroy_boxed_opaque_existential_1(&v135);
  }

  else
  {
LABEL_7:
    sub_215783830(&v135, &qword_27CA71078);
  }

LABEL_8:
  sub_21578B32C((v2 + 48), &v135);
  v21 = v136;
  sub_215783830(&v135, &qword_27CA71078);
  v118 = v9;
  if (!v21)
  {
    LODWORD(v120) = 0;
    goto LABEL_16;
  }

  sub_21578B32C((v2 + 48), &v135);
  if (!v136)
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(&v135, v136);
  v22 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v135);
  if ((v22 & 1) == 0)
  {
    sub_21578B32C((v2 + 48), &v135);
    if (v136)
    {
      __swift_project_boxed_opaque_existential_1(&v135, v136);
      LODWORD(v120) = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(&v135);
      goto LABEL_16;
    }

LABEL_14:
    sub_215783830(&v135, &qword_27CA71078);
  }

  LODWORD(v120) = 0;
LABEL_16:
  if (sub_2157A9490())
  {
    if (((v19 | v120) & 1) == 0)
    {
LABEL_18:
      __swift_project_boxed_opaque_existential_1(v2 + 53, v2[56]);
      sub_2157A8D10();
      __swift_project_boxed_opaque_existential_1(v2 + 58, v2[61]);
      sub_2157A8D10();
      sub_21578326C((v2 + 53), &v135);
      sub_21578326C((v2 + 58), &v132);
      sub_21578326C((v2 + 8), &v129);
      sub_21578326C((v2 + 18), &v128);
      sub_21578326C((v2 + 18), v127);
      v23 = sub_2157A92F0();
      v24 = MEMORY[0x277D229C8];
      a1[3] = v23;
      a1[4] = v24;
      a1[5] = MEMORY[0x277D229D0];
      __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_2157A92E0();
    }
  }

  else if (!(v19 & 1 | ((sub_2157A94B0() & 1) == 0) | v120 & 1))
  {
    goto LABEL_18;
  }

  v108 = v19;
  v124 = v4;
  v116 = v11;
  v122 = v6;
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(v2 + 53, v2[56]);
  sub_2157A8D30();
  __swift_project_boxed_opaque_existential_1(v2 + 53, v2[56]);
  sub_2157A8D10();
  __swift_project_boxed_opaque_existential_1(v2 + 58, v2[61]);
  sub_2157A8D30();
  __swift_project_boxed_opaque_existential_1(v2 + 58, v2[61]);
  sub_2157A8D10();
  sub_2157A8FC0();
  sub_21578B32C((v2 + 48), &v132);
  v26 = MEMORY[0x277D227C8];
  v27 = MEMORY[0x277D227F0];
  if (v133)
  {
    sub_215783890(&v132, &v135);
    v28 = v136;
    v29 = v137;
    v30 = __swift_project_boxed_opaque_existential_1(&v135, v136);
    v133 = v28;
    v134 = *(v29 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2157B33C0;
    sub_2157A8F90();
    sub_2157A8F80();
    v128 = v32;
    sub_21578B39C(&qword_280D2AF60, MEMORY[0x277D227D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
    sub_21578B3E4(&qword_280D2AF50, &qword_27CA710A0);
    v33 = v114;
    v34 = v119;
    v35 = v115;
    sub_2157A9540();
    v36 = v7;
    v37 = *(v7 + 104);
    v38 = v118;
    v39 = v122;
    v37(v118, *MEMORY[0x277D227C8], v122);
    v40 = v124;
    v41 = v125;
    (*(v124 + 104))(v34, *MEMORY[0x277D227F0], v125);
    v42 = v113;
    sub_2157A8FD0();
    (*(v40 + 8))(v34, v41);
    v43 = v36;
    (*(v36 + 8))(v38, v39);
    v26 = MEMORY[0x277D227C8];
    v44 = v33;
    v45 = v43;
    v46 = v35;
    v27 = MEMORY[0x277D227F0];
    (*(v126 + 8))(v44, v46);
    sub_215783830(&v129, &qword_27CA710A8);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_2157A8FF0();
    (*(v116 + 8))(v42, v121);
    __swift_destroy_boxed_opaque_existential_1(&v135);
  }

  else
  {
    sub_215783830(&v132, &qword_27CA71078);
    v45 = v7;
    v38 = v118;
    v40 = v124;
  }

  v117 = v45;
  v47 = v2[56];
  v48 = v2[57];
  v49 = __swift_project_boxed_opaque_existential_1(v2 + 53, v47);
  v136 = v47;
  v137 = *(v48 + 8);
  v50 = __swift_allocate_boxed_opaque_existential_1(&v135);
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  v51 = 8;
  if (v120)
  {
    v51 = 13;
  }

  LODWORD(v94) = v120 | v108;
  sub_21578326C(&v2[v51], &v132);
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v108 = *v26;
  v52 = *(v45 + 104);
  v120 = v45 + 104;
  v107 = v52;
  v52(v38);
  v105 = *v27;
  v53 = *(v40 + 104);
  v106 = v40 + 104;
  v104 = v53;
  v54 = v119;
  v53(v119);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098);
  v103 = *(v126 + 72);
  v55 = *(v126 + 80);
  v56 = v126;
  v57 = swift_allocObject();
  v93 = xmmword_2157B2B70;
  *(v57 + 16) = xmmword_2157B2B70;
  sub_2157A8F70();
  v128 = v57;
  v92[1] = sub_21578B39C(&qword_280D2AF60, MEMORY[0x277D227D8]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0);
  v99 = sub_21578B3E4(&qword_280D2AF50, &qword_27CA710A0);
  v58 = v114;
  v59 = v115;
  sub_2157A9540();
  v60 = v109;
  v61 = v118;
  sub_2157A8FD0();
  v101 = *(v56 + 8);
  v126 = v56 + 8;
  v101(v58, v59);
  v62 = *(v124 + 8);
  v124 += 8;
  v98 = v62;
  v62(v54, v125);
  v63 = *(v117 + 8);
  v117 += 8;
  v97 = v63;
  v64 = v61;
  v63(v61, v122);
  sub_215783830(&v129, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  __swift_destroy_boxed_opaque_existential_1(&v135);
  sub_2157A8FF0();
  v65 = v116 + 8;
  v96 = *(v116 + 8);
  v96(v60, v121);
  v67 = v2[61];
  v66 = v2[62];
  v68 = __swift_project_boxed_opaque_existential_1(v2 + 58, v67);
  v136 = v67;
  v137 = *(v66 + 8);
  v69 = __swift_allocate_boxed_opaque_existential_1(&v135);
  v70 = v68;
  v71 = v119;
  (*(*(v67 - 8) + 16))(v69, v70, v67);
  v72 = 18;
  if (v94)
  {
    v72 = 23;
  }

  sub_21578326C(&v2[v72], &v132);
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v94 = v55;
  v73 = swift_allocObject();
  *(v73 + 16) = v93;
  v109 = ((v55 + 32) & ~v55);
  sub_2157A8F90();
  v128 = v73;
  sub_2157A9540();
  v74 = v122;
  v107(v64, v108, v122);
  v75 = v125;
  v104(v71, v105, v125);
  v76 = v110;
  sub_2157A8FD0();
  v98(v71, v75);
  v97(v64, v74);
  v101(v58, v59);
  sub_215783830(&v129, &qword_27CA710A8);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  __swift_destroy_boxed_opaque_existential_1(&v135);
  v77 = v123;
  sub_2157A8FF0();
  v116 = v65;
  v96(v76, v121);
  sub_21578B32C((v2 + 63), &v132);
  if (v133)
  {
    sub_215783890(&v132, &v135);
    v79 = v136;
    v78 = v137;
    v80 = v71;
    v81 = __swift_project_boxed_opaque_existential_1(&v135, v136);
    v133 = v79;
    v134 = *(v78 + 8);
    v82 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(*(v79 - 8) + 16))(v82, v81, v79);
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_2157B33C0;
    sub_2157A8F90();
    sub_2157A8F80();
    v128 = v83;
    sub_2157A9540();
    v84 = v118;
    v85 = v122;
    v107(v118, v108, v122);
    v86 = v125;
    v104(v80, v105, v125);
    v87 = v113;
    sub_2157A8FD0();
    v98(v80, v86);
    v97(v84, v85);
    v101(v58, v59);
    sub_215783830(&v129, &qword_27CA710A8);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_2157A8FF0();
    v96(v87, v121);
    __swift_destroy_boxed_opaque_existential_1(&v135);
  }

  else
  {
    sub_215783830(&v132, &qword_27CA71078);
  }

  v88 = MEMORY[0x277D22808];
  v89 = v95;
  v90 = v112;
  v95[3] = v112;
  v89[4] = v88;
  v89[5] = MEMORY[0x277D22810];
  v91 = __swift_allocate_boxed_opaque_existential_1(v89);
  return (*(v111 + 32))(v91, v77, v90);
}

uint64_t sub_21578A088@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v78 = sub_2157A9160();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v57 - v6;
  v79 = sub_2157A9190();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2157A9030();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2157A9040();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2157A9050();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2157A9070();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2157A9090();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v80 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2157A90B0();
  v82 = *(v15 - 8);
  *&v83 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2157A9130();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v59 = sub_2157A9150();
  v57 = *(v59 - 8);
  *&v24 = MEMORY[0x28223BE20](v59).n128_u64[0];
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [a1 traitCollection];
  v84 = v2;
  sub_215788DD4(v97);

  v86 = a1;
  v28 = [a1 traitCollection];
  LOBYTE(v27) = sub_2157A94B0();

  if (v27)
  {
    v83 = v98;
    v29 = v98;
    v30 = __swift_project_boxed_opaque_existential_1(v97, v98);
    v95 = v83;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v30, v29);
    v32 = v84;
    sub_21578326C(v84 + 344, v93);
    v33 = *(v32 + 16);
    v91 = MEMORY[0x277D85048];
    v92 = MEMORY[0x277D225F8];
    v90[0] = v33;
    sub_21578326C(v32 + 544, v88);
    sub_21578326C(v32 + 264, v87);
    v34 = *MEMORY[0x277D22898];
    v35 = *(v18 + 104);
    v35(v23, v34, v17);
    v35(v20, v34, v17);
    sub_2157A9140();
    sub_2157A9120();
    (*(v57 + 8))(v26, v59);
  }

  else
  {
    (*(v58 + 104))(v80, *MEMORY[0x277D22870], v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71148);
    sub_2157A9080();
    *(swift_allocObject() + 16) = xmmword_2157B2B70;
    v37 = v61;
    v36 = v62;
    v38 = v64;
    (*(v62 + 104))(v61, *MEMORY[0x277D22848], v64);
    v94[0] = MEMORY[0x277D84F90];
    sub_21578B39C(&qword_27CA71150, MEMORY[0x277D22838]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71158);
    sub_21578B3E4(&qword_27CA71160, &qword_27CA71158);
    v39 = v63;
    v40 = v66;
    sub_2157A9540();
    v41 = v84;
    sub_2157A9060();
    (*(v65 + 8))(v39, v40);
    (*(v36 + 8))(v37, v38);
    v42 = sub_2157A8CF0();
    v43 = MEMORY[0x277D226F0];
    *&v95 = v42;
    *(&v95 + 1) = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v94);
    sub_2157A8CE0();
    v44 = v81;
    sub_2157A90A0();
    v45 = v83;
    *&v95 = v83;
    *(&v95 + 1) = MEMORY[0x277D22878];
    v96 = MEMORY[0x277D22880];
    v46 = __swift_allocate_boxed_opaque_existential_1(v94);
    (*(v82 + 16))(v46, v44, v45);
    sub_21578B2C8(v97, v93);
    (*(v67 + 104))(v68, *MEMORY[0x277D22828], v69);
    sub_21578326C(v41 + 264, v90);
    v47 = v70;
    sub_2157A9020();
    v48 = v72;
    *&v95 = v72;
    *(&v95 + 1) = MEMORY[0x277D22830];
    v49 = __swift_allocate_boxed_opaque_existential_1(v94);
    v50 = v71;
    (*(v71 + 16))(v49, v47, v48);
    sub_21578326C(v41 + 344, v93);
    v51 = *(v41 + 16);
    v91 = MEMORY[0x277D85048];
    v92 = MEMORY[0x277D225F8];
    v90[0] = v51;
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    v87[3] = v42;
    v87[4] = v43;
    __swift_allocate_boxed_opaque_existential_1(v87);
    sub_2157A8CE0();
    v52 = *MEMORY[0x277D228C8];
    v53 = *(v75 + 104);
    v54 = v78;
    v53(v74, v52, v78);
    v53(v77, v52, v54);
    v55 = v73;
    sub_2157A9180();
    sub_2157A9170();
    (*(v76 + 8))(v55, v79);
    (*(v50 + 8))(v47, v48);
    (*(v82 + 8))(v81, v83);
  }

  return __swift_destroy_boxed_opaque_existential_1(v97);
}

double sub_21578ABA4(void *a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_21578AC78(a1, a2, a3);
}

uint64_t sub_21578AC00(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_21578B438();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double sub_21578AC78(void *a1, void *a2, double a3)
{
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 traitCollection];
  __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12 = *(v7 + 8);
  v12(v10, v6);
  if (sub_2157A9490())
  {
    __swift_project_boxed_opaque_existential_1(a1 + 18, a1[21]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
  }

  else
  {
    if (sub_2157A94B0())
    {
      __swift_project_boxed_opaque_existential_1(a1 + 18, a1[21]);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1 + 23, a1[26]);
    }

    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
    __swift_project_boxed_opaque_existential_1(a1 + 28, a1[31]);
    sub_21579F1CC();
    sub_2157A8BB0();
    v12(v10, v6);
  }

  __swift_project_boxed_opaque_existential_1(a1 + 33, a1[36]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 38, a1[41]);
  sub_21579F1CC();
  sub_2157A8BB0();
  v12(v10, v6);
  sub_2157A94B0();

  return a3;
}

uint64_t sub_21578B048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 584))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578B090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 584) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 584) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21578B180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578B1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21578B274()
{
  result = qword_27CA71140;
  if (!qword_27CA71140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71140);
  }

  return result;
}

uint64_t sub_21578B2C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21578B32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21578B39C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21578B3E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21578B438()
{
  result = qword_27CA71168;
  if (!qword_27CA71168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71168);
  }

  return result;
}

uint64_t sub_21578B4C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v101 = sub_2157A8CD0();
  v104 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v76 - v5;
  MEMORY[0x28223BE20](v6);
  v90 = &v76 - v7;
  MEMORY[0x28223BE20](v8);
  v99 = &v76 - v9;
  MEMORY[0x28223BE20](v10);
  v100 = &v76 - v11;
  v97 = sub_2157A9280();
  v103 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  v94 = &v76 - v16;
  MEMORY[0x28223BE20](v17);
  v93 = &v76 - v18;
  v19 = sub_2157A91F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v22;
  v23 = sub_2157A8DD0();
  v105 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v78 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  v85 = sub_2157A9200();
  MEMORY[0x28223BE20](v85);
  v84 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2157A92C0();
  v88 = *(v29 - 8);
  v89 = v29;
  MEMORY[0x28223BE20](v29);
  v102 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v27;
  sub_2157A8DB0();
  sub_21578C1BC(v1, v107);
  v31 = swift_allocObject();
  memcpy((v31 + 16), v107, 0x151uLL);
  v109 = v23;
  v110 = MEMORY[0x277D22778];
  v77 = v23;
  __swift_allocate_boxed_opaque_existential_1(v108);
  sub_2157A8DC0();

  v92 = *(v105 + 8);
  v105 += 8;
  v92(v27, v23);
  sub_2157A9220();
  v79 = sub_2157A9240();
  v112 = v79;
  v113 = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_2157A9250();
  (*(v20 + 104))(v22, *MEMORY[0x277D22950], v19);
  sub_2157A8DB0();
  sub_21578326C((v1 + 22), v107);
  v32 = *v1;
  v33 = MEMORY[0x277D85048];
  v34 = MEMORY[0x277D225F8];
  v35 = v93;
  *(v93 + 3) = MEMORY[0x277D85048];
  v35[4] = v34;
  *v35 = v32;
  v36 = *MEMORY[0x277D22980];
  v37 = *(v103 + 104);
  v103 += 104;
  v81 = v36;
  v38 = v97;
  (v37)(v35, v36, v97);
  v39 = v1[1];
  v40 = v94;
  *(v94 + 3) = v33;
  v40[4] = v34;
  *v40 = v39;
  v37();
  v82 = *MEMORY[0x277D22988];
  v41 = v82;
  (v37)(v95, v82, v38);
  (v37)(v96, v41, v38);
  v83 = sub_2157A9290();
  v109 = v83;
  v110 = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(v108);
  sub_2157A92A0();
  sub_21578C1BC(v1, v107);
  v42 = swift_allocObject();
  memcpy((v42 + 16), v107, 0x151uLL);
  v43 = v78;
  sub_2157A8DC0();

  v44 = v77;
  v92(v43, v77);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v45 = v99;
  sub_2157A8CB0();
  sub_21578C1BC(v2, v107);
  v46 = swift_allocObject();
  memcpy((v46 + 16), v107, 0x151uLL);
  v47 = v100;
  sub_2157A8CC0();

  v48 = v104 + 8;
  v49 = *(v104 + 8);
  v50 = v45;
  v51 = v101;
  v49(v50, v101);
  v78 = v49;
  v104 = v48;
  sub_21578C1BC(v2, v107);
  v52 = swift_allocObject();
  memcpy((v52 + 16), v107, 0x151uLL);
  v106[3] = v51;
  v106[4] = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v106);
  v76 = v2;
  sub_2157A8CC0();

  v49(v47, v51);
  v109 = v44;
  v110 = MEMORY[0x277D22778];
  __swift_allocate_boxed_opaque_existential_1(v108);
  v53 = v98;
  sub_2157A8DC0();
  v92(v53, v44);
  __swift_destroy_boxed_opaque_existential_1(v106);
  sub_2157A9230();
  v107[3] = v79;
  v107[4] = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v107);
  sub_2157A9250();
  v54 = v84;
  sub_2157A9210();
  v55 = sub_21578C4BC(&qword_280D2AF58, MEMORY[0x277D22968]);
  MEMORY[0x216070110](v54, v85, v55);
  v56 = v86;
  sub_2157A8CB0();
  sub_21578326C(v2 + 176, v107);
  v57 = MEMORY[0x277D85048];
  v58 = v93;
  *(v93 + 3) = MEMORY[0x277D85048];
  v59 = MEMORY[0x277D225F8];
  v58[4] = MEMORY[0x277D225F8];
  *v58 = v32;
  v60 = v97;
  (v37)(v58, v81, v97);
  v61 = v94;
  *(v94 + 3) = v57;
  v61[4] = v59;
  *v61 = v39;
  v37();
  v62 = v82;
  (v37)(v95, v82, v60);
  (v37)(v96, v62, v60);
  v112 = v83;
  v113 = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_2157A92A0();
  v63 = v76;
  sub_21578C1BC(v76, v107);
  v64 = swift_allocObject();
  memcpy((v64 + 16), v107, 0x151uLL);
  v65 = v87;
  sub_2157A8CC0();

  v66 = v101;
  v67 = v78;
  (v78)(v56, v101);
  __swift_destroy_boxed_opaque_existential_1(v111);
  sub_21578C1BC(v63, v107);
  v68 = swift_allocObject();
  memcpy((v68 + 16), v107, 0x151uLL);
  v69 = v90;
  sub_2157A8CC0();

  v67(v65, v66);
  sub_21578C1BC(v63, v107);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v107, 0x151uLL);
  v71 = v99;
  sub_2157A8CC0();

  v67(v69, v66);
  sub_21578C1BC(v63, v107);
  v72 = swift_allocObject();
  memcpy((v72 + 16), v107, 0x151uLL);
  v73 = v100;
  sub_2157A8CC0();

  v67(v71, v66);
  sub_21578C4BC(&qword_280D2AF68, MEMORY[0x277D226E8]);
  v74 = v102;
  sub_2157A92B0();
  v67(v73, v66);
  return (*(v88 + 8))(v74, v89);
}

uint64_t sub_21578C178(uint64_t a1, uint64_t a2)
{
  sub_21578326C(a2 + 136, v3);
  sub_2157A8D80();
  return sub_2157A8DA0();
}

uint64_t sub_21578C224(uint64_t a1, uint64_t a2)
{
  sub_2157A8DA0();
  sub_21578326C(a2 + 16, v4);
  return sub_2157A8D90();
}

uint64_t sub_21578C274()
{
  if (qword_280D2B1D0 != -1)
  {
    swift_once();
  }

  return sub_2157A8C80();
}

uint64_t sub_21578C2D4(uint64_t a1, uint64_t a2)
{
  sub_21578326C(a2 + 96, v3);
  sub_2157A8C60();
  return sub_2157A8C50();
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return MEMORY[0x2821FE8E8](v0, 353, 7);
}

uint64_t sub_21578C4BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21578C504()
{
  result = sub_2157A8C90();
  qword_280D2B1D8 = result;
  return result;
}

uint64_t sub_21578C530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 337))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578C578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 337) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 337) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_21578C658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578C6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21578C728()
{
  v0 = sub_2157A92C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21578B4C4(v3);
  sub_2157A9370();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21578C84C()
{
  v0 = sub_2157A92C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21578B4C4(v3);
  sub_2157A9360();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21578C960(uint64_t a1, uint64_t a2)
{
  v4 = sub_21578CAB8();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_21578C9B8()
{
  result = qword_280D2B1C8;
  if (!qword_280D2B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B1C8);
  }

  return result;
}

unint64_t sub_21578CA10()
{
  result = qword_27CA71170;
  if (!qword_27CA71170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71170);
  }

  return result;
}

unint64_t sub_21578CAB8()
{
  result = qword_27CA71178;
  if (!qword_27CA71178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71178);
  }

  return result;
}

uint64_t sub_21578CB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578CB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21578CC04@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = sub_2157A8C40();
  v3 = *(v2 - 8);
  v110 = v2;
  v111 = v3;
  MEMORY[0x28223BE20](v2);
  v109 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2157A8CD0();
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v107 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = v98 - v7;
  MEMORY[0x28223BE20](v8);
  v120 = v98 - v9;
  MEMORY[0x28223BE20](v10);
  v126 = v98 - v11;
  v12 = sub_2157A8DD0();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x28223BE20](v12);
  v103 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = v98 - v15;
  MEMORY[0x28223BE20](v16);
  v106 = v98 - v17;
  v18 = sub_2157A9280();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v118 = (v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v113 = (v98 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = (v98 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (v98 - v27);
  v119 = sub_2157A9290();
  v102 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v114 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2157A92C0();
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v115 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v124 = v98 - v32;
  MEMORY[0x28223BE20](v33);
  v121 = v98 - v34;
  sub_21578326C((v1 + 10), v129);
  v35 = *v1;
  v36 = MEMORY[0x277D85048];
  v37 = MEMORY[0x277D225F8];
  *(v28 + 3) = MEMORY[0x277D85048];
  *(v28 + 4) = v37;
  v38 = v37;
  *v28 = v35;
  v39 = *MEMORY[0x277D22980];
  v40 = *(v19 + 104);
  v98[1] = v19 + 104;
  v100 = v39;
  v40(v28, v39, v18);
  v41 = v1[1];
  *(v25 + 3) = v36;
  *(v25 + 4) = v38;
  *v25 = v41;
  v40(v25, v39, v18);
  v42 = *MEMORY[0x277D22988];
  v40(v113, v42, v18);
  v40(v118, v42, v18);
  v43 = v114;
  sub_2157A92A0();
  v99 = sub_21578E074(&qword_27CA71190, MEMORY[0x277D229A0]);
  MEMORY[0x216070110](v43, v119, v99);
  sub_21578326C((v1 + 10), v129);
  v44 = v1[2];
  v101 = v1;
  *(v28 + 3) = MEMORY[0x277D85048];
  v45 = MEMORY[0x277D225F8];
  *(v28 + 4) = MEMORY[0x277D225F8];
  *v28 = v44;
  v46 = v100;
  v40(v28, v100, v18);
  v47 = v1[3];
  *(v25 + 3) = MEMORY[0x277D85048];
  *(v25 + 4) = v45;
  *v25 = v47;
  v40(v25, v46, v18);
  v40(v113, v42, v18);
  v40(v118, v42, v18);
  v48 = v114;
  sub_2157A92A0();
  v49 = v121;
  v50 = v119;
  v51 = v124;
  sub_2157A92B0();
  (*(v102 + 8))(v48, v50);
  v52 = v125;
  v53 = *(v125 + 8);
  v118 = (v125 + 8);
  v119 = v53;
  v54 = v51;
  v55 = v123;
  (v53)(v54, v123);
  v56 = v103;
  sub_2157A8DB0();
  v131 = v55;
  v132 = MEMORY[0x277D229B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  v58 = *(v52 + 16);
  v125 = v52 + 16;
  v114 = v58;
  (v58)(boxed_opaque_existential_1, v49, v55);
  v59 = v101;
  sub_21578DF4C(v101, v129);
  v60 = swift_allocObject();
  memcpy((v60 + 16), v129, 0x140uLL);
  sub_2157A8DC0();

  v61 = v105;
  v104 = *(v104 + 8);
  (v104)(v56, v105);
  __swift_destroy_boxed_opaque_existential_1(v130);
  v62 = v120;
  sub_2157A8CB0();
  sub_21578DF4C(v59, v129);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v129, 0x140uLL);
  v64 = v126;
  sub_2157A8CC0();

  v65 = v122 + 8;
  v66 = *(v122 + 8);
  v67 = v62;
  v68 = v117;
  v66(v67, v117);
  v129[3] = v68;
  v129[4] = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v129);
  sub_2157A8CC0();
  v66(v64, v68);
  v69 = v65;
  v70 = v106;
  v71 = v116;
  sub_2157A8DC0();
  (v104)(v71, v61);
  __swift_destroy_boxed_opaque_existential_1(v129);
  v72 = sub_21578E074(&qword_27CA71198, MEMORY[0x277D22780]);
  MEMORY[0x216070110](v70, v61, v72);
  v73 = v107;
  sub_2157A8CB0();
  v74 = v123;
  v129[3] = v123;
  v129[4] = MEMORY[0x277D229B0];
  v75 = __swift_allocate_boxed_opaque_existential_1(v129);
  (v114)(v75, v121, v74);
  v76 = v108;
  sub_2157A8CC0();
  v66(v73, v68);
  __swift_destroy_boxed_opaque_existential_1(v129);
  sub_21578DF4C(v59, v129);
  v77 = swift_allocObject();
  memcpy((v77 + 16), v129, 0x140uLL);
  v78 = v120;
  sub_2157A8CC0();

  v66(v76, v68);
  v79 = v126;
  sub_2157A8CC0();
  v66(v78, v68);
  v80 = v66;
  sub_21578E074(&qword_280D2AF68, MEMORY[0x277D226E8]);
  v81 = v124;
  v82 = v115;
  sub_2157A92B0();
  v80(v79, v68);
  v83 = v82;
  v84 = v123;
  (v119)(v83, v123);
  sub_2157A8CB0();
  v129[3] = v84;
  v129[4] = MEMORY[0x277D229B0];
  v85 = __swift_allocate_boxed_opaque_existential_1(v129);
  (v114)(v85, v81, v84);
  sub_2157A8CC0();
  v80(v73, v68);
  __swift_destroy_boxed_opaque_existential_1(v129);
  sub_21578DF4C(v59, v129);
  v86 = swift_allocObject();
  memcpy((v86 + 16), v129, 0x140uLL);
  v87 = v120;
  sub_2157A8CC0();

  v80(v76, v68);
  v122 = v69;
  v113 = v80;
  v88 = v109;
  sub_2157A8C20();
  v89 = v110;
  v131 = v110;
  v132 = MEMORY[0x277D226D0];
  __swift_allocate_boxed_opaque_existential_1(v130);
  sub_2157A8C30();
  (*(v111 + 8))(v88, v89);
  sub_21578DF4C(v59, v129);
  v90 = swift_allocObject();
  memcpy((v90 + 16), v129, 0x140uLL);
  sub_2157A8CC0();

  v80(v87, v68);
  __swift_destroy_boxed_opaque_existential_1(v130);
  sub_21578326C(v59 + 280, v129);
  MEMORY[0x21606FD50](0, 1, 0, 1);
  MEMORY[0x21606FD50](0, 1, 0, 1);
  LOBYTE(v76) = v91;
  LOBYTE(v81) = v92;
  v131 = sub_2157A9340();
  v132 = MEMORY[0x277D229F8];
  __swift_allocate_boxed_opaque_existential_1(v130);
  v128 = v76 & 1;
  v127 = v81 & 1;
  sub_2157A9350();
  sub_21578DF4C(v59, v129);
  v93 = swift_allocObject();
  memcpy((v93 + 16), v129, 0x140uLL);
  v94 = v126;
  sub_2157A8CC0();

  v113(v94, v117);
  v95 = v123;
  v96 = v119;
  (v119)(v124, v123);
  v96(v121, v95);
  return __swift_destroy_boxed_opaque_existential_1(v130);
}

uint64_t sub_21578DA94()
{
  v0 = sub_2157A8C10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A8CF0();
  v5 = MEMORY[0x277D226F0];
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_2157A8CE0();
  v6 = *MEMORY[0x277D226C8];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  sub_2157A8BF0();
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_2157A8CE0();
  v7(v3, v6, v0);
  return sub_2157A8C00();
}

__n128 sub_21578DBD8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double sub_21578DBF4()
{
  v0 = sub_2157A8CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21578CC04(v3);
  sub_2157A9370();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21578DD18()
{
  v0 = sub_2157A8CD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21578CC04(v3);
  sub_2157A9360();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21578DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21578E20C();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_21578DE84()
{
  result = qword_27CA71180;
  if (!qword_27CA71180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71180);
  }

  return result;
}

unint64_t sub_21578DEDC()
{
  result = qword_27CA71188;
  if (!qword_27CA71188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71188);
  }

  return result;
}

uint64_t sub_21578E074(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  return MEMORY[0x2821FE8E8](v0, 336, 7);
}

unint64_t sub_21578E20C()
{
  result = qword_27CA711A0;
  if (!qword_27CA711A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711A0);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21578E27C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21578E29C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

uint64_t sub_21578E2EC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  sub_2157A8A90();

  return sub_2157A89E0();
}

double sub_21578E3FC(uint64_t a1, void *a2, double a3)
{
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 traitCollection];
  v12 = sub_2157A94B0();

  v13 = 24;
  if (v12)
  {
    v13 = 64;
  }

  v14 = 40;
  if ((v12 & 1) == 0)
  {
    v14 = 0;
  }

  __swift_project_boxed_opaque_existential_1((a1 + v14), *(a1 + v13));
  sub_21579F1CC();
  sub_2157A8BB0();
  (*(v7 + 8))(v10, v6);
  return a3;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21578E5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578E5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21578E658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21578E6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21578E708()
{
  result = qword_27CA711A8;
  if (!qword_27CA711A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711A8);
  }

  return result;
}

void sub_21578E7DC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_215791AB0(319, &qword_280D2B5D8);
    if (v1 <= 0x3F)
    {
      sub_2157A9160();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_21578E8AC(void *a1)
{
  v2 = v1;
  v38 = a1;
  v35 = sub_2157A8E50();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2157A8E80();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallLockupLayout(0);
  v10 = v9[6];
  sub_215783024(v1 + v10, v42, &qword_27CA71078);
  if (!v43)
  {
LABEL_5:
    sub_215783830(v42, &qword_27CA71078);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v42, v43);
  v11 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if ((v11 & 1) == 0)
  {
    sub_215783024(v1 + v10, v42, &qword_27CA71078);
    if (v43)
    {
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v39 = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v39 = 0;
LABEL_7:
  v12 = v9[9];
  sub_215783024(v1 + v12, v42, &qword_27CA71078);
  if (!v43)
  {
LABEL_11:
    sub_215783830(v42, &qword_27CA71078);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(v42, v43);
  v13 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if ((v13 & 1) == 0)
  {
    sub_215783024(v1 + v12, v42, &qword_27CA71078);
    if (v43)
    {
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v40 = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  v40 = 0;
LABEL_13:
  v14 = (v1 + v9[8]);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  if (sub_2157A8AA0())
  {
    v15 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v15 = sub_2157A8A60();
  }

  v16 = v9[10];
  sub_215783024(v1 + v16, v42, &qword_27CA71080);
  v17 = v43;
  sub_215783830(v42, &qword_27CA71080);
  if (v17)
  {
    sub_215783024(v1 + v16, v42, &qword_27CA71080);
    if (v43)
    {
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v18 = sub_2157A8AA0();
      __swift_destroy_boxed_opaque_existential_1(v42);
      v19 = v18 ^ 1;
      goto LABEL_21;
    }

    sub_215783830(v42, &qword_27CA71080);
  }

  v19 = 0;
LABEL_21:
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v35);
  sub_2157A8E60();
  v20 = MEMORY[0x277D228E0];
  if (v39)
  {
    sub_21578326C(v1 + 56, v41);
    v21 = sub_2157A91A0();
    v43 = v21;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v1 + 216, v41);
    v43 = v21;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    v22 = v38;
    v23 = &selRef_setNumberOfViews_;
    if (v15)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v22 = v38;
    if (v40)
    {
      v24 = v1 + 176;
    }

    else
    {
      v24 = v1 + 96;
    }

    sub_21578326C(v24, v41);
    v43 = sub_2157A91A0();
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    v23 = &selRef_setNumberOfViews_;
    if (v15)
    {
      goto LABEL_34;
    }
  }

  v25 = [v22 v23[243]];
  v26 = sub_2157A94B0();

  if ((v26 & 1) == 0)
  {
    if (v19)
    {
      goto LABEL_35;
    }

LABEL_30:
    if ((v40 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_34:
  sub_21578326C(v2 + 296, v41);
  v43 = sub_2157A91A0();
  v44 = v20;
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_35:
  sub_21578326C(v2 + 376, v41);
  v43 = sub_2157A91A0();
  v44 = v20;
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v40)
  {
LABEL_31:
    sub_21578326C(v2 + 336, v41);
    v43 = sub_2157A91A0();
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

LABEL_32:
  v27 = [v22 v23[243]];
  v28 = sub_2157A94B0();

  if (v28)
  {
    v29 = *(v2 + 8);
    v41[3] = MEMORY[0x277D85048];
    v41[4] = MEMORY[0x277D225F8];
    v41[0] = v29;
    v30 = sub_2157A91A0();
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E30();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v2 + 16, v41);
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E30();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v2 + 456, v41);
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v2 + 496, v41);
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v2 + 416, v41);
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_21578326C(v2 + 536, v41);
    v43 = v30;
    v44 = v20;
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_2157A8E40();
    v32 = v31;
    (*(v36 + 8))(v8, v37);
  }

  else
  {
    if (((v39 | v40) & 1) == 0)
    {
      sub_21578326C(v2 + 416, v41);
      v43 = sub_2157A91A0();
      v44 = v20;
      __swift_allocate_boxed_opaque_existential_1(v42);
      sub_2157A91B0();
      sub_2157A8E70();
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    sub_2157A8E40();
    v32 = v33;
    __swift_project_boxed_opaque_existential_1((v2 + v9[11]), *(v2 + v9[11] + 24));
    sub_2157A8AC0();
    (*(v36 + 8))(v8, v37);
  }

  return v32;
}