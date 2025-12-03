@interface TKSlotRegistration
+ (BOOL)handleConnection:(id)connection server:(id)server;
- (TKSlotRegistration)initWithConnection:(id)connection server:(id)server;
- (void)addSlotWithEndpoint:(id)endpoint name:(id)name type:(id)type reply:(id)reply;
@end

@implementation TKSlotRegistration

- (TKSlotRegistration)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = TKSlotRegistration;
  v8 = [(TKSlotRegistration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_server, server);
  }

  return v9;
}

+ (BOOL)handleConnection:(id)connection server:(id)server
{
  serverCopy = server;
  connectionCopy = connection;
  v7 = [[TKSlotRegistration alloc] initWithConnection:connectionCopy server:serverCopy];

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotRegistry];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:v7];
  return 1;
}

- (void)addSlotWithEndpoint:(id)endpoint name:(id)name type:(id)type reply:(id)reply
{
  endpointCopy = endpoint;
  nameCopy = name;
  typeCopy = type;
  replyCopy = reply;
  if (!self->_endpoint)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v16 = [WeakRetained valueForEntitlement:@"com.apple.private.ctk.slot-type"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v16 isEqualToString:typeCopy])
      {
LABEL_22:
        objc_storeStrong(&self->_slotType, type);
        objc_storeStrong(&self->_endpoint, endpoint);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000EE54;
        v29[3] = &unk_100038710;
        v29[4] = self;
        v25 = objc_loadWeakRetained(&self->_connection);
        [v25 setInvalidationHandler:v29];

        [(TKSlotServer *)self->_server addSlotRegistration:self name:nameCopy];
        slotName = [(TKSlotRegistration *)self slotName];
        replyCopy[2](replyCopy, slotName);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = replyCopy;
        v27 = nameCopy;
        v28 = endpointCopy;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          while (2)
          {
            v22 = 0;
            do
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              if ([typeCopy isEqualToString:{*(*(&v30 + 1) + 8 * v22), v26, v27, v28}])
              {

                nameCopy = v27;
                endpointCopy = v28;
                replyCopy = v26;
                goto LABEL_22;
              }

              v22 = v22 + 1;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        nameCopy = v27;
        endpointCopy = v28;
        replyCopy = v26;
      }
    }

    v23 = sub_10000EE10();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10001F524(&self->_connection);
    }

    slotName = objc_loadWeakRetained(&self->_connection);
    [slotName invalidate];
    goto LABEL_23;
  }

  v15 = sub_10000EE10();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10001F4AC(self);
  }

  v16 = objc_loadWeakRetained(&self->_connection);
  [v16 invalidate];
LABEL_24:
}

@end