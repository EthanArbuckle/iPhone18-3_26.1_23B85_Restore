@interface AKAppleIDAuthenticationInAppExtensionContext
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
@end

@implementation AKAppleIDAuthenticationInAppExtensionContext

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v21 = 0;
  v19 = 0;
  v10 = 0;
  if (v24)
  {
    v22 = [v24 userInfo];
    v21 = 1;
    v20 = [v22 objectForKeyedSubscript:@"statusCode"];
    v19 = 1;
    v10 = [v20 isEqual:&unk_2835AAEB8];
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v10)
  {
    v6 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    queue = v6;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __101__AKAppleIDAuthenticationInAppExtensionContext_remoteUIController_didFinishLoadWithError_forRequest___block_invoke;
    v16 = &unk_2784A6420;
    v17 = MEMORY[0x277D82BE0](v26);
    v18 = MEMORY[0x277D82BE0](v24);
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v11.receiver = v26;
    v11.super_class = AKAppleIDAuthenticationInAppExtensionContext;
    [(AKAppleIDAuthenticationInAppContext *)&v11 remoteUIController:location[0] didFinishLoadWithError:v24 forRequest:v23];
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

@end