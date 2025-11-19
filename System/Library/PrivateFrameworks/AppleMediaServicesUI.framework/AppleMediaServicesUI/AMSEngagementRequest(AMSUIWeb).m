@interface AMSEngagementRequest(AMSUIWeb)
- (id)generateWebExportWithContext:()AMSUIWeb;
@end

@implementation AMSEngagementRequest(AMSUIWeb)

- (id)generateWebExportWithContext:()AMSUIWeb
{
  v4 = a3;
  v5 = MEMORY[0x1E6959A48];
  v6 = [v4 clientInfo];
  v7 = [v6 accountMediaType];
  v8 = [v5 ams_sharedAccountStoreForMediaType:v7];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [a1 URL];
  v11 = [v10 absoluteString];
  [v9 setObject:v11 forKeyedSubscript:@"url"];

  v12 = [a1 clientData];
  [v9 setObject:v12 forKeyedSubscript:@"clientData"];

  v13 = [a1 metricsOverlay];
  [v9 setObject:v13 forKeyedSubscript:@"metricsOverlay"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "presentationStyle")}];
  [v9 setObject:v14 forKeyedSubscript:@"presentationStyle"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "destinationStyle")}];
  [v9 setObject:v15 forKeyedSubscript:@"destinationStyle"];

  v16 = [a1 account];
  if (v16)
  {
    v17 = [a1 account];
    v18 = [v4 JSAccountFromAccount:v17 store:v8];
    [v9 setObject:v18 forKeyedSubscript:@"account"];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:@"account"];
  }

  return v9;
}

@end