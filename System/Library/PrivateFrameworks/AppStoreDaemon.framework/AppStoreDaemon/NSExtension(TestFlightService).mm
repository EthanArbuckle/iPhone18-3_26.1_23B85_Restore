@interface NSExtension(TestFlightService)
- (id)testFlightServiceExtensionCustomServiceTime;
@end

@implementation NSExtension(TestFlightService)

- (id)testFlightServiceExtensionCustomServiceTime
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"ASDTestFlightServiceExtensionServiceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end