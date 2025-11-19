@interface NEIKEv2Payload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
- (NEIKEv2Payload)init;
- (uint64_t)isValid;
- (void)setPayloadSubHeader:(uint64_t)a1;
@end

@implementation NEIKEv2Payload

- (BOOL)parsePayloadData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Cannot parse payload data for %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)generatePayloadData
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Cannot generate payload data for %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)hasRequiredFields
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Cannot check for required fields on generic payload %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NEIKEv2Payload)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2Payload;
  v2 = [(NEIKEv2Payload *)&v8 init];
  if (!v2)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *v7 = 0;
    v6 = "[super init] failed";
    goto LABEL_8;
  }

  if (![(NEIKEv2Payload *)v2 isMemberOfClass:objc_opt_class()])
  {
    v4 = v2;
    goto LABEL_6;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    v6 = "Must use a subclass of NEIKEv2Payload to create payloads";
LABEL_8:
    _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, v6, v7, 2u);
  }

LABEL_4:

  v4 = 0;
LABEL_6:

  return v4;
}

- (void)setPayloadSubHeader:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (uint64_t)isValid
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1)
    {
      if ([result hasRequiredFields])
      {
LABEL_4:
        result = 1;
        goto LABEL_9;
      }
    }

    else if ([result generatePayloadData])
    {
      goto LABEL_4;
    }

    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to validate %@", &v4, 0xCu);
    }

    result = 0;
  }

LABEL_9:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end