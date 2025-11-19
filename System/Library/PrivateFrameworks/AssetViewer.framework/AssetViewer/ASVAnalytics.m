@interface ASVAnalytics
+ (void)sendAnalyticsWithCategory:(id)a3 payloadDict:(id)a4;
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4;
+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4;
@end

@implementation ASVAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 error:(id)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"errorDomain";
  v5 = a4;
  v6 = [v5 domain];
  v11[0] = v6;
  v10[1] = @"errorCode";
  v7 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v5, "code")}];
  v11[1] = v7;
  v10[2] = @"errorMessage";
  v8 = [v5 localizedDescription];

  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [ASVAnalytics sendAnalyticsWithEvent:a3 payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)a3 payloadDict:(id)a4
{
  v7 = a4;
  v14 = v7;
  if (a3 >= 0x15)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"ASVAnalytics.m" lineNumber:190 description:@"Event name should be defined"];

    v8 = v14;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = off_278CCABD8[a3];
    v10 = off_278CCAC80[a3];
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  v13 = [v12 objectForKeyedSubscript:@"type"];

  if (v13)
  {
    [ASVAnalytics sendAnalyticsWithEvent:a2 payloadDict:a1];
  }

  [v12 setObject:v10 forKeyedSubscript:@"type"];
  [ASVAnalytics sendAnalyticsWithCategory:v9 payloadDict:v12];
}

+ (void)sendAnalyticsWithCategory:(id)a3 payloadDict:(id)a4
{
  v9 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"type"];

  if (!v8)
  {
    [ASVAnalytics sendAnalyticsWithCategory:a2 payloadDict:a1];
  }

  AnalyticsSendEvent();
}

+ (void)sendAnalyticsWithEvent:(uint64_t)a1 payloadDict:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASVAnalytics.m" lineNumber:194 description:@"[Analytics] Type should not already be defined"];
}

+ (void)sendAnalyticsWithCategory:(uint64_t)a1 payloadDict:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASVAnalytics.m" lineNumber:203 description:@"Event type should be defined"];
}

@end