@interface BCLogger
+ (void)logEventWithName:(id)name businessURI:(id)i callToActionText:(id)text bizItemReturnedAfterAction:(BOOL)action latency:(int64_t)latency;
+ (void)logEventWithName:(id)name version:(int64_t)version authDomain:(id)domain status:(id)status;
- (void)mt_log_icloud_messages_apps_businessframework:(id)mt_log_icloud_messages_apps_businessframework version:(int64_t)version;
@end

@implementation BCLogger

- (void)mt_log_icloud_messages_apps_businessframework:(id)mt_log_icloud_messages_apps_businessframework version:(int64_t)version
{
  mt_log_icloud_messages_apps_businessframeworkCopy = mt_log_icloud_messages_apps_businessframework;
  v4 = mt_log_icloud_messages_apps_businessframeworkCopy;
  AnalyticsSendEventLazy();
}

id __66__BCLogger_mt_log_icloud_messages_apps_businessframework_version___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"messageType";
  v7[1] = @"payloadVersion";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)logEventWithName:(id)name businessURI:(id)i callToActionText:(id)text bizItemReturnedAfterAction:(BOOL)action latency:(int64_t)latency
{
  nameCopy = name;
  iCopy = i;
  textCopy = text;
  if ([nameCopy length] && objc_msgSend(iCopy, "length"))
  {
    v12 = iCopy;
    v13 = textCopy;
    AnalyticsSendEventLazy();
  }
}

id __93__BCLogger_logEventWithName_businessURI_callToActionText_bizItemReturnedAfterAction_latency___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"bizIdCallToAction";
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", *(a1 + 32), *(a1 + 40)];
  v9[0] = v2;
  v8[1] = @"chatSuggestLatencyInMiliSeconds";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v9[1] = v3;
  v8[2] = @"bizItemReturnedAfterAction";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)logEventWithName:(id)name version:(int64_t)version authDomain:(id)domain status:(id)status
{
  domainCopy = domain;
  statusCopy = status;
  v8 = domainCopy;
  v9 = statusCopy;
  AnalyticsSendEventLazy();
}

id __55__BCLogger_logEventWithName_version_authDomain_status___block_invoke(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = a1[4];
  v7[0] = @"authStatus";
  v7[1] = @"payloadVersion";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v7[2] = @"authProvider";
  v3 = a1[5];
  v8[1] = v2;
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end