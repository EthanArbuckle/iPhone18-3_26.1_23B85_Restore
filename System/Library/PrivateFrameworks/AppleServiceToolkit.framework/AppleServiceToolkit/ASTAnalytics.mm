@interface ASTAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error;
+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict;
@end

@implementation ASTAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (error)
  {
    errorCopy = error;
    domain = [errorCopy domain];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    localizedDescription = [errorCopy localizedDescription];
  }

  else
  {
    v7 = &unk_2852D5F40;
    localizedDescription = &stru_2852CD800;
    domain = &stru_2852CD800;
  }

  v11[0] = @"errorDomain";
  v11[1] = @"errorCode";
  v12[0] = domain;
  v12[1] = v7;
  v11[2] = @"errorMessage";
  v12[2] = localizedDescription;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [ASTAnalytics sendAnalyticsWithEvent:event payloadDict:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict
{
  if (event > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278CBD2E0[event];
    v5 = off_278CBD308[event];
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dict];
  [v6 setObject:v4 forKeyedSubscript:@"type"];
  if (+[ASTLinking isCoreAnalyticsFrameworkAvailable])
  {
    AnalyticsSendEvent();
  }
}

@end