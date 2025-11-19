@interface MobileSyncAccountNotificationObserver
- (MobileSyncAccountNotificationObserver)init;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation MobileSyncAccountNotificationObserver

- (MobileSyncAccountNotificationObserver)init
{
  v10.receiver = self;
  v10.super_class = MobileSyncAccountNotificationObserver;
  v2 = [(MobileSyncAccountNotificationObserver *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create(Name, v6);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v7;
  }

  return v2;
}

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v13 = [v12 accountType];
  v14 = [v13 supportedDataclasses];
  v45 = *MEMORY[0x29EDB8480];
  if ([v14 containsObject:?])
  {
    v15 = 0;
  }

  else
  {
    v42 = a4;
    v43 = v8;
    v16 = v10;
    v17 = [v12 accountType];
    v18 = [v17 supportedDataclasses];
    if ([v18 containsObject:*MEMORY[0x29EDB8488]])
    {
      v15 = 0;
    }

    else
    {
      v19 = [v12 accountType];
      v20 = [v19 supportedDataclasses];
      v21 = [v20 containsObject:*MEMORY[0x29EDB8470]];

      v15 = v21 ^ 1;
    }

    v10 = v16;
    v8 = v43;
    a4 = v42;
  }

  if (qword_2A1A11BF0 != -1)
  {
    sub_29C8E941C();
  }

  v22 = [v12 accountType];
  v23 = [v22 identifier];

  v24 = [v12 parentAccount];

  if (v24)
  {
    v25 = [v12 parentAccount];
    v26 = [v25 accountType];
    v27 = [v26 identifier];

    v23 = v27;
  }

  if (!(v15 & 1 | (([qword_2A1A11BE8 containsObject:v23] & 1) == 0)))
  {
    v28 = [v12 parentAccount];

    if (!v28)
    {
      if ((a4 - 1) > 1)
      {
        v44 = 0;
        v41 = 0;
        v40 = 0;
      }

      else
      {
        v44 = [v8 isEnabledForDataclass:v45];
        BYTE4(v41) = [v8 isEnabledForDataclass:*MEMORY[0x29EDB8470]];
        LOBYTE(v41) = [v8 isEnabledForDataclass:*MEMORY[0x29EDB8488]];
        v40 = [v8 isEnabledForDataclass:*MEMORY[0x29EDB84A8]];
      }

      if (a4 == 3)
      {
        v32 = v10;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v33 = 1;
      }

      else if (a4 == 2)
      {
        v29 = [v10 isEnabledForDataclass:v45];
        v30 = [v10 isEnabledForDataclass:*MEMORY[0x29EDB8470]];
        v31 = [v10 isEnabledForDataclass:*MEMORY[0x29EDB8488]];
        v32 = v10;
        v33 = [v10 isEnabledForDataclass:*MEMORY[0x29EDB84A8]];
      }

      else
      {
        v32 = v10;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v33 = 0;
      }

      v34 = [v12 accountType];
      v35 = [v34 accountTypeDescription];

      v36 = [v12 accountDescription];
      serialQueue = self->_serialQueue;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = sub_29C8E92D8;
      block[3] = &unk_29F330FE0;
      v50 = v44;
      v51 = v29;
      v48 = v35;
      v49 = v36;
      v52 = BYTE4(v41);
      v53 = v30;
      v54 = v41;
      v55 = v31;
      v56 = v40;
      v57 = v33;
      v38 = v36;
      v39 = v35;
      dispatch_async(serialQueue, block);

      v10 = v32;
    }
  }
}

@end