@interface YelpAccessPlugin
- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8;
- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6;
@end

@implementation YelpAccessPlugin

- (void)handleAccessRequestToAccountsOfType:(id)a3 forClient:(id)a4 withOptions:(id)a5 store:(id)a6 allowUserInteraction:(BOOL)a7 completion:(id)a8
{
  v13 = a4;
  v9 = a8;
  if (objc_msgSend_hasEntitlement_(v13, v10, *MEMORY[0x29EDB8400]))
  {
    hasEntitlement = 1;
  }

  else
  {
    hasEntitlement = objc_msgSend_hasEntitlement_(v13, v11, *MEMORY[0x29EDB83E0]);
  }

  v9[2](v9, hasEntitlement, 0);
}

- (void)authorizeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v7 = *MEMORY[0x29EDB8400];
  v10 = a6;
  hasEntitlement = objc_msgSend_hasEntitlement_(a4, v8, v7);
  v10[2](v10, hasEntitlement, 0);
}

- (void)revokeAccessToAccountsOfType:(id)a3 forClient:(id)a4 store:(id)a5 completion:(id)a6
{
  v7 = *MEMORY[0x29EDB8400];
  v10 = a6;
  hasEntitlement = objc_msgSend_hasEntitlement_(a4, v8, v7);
  v10[2](v10, hasEntitlement, 0);
}

@end