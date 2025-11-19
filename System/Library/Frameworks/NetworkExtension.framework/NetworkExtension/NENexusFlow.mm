@interface NENexusFlow
- (void)dealloc;
- (void)setupFlowProtocolWithUUID:(void *)a1;
@end

@implementation NENexusFlow

- (void)dealloc
{
  if ([(NENexusFlow *)self protocol])
  {
    free([(NENexusFlow *)self protocol]);
    [(NENexusFlow *)self setProtocol:0];
  }

  v3.receiver = self;
  v3.super_class = NENexusFlow;
  [(NENexusFlow *)&v3 dealloc];
}

- (void)setupFlowProtocolWithUUID:(void *)a1
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  if (v4)
  {
    v5 = v4;
    v4[2] = &NENexusFlowIdentifier;
    v4[3] = &NENexusFlowCallbacks;
    [v3 getUUIDBytes:v4];
    v5[5] = a1;
    [a1 setProtocol:v5];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = 64;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "calloc(%zu) failed", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end