@interface SecKeyProxyTarget
- (SecKeyProxyTarget)initWithKey:(id)a3 certificate:(id)a4;
- (void)getAlgorithmIDWithReply:(id)a3;
- (void)getAttributesWithReply:(id)a3;
- (void)getBlockSizeWithReply:(id)a3;
- (void)getDescriptionWithReply:(id)a3;
- (void)getExternalRepresentationWithReply:(id)a3;
- (void)getPublicKey:(id)a3;
- (void)performOperation:(int64_t)a3 mode:(int64_t)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7;
@end

@implementation SecKeyProxyTarget

- (void)performOperation:(int64_t)a3 mode:(int64_t)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v26[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v16 = [v15 mutableCopy];

  if ([v13 count])
  {
    v17 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v17 = 0;
  }

  if ([v13 count] < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v13 objectAtIndexedSubscript:1];
  }

  v24 = 0;
  v23[0] = [(SecKeyProxyTarget *)self key];
  v23[1] = a3;
  v23[2] = v16;
  v23[3] = a4;
  v19 = SecKeyRunAlgorithmAndCopyResult(v23, v17, v18, &v24);
  v20 = v19;
  if (v19)
  {
    v25 = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v14[2](v14, v21, v24);
  }

  else
  {
    v14[2](v14, MEMORY[0x1E695E0F0], v24);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)getPublicKey:(id)a3
{
  v10 = a3;
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
    v9 = [(SecKeyProxy *)publicKeyProxy endpoint];
    v10[2](v10, v9);

    goto LABEL_5;
  }

  v10[2](v10, 0);
LABEL_5:
}

- (void)getAlgorithmIDWithReply:(id)a3
{
  v6 = a3;
  AlgorithmId = SecKeyGetAlgorithmId([(SecKeyProxyTarget *)self key]);
  (*(a3 + 2))(v6, AlgorithmId);
}

- (void)getDescriptionWithReply:(id)a3
{
  v8 = a3;
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
  v8[2](v8, v4);
}

- (void)getExternalRepresentationWithReply:(id)a3
{
  error = 0;
  v4 = a3;
  v5 = SecKeyCopyExternalRepresentation([(SecKeyProxyTarget *)self key], &error);
  v4[2](v4, v5, error);
}

- (void)getAttributesWithReply:(id)a3
{
  v4 = a3;
  v5 = SecKeyCopyAttributes([(SecKeyProxyTarget *)self key]);
  v16 = [(__CFDictionary *)v5 mutableCopy];

  v6 = [v16 objectForKeyedSubscript:@"accc"];

  if (v6)
  {
    v14 = SecAccessControlCopyData(v6, v7, v8, v9, v10, v11, v12, v13);
    [v16 setObject:v14 forKeyedSubscript:@"accc"];
  }

  v15 = [v16 copy];
  v4[2](v4, v15);
}

- (void)getBlockSizeWithReply:(id)a3
{
  v7 = a3;
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

  v7[2](v7, v6);
}

- (SecKeyProxyTarget)initWithKey:(id)a3 certificate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SecKeyProxyTarget;
  v9 = [(SecKeyProxyTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_certificate, a4);
  }

  return v10;
}

@end