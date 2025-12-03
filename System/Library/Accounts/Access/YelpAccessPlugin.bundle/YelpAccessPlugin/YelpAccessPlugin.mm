@interface YelpAccessPlugin
- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion;
- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion;
@end

@implementation YelpAccessPlugin

- (void)handleAccessRequestToAccountsOfType:(id)type forClient:(id)client withOptions:(id)options store:(id)store allowUserInteraction:(BOOL)interaction completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  if (objc_msgSend_hasEntitlement_(clientCopy, v10, *MEMORY[0x29EDB8400]))
  {
    hasEntitlement = 1;
  }

  else
  {
    hasEntitlement = objc_msgSend_hasEntitlement_(clientCopy, v11, *MEMORY[0x29EDB83E0]);
  }

  completionCopy[2](completionCopy, hasEntitlement, 0);
}

- (void)authorizeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  v7 = *MEMORY[0x29EDB8400];
  completionCopy = completion;
  hasEntitlement = objc_msgSend_hasEntitlement_(client, v8, v7);
  completionCopy[2](completionCopy, hasEntitlement, 0);
}

- (void)revokeAccessToAccountsOfType:(id)type forClient:(id)client store:(id)store completion:(id)completion
{
  v7 = *MEMORY[0x29EDB8400];
  completionCopy = completion;
  hasEntitlement = objc_msgSend_hasEntitlement_(client, v8, v7);
  completionCopy[2](completionCopy, hasEntitlement, 0);
}

@end