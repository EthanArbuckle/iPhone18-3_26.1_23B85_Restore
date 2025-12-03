@interface _ASAgentFileVaultRecoveryKeyListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)recoveryKeysForSerialNumber:(id)number completion:(id)completion;
- (void)saveRecoveryKeyWithRequest:(id)request completion:(id)completion;
@end

@implementation _ASAgentFileVaultRecoveryKeyListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1B1D2633C(connectionCopy);

  return v9 & 1;
}

- (void)saveRecoveryKeyWithRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_1B1D26628(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)recoveryKeysForSerialNumber:(id)number completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1B1D7BE4C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1B1D26DA8(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end