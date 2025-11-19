@interface WFCellularPlansManager
+ (id)dataRateToRadioAccessTechnologyModeMapping;
+ (id)modesFromDataRate:(int64_t)a3;
- (BOOL)resetCellularDataStatisticsWithError:(id *)a3;
- (BOOL)setDefaultDataLineToPlan:(id)a3 error:(id *)a4;
- (BOOL)setDefaultVoiceLineToPlan:(id)a3 error:(id *)a4;
- (NSArray)allPlans;
- (WFCellularPlansManager)init;
- (id)contexts;
@end

@implementation WFCellularPlansManager

- (id)contexts
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(WFCellularPlansManager *)self client];
  v9 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFCellularPlansManager contexts]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get CTXPCServiceSubscriptionInfo with error: %@", buf, 0x16u);
    }
  }

  v6 = [v3 subscriptions];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __54__WFCellularPlansManager_setPlanStatus_forPlan_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 iccid];
  v4 = [*(a1 + 32) iccid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)resetCellularDataStatisticsWithError:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v14 = 0u;
  v15 = 0;
  v13[1] = self;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  v19 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  if (!get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v21 = __get_CTServerConnectionCreateWithIdentifierSymbolLoc_block_invoke;
    v22 = &unk_278C222B8;
    v23 = &v16;
    v5 = CoreTelephonyLibrary_20875();
    v6 = dlsym(v5, "_CTServerConnectionCreateWithIdentifier");
    *(v23[1] + 24) = v6;
    get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr = *(v23[1] + 24);
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTServerConnectionRef WFCTServerConnectionCreateWithIdentifier(CFAllocatorRef, CFStringRef, CTServerConnectionCallback, _CTServerConnectionContext *)"}];
    [v11 handleFailureInFunction:v12 file:@"WFCellularManager.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v7 = (v4)(*MEMORY[0x277CBECE8], @"com.apple.shortcuts", WFCoreTelephonyConnectionCallbackStub, v13);
  if (v7)
  {
    _CTServerConnectionEraseCellularDataUsageRecords();
    CFRelease(v7);
  }

  else
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFCellularPlansManager resetCellularDataStatisticsWithError:]";
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get CTServerConnection", &buf, 0xCu);
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:16 userInfo:0];
    }
  }

  result = v7 != 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setDefaultDataLineToPlan:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 label];
    v13 = 136315394;
    v14 = "[WFCellularPlansManager setDefaultDataLineToPlan:error:]";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_DEBUG, "%s Setting default data line to plan with label %@", &v13, 0x16u);
  }

  v9 = [(WFCellularPlansManager *)self client];
  v10 = [v6 ctContext];
  [v9 setActiveUserDataSelection:v10 error:a4];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setDefaultVoiceLineToPlan:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 isDataOnlyLine];
  v8 = getWFActionsLogObject();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v6 label];
      v17 = 136315394;
      v18 = "[WFCellularPlansManager setDefaultVoiceLineToPlan:error:]";
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_DEBUG, "%s Setting default voice line to plan with label %@", &v17, 0x16u);
    }

    v12 = [(WFCellularPlansManager *)self client];
    v13 = [v6 ctContext];
    [v12 setDefaultVoice:v13 error:a4];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315138;
    v18 = "[WFCellularPlansManager setDefaultVoiceLineToPlan:error:]";
    _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s Cannot use data-only line as voice line, bailing out", &v17, 0xCu);
  }

  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D7CB30];
    v21 = *MEMORY[0x277CCA450];
    v12 = WFLocalizedString(@"Cannot set a data-only cellular plan as the Default Voice Line.");
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *a4 = [v10 errorWithDomain:v11 code:5 userInfo:v13];
LABEL_9:
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7 ^ 1;
}

- (NSArray)allPlans
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [getCTCellularPlanManagerClass() sharedManager];
  v4 = [v3 planItemsShouldUpdate:1];
  v5 = [(WFCellularPlansManager *)self client];
  v17 = 0;
  v6 = [v5 getSubscriptionInfoWithError:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFCellularPlansManager allPlans]";
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get CTXPCServiceSubscriptionInfo with error: %@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = [v6 subscriptions];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__WFCellularPlansManager_allPlans__block_invoke;
    v13[3] = &unk_278C1C320;
    v14 = v3;
    v15 = v10;
    v16 = self;
    v8 = v10;
    v9 = [v4 if_compactMap:v13];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

WFCellularPlan *__34__WFCellularPlansManager_allPlans__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [*(a1 + 32) getSubscriptionContextUUIDforPlan:v3];
  v6 = [v4 initWithUUIDString:v5];

  v7 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__WFCellularPlansManager_allPlans__block_invoke_2;
  v18[3] = &unk_278C1C2F8;
  v8 = v6;
  v19 = v8;
  v9 = [v7 if_firstObjectPassingTest:v18];
  if (!v9)
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 UUIDString];
      *buf = 136315394;
      v21 = "[WFCellularPlansManager allPlans]_block_invoke";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_DEFAULT, "%s CTXPCServiceSubscriptionContext couldn't be created (%@), still creating cellular plan but some functionality may not be available.", buf, 0x16u);
    }
  }

  if ([v9 isSimHidden])
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 UUIDString];
      *buf = 136315394;
      v21 = "[WFCellularPlansManager allPlans]_block_invoke";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_INFO, "%s Won't create a WFCellularPlan for contextUUID %@ because that SIM is hidden", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v15 = [WFCellularPlan alloc];
    v12 = [*(a1 + 48) client];
    v14 = [(WFCellularPlan *)v15 initWithCTXPCServiceSubscriptionContext:v9 client:v12 planItem:v3];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __34__WFCellularPlansManager_allPlans__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (WFCellularPlansManager)init
{
  v13.receiver = self;
  v13.super_class = WFCellularPlansManager;
  v2 = [(WFCellularPlansManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.shortcuts.WFCellularPlansManager", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v7 = getCoreTelephonyClientClass_softClass_20990;
    v18 = getCoreTelephonyClientClass_softClass_20990;
    if (!getCoreTelephonyClientClass_softClass_20990)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getCoreTelephonyClientClass_block_invoke_20991;
      v14[3] = &unk_278C222B8;
      v14[4] = &v15;
      __getCoreTelephonyClientClass_block_invoke_20991(v14);
      v7 = v16[3];
    }

    v8 = v7;
    _Block_object_dispose(&v15, 8);
    v9 = [[v7 alloc] initWithQueue:v2->_queue];
    client = v2->_client;
    v2->_client = v9;

    v11 = v2;
  }

  return v2;
}

+ (id)dataRateToRadioAccessTechnologyModeMapping
{
  v6[9] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28509BA38;
  v5[1] = &unk_28509BA50;
  v6[0] = &unk_28509CDA0;
  v6[1] = &unk_28509CDB8;
  v5[2] = &unk_28509BA68;
  v5[3] = &unk_28509BA80;
  v6[2] = &unk_28509CDD0;
  v6[3] = &unk_28509CDE8;
  v5[4] = &unk_28509BA98;
  v5[5] = &unk_28509BAB0;
  v6[4] = &unk_28509CE00;
  v6[5] = &unk_28509CE18;
  v5[6] = &unk_28509BAC8;
  v5[7] = &unk_28509BAE0;
  v6[6] = &unk_28509CE30;
  v6[7] = &unk_28509CE48;
  v5[8] = &unk_28509BB10;
  v6[8] = &unk_28509CE60;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:9];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)modesFromDataRate:(int64_t)a3
{
  v4 = [a1 dataRateToRadioAccessTechnologyModeMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

@end