@interface NEProfilePayloadBase
- (BOOL)addCertificatePending:(id)a3 certificateTag:(id)a4 accessGroup:(id)a5;
- (NEProfilePayloadBase)initWithPayload:(id)a3;
- (id)validatePayload;
@end

@implementation NEProfilePayloadBase

- (BOOL)addCertificatePending:(id)a3 certificateTag:(id)a4 accessGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_pendingCertificates || (v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4], pendingCertificates = self->_pendingCertificates, self->_pendingCertificates = v11, pendingCertificates, self->_pendingCertificates))
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v8 forKeyedSubscript:@"PayloadUUID"];
    if (v10)
    {
      [v13 setObject:v10 forKeyedSubscript:@"AccessGroup"];
    }

    [(NSMutableDictionary *)self->_pendingCertificates setObject:v13 forKey:v9];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)validatePayload
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(NEProfilePayloadBase *)self payloadAtom];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: NEProfilePayloadBase validatePayload should be overriden, dict %@", &v9, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NEProfilePayloadBase)initWithPayload:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NEProfilePayloadBase;
  v5 = [(NEProfilePayloadBase *)&v8 init];
  payloadAtom = v5->_payloadAtom;
  v5->_payloadAtom = v4;

  return v5;
}

@end