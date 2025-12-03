@interface NEProfilePayloadBase
- (BOOL)addCertificatePending:(id)pending certificateTag:(id)tag accessGroup:(id)group;
- (NEProfilePayloadBase)initWithPayload:(id)payload;
- (id)validatePayload;
@end

@implementation NEProfilePayloadBase

- (BOOL)addCertificatePending:(id)pending certificateTag:(id)tag accessGroup:(id)group
{
  pendingCopy = pending;
  tagCopy = tag;
  groupCopy = group;
  if (self->_pendingCertificates || (v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4], pendingCertificates = self->_pendingCertificates, self->_pendingCertificates = v11, pendingCertificates, self->_pendingCertificates))
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:pendingCopy forKeyedSubscript:@"PayloadUUID"];
    if (groupCopy)
    {
      [v13 setObject:groupCopy forKeyedSubscript:@"AccessGroup"];
    }

    [(NSMutableDictionary *)self->_pendingCertificates setObject:v13 forKey:tagCopy];

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
    payloadAtom = [(NEProfilePayloadBase *)self payloadAtom];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = payloadAtom;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: NEProfilePayloadBase validatePayload should be overriden, dict %@", &v9, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NEProfilePayloadBase)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v8.receiver = self;
  v8.super_class = NEProfilePayloadBase;
  v5 = [(NEProfilePayloadBase *)&v8 init];
  payloadAtom = v5->_payloadAtom;
  v5->_payloadAtom = payloadCopy;

  return v5;
}

@end