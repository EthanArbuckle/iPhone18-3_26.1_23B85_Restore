@interface LAACLCoder
- (LAACLCoder)init;
- (id)encode;
- (void)addCredential:(id)a3 credentialType:(int64_t)a4;
@end

@implementation LAACLCoder

- (LAACLCoder)init
{
  v11.receiver = self;
  v11.super_class = LAACLCoder;
  v2 = [(LAACLCoder *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    *(v2 + 8) = vnegq_f64(v4);
    v5 = MEMORY[0x1E695E0F8];
    v6 = [MEMORY[0x1E695E0F8] mutableCopy];
    constraints = v3->_constraints;
    v3->_constraints = v6;

    v8 = [v5 mutableCopy];
    credentials = v3->_credentials;
    v3->_credentials = v8;
  }

  return v3;
}

- (void)addCredential:(id)a3 credentialType:(int64_t)a4
{
  credentials = self->_credentials;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)credentials setObject:v7 forKeyedSubscript:v8];
}

- (id)encode
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __20__LAACLCoder_encode__block_invoke;
  v8[3] = &unk_1E77CB970;
  v8[4] = self;
  v2 = __20__LAACLCoder_encode__block_invoke(v8);
  v3 = [LAACLBuilder customACL:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[LAACLBuilder denyAllACL];
  }

  v6 = v5;

  return v6;
}

LAACLBuilderCustomACLParams *__20__LAACLCoder_encode__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAACLBuilderCustomACLParams);
  [(LAACLBuilderCustomACLParams *)v2 setAuthType:*(*(a1 + 32) + 8)];
  [(LAACLBuilderCustomACLParams *)v2 setFallbackAuthType:*(*(a1 + 32) + 16)];
  [(LAACLBuilderCustomACLParams *)v2 setApConstraints:*(*(a1 + 32) + 24)];
  [(LAACLBuilderCustomACLParams *)v2 setCredentials:*(*(a1 + 32) + 32)];

  return v2;
}

@end