@interface ComponentApplePay
- (BOOL)isPresent;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentApplePay

- (BOOL)isPresent
{
  v2 = IOServiceMatching("AppleStockholmControl");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v4 != 0;
}

- (void)populateAttributes:(id)a3
{
  v3 = a3;
  if (objc_opt_class())
  {
    v7 = 0;
    v4 = [NFSecureElement embeddedSecureElementWithError:&v7];
    v5 = v7;
    if (v5)
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to get secure element serial with error %@", buf, 0xCu);
      }
    }

    else
    {
      v6 = [v4 serialNumber];
      [v3 setObject:v6 forKeyedSubscript:@"serialNumber"];
    }
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Near Field framework is not present at runtime.", buf, 2u);
    }
  }
}

@end