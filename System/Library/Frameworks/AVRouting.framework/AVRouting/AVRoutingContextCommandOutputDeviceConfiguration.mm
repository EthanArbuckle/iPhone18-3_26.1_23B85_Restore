@interface AVRoutingContextCommandOutputDeviceConfiguration
+ (void)initialize;
- (AVRoutingContextCommandOutputDeviceConfiguration)initWithRoutingContextComandResponse:(__CFDictionary *)response;
- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup;
- (NSArray)peersInHomeGroup;
- (void)dealloc;
@end

@implementation AVRoutingContextCommandOutputDeviceConfiguration

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
  v4.super_class = AVRoutingContextCommandOutputDeviceConfiguration;
  [(AVRoutingContextCommandOutputDeviceConfiguration *)&v4 dealloc];
}

- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup
{
  automaticallyAllowsConnectionsFromPeersInHomeGroup = [(AVRoutingContextCommandOutputDeviceConfiguration *)self automaticallyAllowsConnectionsFromPeersInHomeGroup];
  if (automaticallyAllowsConnectionsFromPeersInHomeGroup)
  {
    CFDictionaryGetValue(self->_response, *MEMORY[0x1E69617C0]);
    LOBYTE(automaticallyAllowsConnectionsFromPeersInHomeGroup) = FigCFEqual() == 0;
  }

  return automaticallyAllowsConnectionsFromPeersInHomeGroup;
}

- (NSArray)peersInHomeGroup
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  Value = CFDictionaryGetValue(self->_response, *MEMORY[0x1E69617A8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = Value;
  v5 = [Value countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E6961780];
    v9 = *MEMORY[0x1E6961790];
    v10 = *MEMORY[0x1E6961788];
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = -[AVOutputDeviceAuthorizedPeer initWithID:publicKey:hasAdministratorPrivileges:]([AVOutputDeviceAuthorizedPeer alloc], "initWithID:publicKey:hasAdministratorPrivileges:", [*(*(&v16 + 1) + 8 * v11) objectForKeyedSubscript:v8], objc_msgSend(*(*(&v16 + 1) + 8 * v11), "objectForKeyedSubscript:", v9), objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * v11), "objectForKeyedSubscript:", v10), "unsignedIntegerValue") == 1);
        [(NSArray *)array addObject:v12];

        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
  return array;
}

- (AVRoutingContextCommandOutputDeviceConfiguration)initWithRoutingContextComandResponse:(__CFDictionary *)response
{
  v8.receiver = self;
  v8.super_class = AVRoutingContextCommandOutputDeviceConfiguration;
  v4 = [(AVRoutingContextCommandOutputDeviceConfiguration *)&v8 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!response)
  {
    v4->_response = 0;
    goto LABEL_6;
  }

  v6 = CFRetain(response);
  v5->_response = v6;
  if (!v6)
  {
LABEL_7:
    response = 0;
    goto LABEL_6;
  }

  response = v5;
LABEL_6:

  return response;
}

- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup
{
  Value = CFDictionaryGetValue(self->_response, *MEMORY[0x1E69617B8]);
  if (Value)
  {
    LOBYTE(Value) = CFBooleanGetValue(Value) != 0;
  }

  return Value;
}

@end