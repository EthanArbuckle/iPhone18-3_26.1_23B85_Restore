@interface _LAKeyStoreKeyNull
- (NSData)publicKeyHash;
- (_LAKeyStoreKeyNull)init;
- (void)decryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6;
- (void)encryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 completion:(id)a5;
- (void)exchangeKeysWithPublicKey:(id)a3 secKeyAlgorithm:(__CFString *)a4 secKeyParameters:(id)a5 context:(id)a6 completion:(id)a7;
- (void)exportBytesWithCompletion:(id)a3;
- (void)signData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6;
- (void)verifyData:(id)a3 signature:(id)a4 secKeyAlgorithm:(__CFString *)a5 completion:(id)a6;
@end

@implementation _LAKeyStoreKeyNull

- (_LAKeyStoreKeyNull)init
{
  v10.receiver = self;
  v10.super_class = _LAKeyStoreKeyNull;
  v2 = [(_LAKeyStoreKeyNull *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

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

- (void)exportBytesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[LAAuthorizationError resourceNotFound];
  (*(a3 + 2))(v4, 0, v5);
}

- (void)signData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(a6 + 2))(v7, 0, v8);
}

- (void)decryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 context:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(a6 + 2))(v7, 0, v8);
}

- (void)exchangeKeysWithPublicKey:(id)a3 secKeyAlgorithm:(__CFString *)a4 secKeyParameters:(id)a5 context:(id)a6 completion:(id)a7
{
  v8 = a7;
  v9 = +[LAAuthorizationError resourceNotFound];
  (*(a7 + 2))(v8, 0, v9);
}

- (void)encryptData:(id)a3 secKeyAlgorithm:(__CFString *)a4 completion:(id)a5
{
  v6 = a5;
  v7 = +[LAAuthorizationError resourceNotFound];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)verifyData:(id)a3 signature:(id)a4 secKeyAlgorithm:(__CFString *)a5 completion:(id)a6
{
  v7 = a6;
  v8 = +[LAAuthorizationError resourceNotFound];
  (*(a6 + 2))(v7, v8);
}

@end