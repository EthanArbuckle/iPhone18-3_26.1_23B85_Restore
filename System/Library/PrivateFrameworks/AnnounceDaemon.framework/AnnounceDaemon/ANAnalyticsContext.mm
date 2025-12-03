@interface ANAnalyticsContext
+ (id)contextWithAnnouncer:(id)announcer;
+ (id)contextWithEndpointID:(id)d;
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

+ (id)contextWithAnnouncer:(id)announcer
{
  announcerCopy = announcer;
  v4 = objc_opt_new();
  if (announcerCopy)
  {
    [v4 setIsEndpoint:{objc_msgSend(announcerCopy, "isEndpoint")}];
  }

  return v4;
}

+ (id)contextWithEndpointID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  if (dCopy)
  {
    [v4 setIsEndpoint:{objc_msgSend(dCopy, "an_isLocalDevice") ^ 1}];
  }

  return v4;
}

@end