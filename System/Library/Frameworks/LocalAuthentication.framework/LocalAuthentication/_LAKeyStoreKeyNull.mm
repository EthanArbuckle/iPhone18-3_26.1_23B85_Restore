@interface _LAKeyStoreKeyNull
- (NSData)publicKeyHash;
- (_LAKeyStoreKeyNull)init;
- (void)decryptData:(id)data secKeyAlgorithm:(__CFString *)algorithm context:(id)context completion:(id)completion;
- (void)encryptData:(id)data secKeyAlgorithm:(__CFString *)algorithm completion:(id)completion;
- (void)exchangeKeysWithPublicKey:(id)key secKeyAlgorithm:(__CFString *)algorithm secKeyParameters:(id)parameters context:(id)context completion:(id)completion;
- (void)exportBytesWithCompletion:(id)completion;
- (void)signData:(id)data secKeyAlgorithm:(__CFString *)algorithm context:(id)context completion:(id)completion;
- (void)verifyData:(id)data signature:(id)signature secKeyAlgorithm:(__CFString *)algorithm completion:(id)completion;
@end

@implementation _LAKeyStoreKeyNull

- (_LAKeyStoreKeyNull)init
{
  v10.receiver = self;
  v10.super_class = _LAKeyStoreKeyNull;
  v2 = [(_LAKeyStoreKeyNull *)&v10 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = [MEMORY[0x1E69AD210] serializeACL:{objc_msgSend(MEMORY[0x1E69AD210], "denyAllACL")}];
    acl = v2->_acl;
    v2->_acl = v6;

    publicKeyHash = v2->_publicKeyHash;
    v2->_publicKeyHash = &stru_1F1A66748;
  }

  return v2;
}

- (NSData)publicKeyHash
{
  v2 = objc_alloc_init(MEMORY[0x1E695DEF0]);

  return v2;
}

- (void)exportBytesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v5);
}

- (void)signData:(id)data secKeyAlgorithm:(__CFString *)algorithm context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)decryptData:(id)data secKeyAlgorithm:(__CFString *)algorithm context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)exchangeKeysWithPublicKey:(id)key secKeyAlgorithm:(__CFString *)algorithm secKeyParameters:(id)parameters context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v9 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)encryptData:(id)data secKeyAlgorithm:(__CFString *)algorithm completion:(id)completion
{
  completionCopy = completion;
  v7 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)verifyData:(id)data signature:(id)signature secKeyAlgorithm:(__CFString *)algorithm completion:(id)completion
{
  completionCopy = completion;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(completion + 2))(completionCopy, v8);
}

@end