@interface SecKeyProxyTarget
- (SecKeyProxyTarget)initWithKey:(id)key certificate:(id)certificate;
- (void)getAlgorithmIDWithReply:(id)reply;
- (void)getAttributesWithReply:(id)reply;
- (void)getBlockSizeWithReply:(id)reply;
- (void)getDescriptionWithReply:(id)reply;
- (void)getExternalRepresentationWithReply:(id)reply;
- (void)getPublicKey:(id)key;
- (void)performOperation:(int64_t)operation mode:(int64_t)mode algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply;
@end

@implementation SecKeyProxyTarget

- (void)performOperation:(int64_t)operation mode:(int64_t)mode algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply
{
  v26[1] = *MEMORY[0x1E69E9840];
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  replyCopy = reply;
  v26[0] = algorithmCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v16 = [v15 mutableCopy];

  if ([parametersCopy count])
  {
    v17 = [parametersCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v17 = 0;
  }

  if ([parametersCopy count] < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = [parametersCopy objectAtIndexedSubscript:1];
  }

  v24 = 0;
  v23[0] = [(SecKeyProxyTarget *)self key];
  v23[1] = operation;
  v23[2] = v16;
  v23[3] = mode;
  v19 = SecKeyRunAlgorithmAndCopyResult(v23, v17, v18, &v24);
  v20 = v19;
  if (v19)
  {
    v25 = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    replyCopy[2](replyCopy, v21, v24);
  }

  else
  {
    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v24);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)getPublicKey:(id)key
{
  keyCopy = key;
  publicKeyProxy = self->_publicKeyProxy;
  if (publicKeyProxy)
  {
    goto LABEL_4;
  }

  v5 = SecKeyCopyPublicKey([(SecKeyProxyTarget *)self key]);
  if (v5)
  {
    v6 = v5;
    v7 = [[SecKeyProxy alloc] initWithKey:v5];
    v8 = self->_publicKeyProxy;
    self->_publicKeyProxy = v7;

    publicKeyProxy = self->_publicKeyProxy;
LABEL_4:
    endpoint = [(SecKeyProxy *)publicKeyProxy endpoint];
    keyCopy[2](keyCopy, endpoint);

    goto LABEL_5;
  }

  keyCopy[2](keyCopy, 0);
LABEL_5:
}

- (void)getAlgorithmIDWithReply:(id)reply
{
  replyCopy = reply;
  AlgorithmId = SecKeyGetAlgorithmId([(SecKeyProxyTarget *)self key]);
  (*(reply + 2))(replyCopy, AlgorithmId);
}

- (void)getDescriptionWithReply:(id)reply
{
  replyCopy = reply;
  v4 = CFCopyDescription([(SecKeyProxyTarget *)self key]);
  if ([(__CFString *)v4 hasPrefix:@"<SecKeyRef "]&& ([(__CFString *)v4 hasSuffix:@">"]& 1) != 0)
  {
    v5 = -12;
    v6 = 11;
LABEL_7:
    v7 = [(__CFString *)v4 substringWithRange:v6, [(__CFString *)v4 length]+ v5];

    v4 = v7;
    goto LABEL_8;
  }

  if ([(__CFString *)v4 hasPrefix:@"<SecKeyRef: "]&& [(__CFString *)v4 hasSuffix:@">"])
  {
    v5 = -13;
    v6 = 12;
    goto LABEL_7;
  }

LABEL_8:
  replyCopy[2](replyCopy, v4);
}

- (void)getExternalRepresentationWithReply:(id)reply
{
  error = 0;
  replyCopy = reply;
  v5 = SecKeyCopyExternalRepresentation([(SecKeyProxyTarget *)self key], &error);
  replyCopy[2](replyCopy, v5, error);
}

- (void)getAttributesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = SecKeyCopyAttributes([(SecKeyProxyTarget *)self key]);
  v16 = [(__CFDictionary *)v5 mutableCopy];

  v6 = [v16 objectForKeyedSubscript:@"accc"];

  if (v6)
  {
    v14 = SecAccessControlCopyData(v6, v7, v8, v9, v10, v11, v12, v13);
    [v16 setObject:v14 forKeyedSubscript:@"accc"];
  }

  v15 = [v16 copy];
  replyCopy[2](replyCopy, v15);
}

- (void)getBlockSizeWithReply:(id)reply
{
  replyCopy = reply;
  v4 = [(SecKeyProxyTarget *)self key];
  _SecKeyCheck(v4, "SecKeyGetBlockSize");
  v5 = *(*(v4 + 2) + 80);
  if (v5)
  {
    v6 = v5(v4);
  }

  else
  {
    v6 = 0;
  }

  replyCopy[2](replyCopy, v6);
}

- (SecKeyProxyTarget)initWithKey:(id)key certificate:(id)certificate
{
  keyCopy = key;
  certificateCopy = certificate;
  v12.receiver = self;
  v12.super_class = SecKeyProxyTarget;
  v9 = [(SecKeyProxyTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_certificate, certificate);
  }

  return v10;
}

@end