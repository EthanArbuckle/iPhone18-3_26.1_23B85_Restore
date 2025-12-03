@interface AVFigRoutingContextCommandOutputDeviceConfiguration
+ (void)initialize;
- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup;
- (NSArray)peersInHomeGroup;
- (void)dealloc;
@end

@implementation AVFigRoutingContextCommandOutputDeviceConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  response = self->_response;
  if (response)
  {
    CFRelease(response);
  }

  v4.receiver = self;
  v4.super_class = AVFigRoutingContextCommandOutputDeviceConfiguration;
  [(AVFigRoutingContextCommandOutputDeviceConfiguration *)&v4 dealloc];
}

- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup
{
  automaticallyAllowsConnectionsFromPeersInHomeGroup = [(AVFigRoutingContextCommandOutputDeviceConfiguration *)self automaticallyAllowsConnectionsFromPeersInHomeGroup];
  if (automaticallyAllowsConnectionsFromPeersInHomeGroup)
  {
    CFDictionaryGetValue(self->_response, *MEMORY[0x1E69617C0]);
    LOBYTE(automaticallyAllowsConnectionsFromPeersInHomeGroup) = FigCFEqual() == 0;
  }

  return automaticallyAllowsConnectionsFromPeersInHomeGroup;
}

- (NSArray)peersInHomeGroup
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  Value = CFDictionaryGetValue(self->_response, *MEMORY[0x1E69617A8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = Value;
  v5 = [Value countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = *MEMORY[0x1E6961780];
    v9 = *MEMORY[0x1E6961790];
    v10 = *MEMORY[0x1E6961788];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v8];
        v14 = [v12 objectForKeyedSubscript:v9];
        v15 = [objc_msgSend(v12 objectForKeyedSubscript:{v10), "unsignedIntegerValue"}];
        v16 = [objc_alloc(MEMORY[0x1E6958808]) initWithID:v13 publicKey:v14 hasAdministratorPrivileges:v15 == 1];
        [(NSArray *)array addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return array;
}

@end