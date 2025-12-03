@interface AMSEngagementRequest(AMSUIWeb)
- (id)generateWebExportWithContext:()AMSUIWeb;
@end

@implementation AMSEngagementRequest(AMSUIWeb)

- (id)generateWebExportWithContext:()AMSUIWeb
{
  v4 = a3;
  v5 = MEMORY[0x1E6959A48];
  clientInfo = [v4 clientInfo];
  accountMediaType = [clientInfo accountMediaType];
  v8 = [v5 ams_sharedAccountStoreForMediaType:accountMediaType];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [self URL];
  absoluteString = [v10 absoluteString];
  [v9 setObject:absoluteString forKeyedSubscript:@"url"];

  clientData = [self clientData];
  [v9 setObject:clientData forKeyedSubscript:@"clientData"];

  metricsOverlay = [self metricsOverlay];
  [v9 setObject:metricsOverlay forKeyedSubscript:@"metricsOverlay"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "presentationStyle")}];
  [v9 setObject:v14 forKeyedSubscript:@"presentationStyle"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "destinationStyle")}];
  [v9 setObject:v15 forKeyedSubscript:@"destinationStyle"];

  account = [self account];
  if (account)
  {
    account2 = [self account];
    v18 = [v4 JSAccountFromAccount:account2 store:v8];
    [v9 setObject:v18 forKeyedSubscript:@"account"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"account"];
  }

  return v9;
}

@end