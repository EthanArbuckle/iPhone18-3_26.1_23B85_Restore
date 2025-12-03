@interface MobileSyncAccountNotificationObserver
- (MobileSyncAccountNotificationObserver)init;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
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

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v10 = oldAccountCopy;
  if (accountCopy)
  {
    v11 = accountCopy;
  }

  else
  {
    v11 = oldAccountCopy;
  }

  v12 = v11;
  accountType = [v12 accountType];
  supportedDataclasses = [accountType supportedDataclasses];
  v45 = *MEMORY[0x29EDB8480];
  if ([supportedDataclasses containsObject:?])
  {
    v15 = 0;
  }

  else
  {
    typeCopy = type;
    v43 = accountCopy;
    v16 = v10;
    accountType2 = [v12 accountType];
    supportedDataclasses2 = [accountType2 supportedDataclasses];
    if ([supportedDataclasses2 containsObject:*MEMORY[0x29EDB8488]])
    {
      v15 = 0;
    }

    else
    {
      accountType3 = [v12 accountType];
      supportedDataclasses3 = [accountType3 supportedDataclasses];
      v21 = [supportedDataclasses3 containsObject:*MEMORY[0x29EDB8470]];

      v15 = v21 ^ 1;
    }

    v10 = v16;
    accountCopy = v43;
    type = typeCopy;
  }

  if (qword_2A1A11BF0 != -1)
  {
    sub_29C8E941C();
  }

  accountType4 = [v12 accountType];
  identifier = [accountType4 identifier];

  parentAccount = [v12 parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [v12 parentAccount];
    accountType5 = [parentAccount2 accountType];
    identifier2 = [accountType5 identifier];

    identifier = identifier2;
  }

  if (!(v15 & 1 | (([qword_2A1A11BE8 containsObject:identifier] & 1) == 0)))
  {
    parentAccount3 = [v12 parentAccount];

    if (!parentAccount3)
    {
      if ((type - 1) > 1)
      {
        v44 = 0;
        v41 = 0;
        v40 = 0;
      }

      else
      {
        v44 = [accountCopy isEnabledForDataclass:v45];
        BYTE4(v41) = [accountCopy isEnabledForDataclass:*MEMORY[0x29EDB8470]];
        LOBYTE(v41) = [accountCopy isEnabledForDataclass:*MEMORY[0x29EDB8488]];
        v40 = [accountCopy isEnabledForDataclass:*MEMORY[0x29EDB84A8]];
      }

      if (type == 3)
      {
        v32 = v10;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v33 = 1;
      }

      else if (type == 2)
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

      accountType6 = [v12 accountType];
      accountTypeDescription = [accountType6 accountTypeDescription];

      accountDescription = [v12 accountDescription];
      serialQueue = self->_serialQueue;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = sub_29C8E92D8;
      block[3] = &unk_29F330FE0;
      v50 = v44;
      v51 = v29;
      v48 = accountTypeDescription;
      v49 = accountDescription;
      v52 = BYTE4(v41);
      v53 = v30;
      v54 = v41;
      v55 = v31;
      v56 = v40;
      v57 = v33;
      v38 = accountDescription;
      v39 = accountTypeDescription;
      dispatch_async(serialQueue, block);

      v10 = v32;
    }
  }
}

@end