@interface ASTAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4;
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4;
@end

@implementation ASTAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = a4;
    v6 = [v5 domain];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    v8 = [v5 localizedDescription];
  }

  else
  {
    v7 = &unk_2852D5F40;
    v8 = &stru_2852CD800;
    v6 = &stru_2852CD800;
  }

  v11[0] = @"errorDomain";
  v11[1] = @"errorCode";
  v12[0] = v6;
  v12[1] = v7;
  v11[2] = @"errorMessage";
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [ASTAnalytics sendAnalyticsWithEvent:a3 payloadDict:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4
{
  if (a3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278CBD2E0[a3];
    v5 = off_278CBD308[a3];
  }

  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a4];
  [v6 setObject:v4 forKeyedSubscript:@"type"];
  if (+[ASTLinking isCoreAnalyticsFrameworkAvailable])
  {
    AnalyticsSendEvent();
  }
}

@end