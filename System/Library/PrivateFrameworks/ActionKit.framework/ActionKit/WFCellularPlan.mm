@interface WFCellularPlan
- (BOOL)dataRoamingEnabled;
- (BOOL)isActive;
- (BOOL)isDataOnlyLine;
- (BOOL)isDefaultDataLine;
- (BOOL)isDefaultVoiceLine;
- (BOOL)smartDataModeEnabled;
- (CTCellularPlanItem)planItem;
- (NSArray)availableRATModes;
- (NSString)carrierName;
- (NSString)currentRATModeLabel;
- (WFCellularPlan)initWithCTXPCServiceSubscriptionContext:(id)context client:(id)client planItem:(id)item;
- (id)labelForRATMode:(int64_t)mode;
- (id)serviceDescriptor;
- (int64_t)currentRATMode;
- (void)setCurrentRATMode:(int64_t)mode;
@end

@implementation WFCellularPlan

- (CTCellularPlanItem)planItem
{
  WeakRetained = objc_loadWeakRetained(&self->_planItem);

  return WeakRetained;
}

- (id)serviceDescriptor
{
  CTServiceDescriptorClass_20872 = getCTServiceDescriptorClass_20872();
  ctContext = self->_ctContext;

  return [CTServiceDescriptorClass_20872 descriptorWithSubscriptionContext:ctContext];
}

- (id)labelForRATMode:(int64_t)mode
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFCellularPlan_labelForRATMode___block_invoke;
  block[3] = &unk_278C224A0;
  block[4] = self;
  if (labelForRATMode__onceToken != -1)
  {
    dispatch_once(&labelForRATMode__onceToken, block);
  }

  if (mode <= 2)
  {
    if (mode == 1)
    {
      v4 = @"2G";
      goto LABEL_17;
    }

    if (mode != 2)
    {
      goto LABEL_21;
    }

    if (labelForRATMode__use4GOver3G != 1)
    {
      v4 = @"3G";
      goto LABEL_17;
    }

LABEL_15:
    v4 = @"4G";
    goto LABEL_17;
  }

  switch(mode)
  {
    case 3:
      if (labelForRATMode__useLTEOver4G == 1)
      {
        v4 = @"LTE";
        goto LABEL_17;
      }

      goto LABEL_15;
    case 4:
      v4 = @"5G Auto";
      goto LABEL_17;
    case 5:
      v4 = @"5G";
LABEL_17:
      v5 = WFLocalizedString(v4);
      goto LABEL_18;
  }

LABEL_21:
  v5 = WFLocalizedStringWithKey(@"Unknown (Cellular data mode)", @"Unknown");
LABEL_18:

  return v5;
}

void __34__WFCellularPlan_labelForRATMode___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) client];
  v3 = *(*(a1 + 32) + 40);
  v18 = 0;
  v4 = [v2 context:v3 getCarrierBundleValue:&unk_28509CD70 error:&v18];
  v5 = v18;

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v5)
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFCellularPlan labelForRATMode:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get DataIndicatorOverride value: %@", buf, 0x16u);
    }
  }

  labelForRATMode__use4GOver3G = [v7 isEqualToString:@"4G"];
  v9 = [*(a1 + 32) client];
  v10 = *(*(a1 + 32) + 40);
  v17 = 0;
  v11 = [v9 context:v10 getCarrierBundleValue:&unk_28509CD88 error:&v17];
  v12 = v17;

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v12)
  {
    v15 = getWFActionsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFCellularPlan labelForRATMode:]_block_invoke";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_23DE30000, v15, OS_LOG_TYPE_ERROR, "%s Failed to get DataIndicatorOverrideForLTE value: %@", buf, 0x16u);
    }
  }

  labelForRATMode__useLTEOver4G = [v14 isEqualToString:@"LTE"];

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)currentRATModeLabel
{
  currentRATMode = [(WFCellularPlan *)self currentRATMode];

  return [(WFCellularPlan *)self labelForRATMode:currentRATMode];
}

- (BOOL)dataRoamingEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  client = [(WFCellularPlan *)self client];
  serviceDescriptor = [(WFCellularPlan *)self serviceDescriptor];
  v10 = 0;
  v5 = [client getInternationalDataAccessSync:serviceDescriptor error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFCellularPlan dataRoamingEnabled]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get data roaming status: %@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isDataOnlyLine
{
  ctContext = [(WFCellularPlan *)self ctContext];
  isSimDataOnly = [ctContext isSimDataOnly];

  return isSimDataOnly;
}

- (BOOL)isDefaultDataLine
{
  WeakRetained = objc_loadWeakRetained(&self->_planItem);
  isActiveDataPlan = [WeakRetained isActiveDataPlan];

  return isActiveDataPlan;
}

- (BOOL)isDefaultVoiceLine
{
  WeakRetained = objc_loadWeakRetained(&self->_planItem);
  isDefaultVoice = [WeakRetained isDefaultVoice];

  return isDefaultVoice;
}

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->_planItem);
  isSelected = [WeakRetained isSelected];

  return isSelected;
}

- (NSString)carrierName
{
  WeakRetained = objc_loadWeakRetained(&self->_planItem);
  carrierName = [WeakRetained carrierName];

  return carrierName;
}

- (BOOL)smartDataModeEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  client = [(WFCellularPlan *)self client];
  v4 = [client isSmartDataModeSupported:0];

  if (v4)
  {
    v5 = [getCTServiceDescriptorClass_20872() descriptorWithSubscriptionContext:self->_ctContext];
    client2 = [(WFCellularPlan *)self client];
    v12 = 0;
    v7 = [client2 smartDataMode:v5 error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = getWFActionsLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[WFCellularPlan smartDataModeEnabled]";
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s Failed to get smartDataMode status with error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setCurrentRATMode:(int64_t)mode
{
  v5 = +[WFCellularPlansManager dataRateToRadioAccessTechnologyModeMapping];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__WFCellularPlan_setCurrentRATMode___block_invoke;
  v6[3] = &unk_278C1C2D0;
  v6[4] = self;
  v6[5] = mode;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void __36__WFCellularPlan_setCurrentRATMode___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 40);
  v10 = a3;
  v11 = [v8 numberWithInteger:v9];
  LODWORD(v9) = [v10 containsObject:v11];

  if (v9)
  {
    v12 = [*(a1 + 32) client];
    v13 = [v12 setMaxDataRate:*(*(a1 + 32) + 40) rate:{objc_msgSend(v7, "integerValue")}];

    if (v13)
    {
      v14 = getWFActionsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[WFCellularPlan setCurrentRATMode:]_block_invoke";
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_23DE30000, v14, OS_LOG_TYPE_ERROR, "%s Failed to set RAT with error %@", &v16, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) setSmartDataModeEnabled:*(a1 + 40) == 4];
    }

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)currentRATMode
{
  v19 = *MEMORY[0x277D85DE8];
  client = [(WFCellularPlan *)self client];
  ctContext = self->_ctContext;
  v14 = 0;
  v5 = [client getMaxDataRate:ctContext error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFCellularPlan currentRATMode]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Failed to getMaxDataRate with error %@", buf, 0x16u);
    }

    integerValue = 0;
  }

  else
  {
    v9 = +[WFCellularPlansManager dataRateToRadioAccessTechnologyModeMapping];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v7 = [v9 objectForKey:v10];

    if ([v7 count]< 2)
    {
      firstObject = [v7 firstObject];
      integerValue = [firstObject integerValue];
    }

    else if ([(WFCellularPlan *)self smartDataModeEnabled])
    {
      integerValue = 4;
    }

    else
    {
      integerValue = 5;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (NSArray)availableRATModes
{
  v16 = *MEMORY[0x277D85DE8];
  client = [(WFCellularPlan *)self client];
  ctContext = self->_ctContext;
  v11 = 0;
  v5 = [client getSupportedDataRates:ctContext error:&v11];
  v6 = v11;

  if (v6)
  {
    rates = getWFActionsLogObject();
    if (os_log_type_enabled(rates, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFCellularPlan availableRATModes]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_23DE30000, rates, OS_LOG_TYPE_ERROR, "%s Failed to enumerate supported data rates with error %@", buf, 0x16u);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    rates = [v5 rates];
    v8 = [rates if_flatMap:&__block_literal_global_21002];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __35__WFCellularPlan_availableRATModes__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return [WFCellularPlansManager modesFromDataRate:v2];
}

- (WFCellularPlan)initWithCTXPCServiceSubscriptionContext:(id)context client:(id)client planItem:(id)item
{
  contextCopy = context;
  clientCopy = client;
  itemCopy = item;
  v27.receiver = self;
  v27.super_class = WFCellularPlan;
  v12 = [(WFCellularPlan *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ctContext, context);
    objc_storeStrong(&v13->_client, client);
    objc_storeWeak(&v13->_planItem, itemCopy);
    uuid = [contextCopy uuid];
    subscriptionContextUUID = v13->_subscriptionContextUUID;
    v13->_subscriptionContextUUID = uuid;

    phoneNumber = [contextCopy phoneNumber];
    phoneNumber = v13->_phoneNumber;
    v13->_phoneNumber = phoneNumber;

    WeakRetained = objc_loadWeakRetained(&v13->_planItem);
    userLabel = [WeakRetained userLabel];
    label = [userLabel label];
    label = v13->_label;
    v13->_label = label;

    v22 = objc_loadWeakRetained(&v13->_planItem);
    iccid = [v22 iccid];
    iccid = v13->_iccid;
    v13->_iccid = iccid;

    v25 = v13;
  }

  return v13;
}

@end