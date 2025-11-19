@interface WKWebView(AuthKit)
+ (id)ak_idpWebViewWithFrame:()AuthKit idpHandler:;
@end

@implementation WKWebView(AuthKit)

+ (id)ak_idpWebViewWithFrame:()AuthKit idpHandler:
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = objc_alloc_init(MEMORY[0x277CE3858]);
  v10 = [MEMORY[0x277CE3868] nonPersistentDataStore];
  [v13 setWebsiteDataStore:?];
  *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [v13 setSuppressesIncrementalRendering:{1, v7}];
  [v13 setMediaTypesRequiringUserActionForPlayback:-1];
  [v13 _setCanShowWhileLocked:1];
  v8 = objc_alloc(MEMORY[0x277CE3850]);
  v12 = [v8 initWithFrame:v13 configuration:{v15, v16, v17, v18}];
  [v12 setNavigationDelegate:location[0]];
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v11;
}

@end