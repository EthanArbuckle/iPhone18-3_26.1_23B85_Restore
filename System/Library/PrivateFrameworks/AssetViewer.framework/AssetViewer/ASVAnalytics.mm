@interface ASVAnalytics
+ (void)sendAnalyticsWithCategory:(id)category payloadDict:(id)dict;
+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error;
+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict;
@end

@implementation ASVAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"errorDomain";
  errorCopy = error;
  domain = [errorCopy domain];
  v11[0] = domain;
  v10[1] = @"errorCode";
  v7 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(errorCopy, "code")}];
  v11[1] = v7;
  v10[2] = @"errorMessage";
  localizedDescription = [errorCopy localizedDescription];

  v11[2] = localizedDescription;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [ASVAnalytics sendAnalyticsWithEvent:event payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict
{
  dictCopy = dict;
  v14 = dictCopy;
  if (event >= 0x15)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASVAnalytics.m" lineNumber:190 description:@"Event name should be defined"];

    v8 = v14;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v8 = dictCopy;
    v9 = off_278CCABD8[event];
    v10 = off_278CCAC80[event];
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  v13 = [v12 objectForKeyedSubscript:@"type"];

  if (v13)
  {
    [ASVAnalytics sendAnalyticsWithEvent:a2 payloadDict:self];
  }

  [v12 setObject:v10 forKeyedSubscript:@"type"];
  [ASVAnalytics sendAnalyticsWithCategory:v9 payloadDict:v12];
}

+ (void)sendAnalyticsWithCategory:(id)category payloadDict:(id)dict
{
  categoryCopy = category;
  dictCopy = dict;
  v8 = [dictCopy objectForKeyedSubscript:@"type"];

  if (!v8)
  {
    [ASVAnalytics sendAnalyticsWithCategory:a2 payloadDict:self];
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