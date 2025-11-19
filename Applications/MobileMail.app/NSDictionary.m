@interface NSDictionary
- (BOOL)mf_isAMSTest;
- (int)mf_iterations;
- (int)mf_maxScrollLength;
- (int)mf_messageCount;
- (int)mf_pages;
- (int)mf_scrollOffset;
- (int64_t)mf_testInterfaceOrientation;
@end

@implementation NSDictionary

- (BOOL)mf_isAMSTest
{
  v2 = [(NSDictionary *)self mf_testName];
  v3 = [v2 containsString:@"AMS"];

  return v3;
}

- (int)mf_iterations
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"iterations"];
  v3 = [v2 intValue];

  return v3;
}

- (int)mf_pages
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"pages"];
  v3 = [v2 intValue];

  return v3;
}

- (int)mf_maxScrollLength
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"maxScrollLength"];

  if (!v3)
  {
    return 10000;
  }

  v4 = [(NSDictionary *)self objectForKeyedSubscript:@"maxScrollLength"];
  v5 = [v4 intValue];

  return v5;
}

- (int)mf_scrollOffset
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"offset"];
  v3 = [v2 intValue];

  return v3;
}

- (int64_t)mf_testInterfaceOrientation
{
  v2 = [(NSDictionary *)self mf_testName];
  if ([v2 mf_containsSubstring:@"Landscape"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int)mf_messageCount
{
  v3 = [(NSDictionary *)self objectForKeyedSubscript:@"messageCount"];

  if (v3)
  {
    v4 = [(NSDictionary *)self objectForKeyedSubscript:@"messageCount"];
    LODWORD(v3) = [v4 intValue];
  }

  return v3;
}

@end