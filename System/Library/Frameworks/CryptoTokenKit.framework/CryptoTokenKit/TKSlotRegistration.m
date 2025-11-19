@interface TKSlotRegistration
+ (BOOL)handleConnection:(id)a3 server:(id)a4;
- (TKSlotRegistration)initWithConnection:(id)a3 server:(id)a4;
- (void)addSlotWithEndpoint:(id)a3 name:(id)a4 type:(id)a5 reply:(id)a6;
@end

@implementation TKSlotRegistration

- (TKSlotRegistration)initWithConnection:(id)a3 server:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TKSlotRegistration;
  v8 = [(TKSlotRegistration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeStrong(&v9->_server, a4);
  }

  return v9;
}

+ (BOOL)handleConnection:(id)a3 server:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TKSlotRegistration alloc] initWithConnection:v6 server:v5];

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotRegistry];
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:v7];
  return 1;
}

- (void)addSlotWithEndpoint:(id)a3 name:(id)a4 type:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!self->_endpoint)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v16 = [WeakRetained valueForEntitlement:@"com.apple.private.ctk.slot-type"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v16 isEqualToString:v13])
      {
LABEL_22:
        objc_storeStrong(&self->_slotType, a5);
        objc_storeStrong(&self->_endpoint, a3);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10000EE54;
        v29[3] = &unk_100038710;
        v29[4] = self;
        v25 = objc_loadWeakRetained(&self->_connection);
        [v25 setInvalidationHandler:v29];

        [(TKSlotServer *)self->_server addSlotRegistration:self name:v12];
        v24 = [(TKSlotRegistration *)self slotName];
        v14[2](v14, v24);
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v14;
        v27 = v12;
        v28 = v11;
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

              if ([v13 isEqualToString:{*(*(&v30 + 1) + 8 * v22), v26, v27, v28}])
              {

                v12 = v27;
                v11 = v28;
                v14 = v26;
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

        v12 = v27;
        v11 = v28;
        v14 = v26;
      }
    }

    v23 = sub_10000EE10();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10001F524(&self->_connection);
    }

    v24 = objc_loadWeakRetained(&self->_connection);
    [v24 invalidate];
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