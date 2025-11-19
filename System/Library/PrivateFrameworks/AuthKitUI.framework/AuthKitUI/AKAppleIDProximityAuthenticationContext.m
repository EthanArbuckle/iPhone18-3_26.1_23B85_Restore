@interface AKAppleIDProximityAuthenticationContext
- (AKAppleIDProximityAuthenticationContext)init;
- (AKAppleIDProximityAuthenticationContextDelegate)proxDelegate;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
@end

@implementation AKAppleIDProximityAuthenticationContext

- (AKAppleIDProximityAuthenticationContext)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AKAppleIDProximityAuthenticationContext;
  v4 = [(AKAppleIDProximityAuthenticationContext *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    [(AKAppleIDProximityAuthenticationContext *)v7 set_shouldBroadcastForProximityAuthOnly:1];
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)presentBasicLoginUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = _AKLogSystem();
  v8 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    log = v9;
    v6 = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_error_impl(&dword_222379000, log, v6, "Client is responsible for presenting their own Login UI.", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
  (*(v3 + 2))(v3, 0, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (AKAppleIDProximityAuthenticationContextDelegate)proxDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proxDelegate);

  return WeakRetained;
}

@end