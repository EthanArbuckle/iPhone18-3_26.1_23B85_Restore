@interface WKWebExtensionDeclarativeNetRequestRule
@end

@implementation WKWebExtensionDeclarativeNetRequestRule

id __77___WKWebExtensionDeclarativeNetRequestRule_removeInvalidResourceTypesForKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) _chromeResourceTypeToWebKitResourceType];
  v6 = [v5 objectForKey:v4];

  return v6;
}

id __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 setObject:v3 forKeyedSubscript:@"urlFilter"];
  [v4 setObject:0 forKeyedSubscript:@"regexFilter"];
  [v4 setObject:0 forKeyedSubscript:@"requestDomains"];
  [v4 setObject:0 forKeyedSubscript:@"excludedRequestDomains"];

  return v4;
}

id __62___WKWebExtensionDeclarativeNetRequestRule_ruleInWebKitFormat__block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  [v4 setObject:v3 forKeyedSubscript:@"requestMethods"];
  [v4 setObject:0 forKeyedSubscript:@"excludedRequestMethods"];

  return v4;
}

id __103___WKWebExtensionDeclarativeNetRequestRule__webKitRuleWithWebKitActionType_chromeActionType_condition___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"replaceOnly"];
  if (v4)
  {
    v5 = [v3 mutableCopy];
    [v5 setObject:v4 forKeyedSubscript:@"replace-only"];
    [v5 setObject:0 forKeyedSubscript:@"replaceOnly"];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

id __103___WKWebExtensionDeclarativeNetRequestRule__webKitRuleWithWebKitActionType_chromeActionType_condition___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 hasPrefix:@"*"] & 1) == 0)
  {
    v4 = [@"*" stringByAppendingString:v3];

    v3 = v4;
  }

  return v3;
}

id __103___WKWebExtensionDeclarativeNetRequestRule__webKitRuleWithWebKitActionType_chromeActionType_condition___block_invoke_3(int a1, int a2, WebKit *this)
{
  v3 = WebKit::escapeCharactersInString(this, &stru_1F1148708.isa, this);
  v4 = [@"^[^:]+://+([^:/]+\\.)?" stringByAppendingString:v3];
  v5 = [v4 stringByAppendingString:@"/.*"];

  return v5;
}

id __90___WKWebExtensionDeclarativeNetRequestRule__convertedResourceTypesForChromeResourceTypes___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKeyedSubscript:?];

  return v1;
}

@end