@interface _ASAgentFileVaultRecoveryKeyListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)recoveryKeysForSerialNumber:(id)a3 completion:(id)a4;
- (void)saveRecoveryKeyWithRequest:(id)a3 completion:(id)a4;
@end

@implementation _ASAgentFileVaultRecoveryKeyListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1B1D2633C(v7);

  return v9 & 1;
}

- (void)saveRecoveryKeyWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1B1D26628(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)recoveryKeysForSerialNumber:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B1D7BE4C();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1B1D26DA8(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end