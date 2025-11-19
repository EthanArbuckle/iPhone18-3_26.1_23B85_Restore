@interface ANAnalyticsContext
+ (id)contextWithAnnouncer:(id)a3;
+ (id)contextWithEndpointID:(id)a3;
- (NSDictionary)analyticsPayload;
@end

@implementation ANAnalyticsContext

- (NSDictionary)analyticsPayload
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnalyticsContext isEndpoint](self, "isEndpoint")}];
  [v3 setObject:v4 forKeyedSubscript:@"endpoint"];

  v5 = [v3 copy];

  return v5;
}

+ (id)contextWithAnnouncer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    [v4 setIsEndpoint:{objc_msgSend(v3, "isEndpoint")}];
  }

  return v4;
}

+ (id)contextWithEndpointID:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    [v4 setIsEndpoint:{objc_msgSend(v3, "an_isLocalDevice") ^ 1}];
  }

  return v4;
}

@end