@interface CloudPairingAccountNotificationPlugin
- (id)daemonConection;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (void)account:(id)account didPerformActionsForDataclasses:(id)dataclasses;
- (void)accountModified;
@end

@implementation CloudPairingAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v31 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    typeCopy = type;
    v27 = 2112;
    v28 = oldAccountCopy;
    v29 = 2112;
    v30 = accountCopy;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] changeType: %d oldAccount: %@ account: %@", buf, 0x1Cu);
  }

  if (accountCopy)
  {
    v13 = accountCopy;
  }

  else
  {
    v13 = oldAccountCopy;
  }

  v14 = v13;
  accountType = [v14 accountType];
  identifier = [accountType identifier];
  v17 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v17)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C89EF64;
    block[3] = &unk_29F32D180;
    typeCopy2 = type;
    v20 = accountCopy;
    v21 = v14;
    v22 = oldAccountCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x29EDCA578], block);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] No Apple Account Identifier Found", buf, 2u);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)account:(id)account didPerformActionsForDataclasses:(id)dataclasses
{
  v13 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  dataclassesCopy = dataclasses;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = dataclassesCopy;
    v11 = 2112;
    v12 = accountCopy;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] didPerformActionsForDataclasses: %@ for account: %@", &v9, 0x16u);
  }

  if ((([dataclassesCopy containsObject:*MEMORY[0x29EDB8090]] & 1) != 0 || (objc_msgSend(dataclassesCopy, "containsObject:", *MEMORY[0x29EDB8150]) & 1) != 0 || (objc_msgSend(dataclassesCopy, "containsObject:", *MEMORY[0x29EDB8098]) & 1) != 0 || (objc_msgSend(dataclassesCopy, "containsObject:", *MEMORY[0x29EDB8180]) & 1) != 0 || objc_msgSend(dataclassesCopy, "containsObject:", *MEMORY[0x29EDB8108])) && objc_msgSend(accountCopy, "isActive") && objc_msgSend(accountCopy, "isAuthenticated"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = dataclassesCopy;
      v11 = 2112;
      v12 = accountCopy;
      _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] interested account properties changed: %@ for account: %@", &v9, 0x16u);
    }

    [(CloudPairingAccountNotificationPlugin *)self accountModified];
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (id)daemonConection
{
  cloudKitConnection = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];

  if (cloudKitConnection)
  {
LABEL_6:
    cloudKitConnection2 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    goto LABEL_7;
  }

  v4 = dispatch_get_global_queue(2, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", v4, 2uLL);
  [(CloudPairingAccountNotificationPlugin *)self setCloudKitConnection:mach_service];

  cloudKitConnection3 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];

  v7 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
  if (cloudKitConnection3)
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] Got to connect to cloudpaird", v12, 2u);
    }

    cloudKitConnection4 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    xpc_connection_set_event_handler(cloudKitConnection4, &unk_2A23D1A48);

    cloudKitConnection5 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    xpc_connection_resume(cloudKitConnection5);

    goto LABEL_6;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] Failed to connect to cloudpaird", buf, 2u);
  }

  cloudKitConnection2 = 0;
LABEL_7:

  return cloudKitConnection2;
}

- (void)accountModified
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] primaryAccountModified", v6, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "kMsgId", [@"SignInStatusChanged" UTF8String]);
  daemonConection = [(CloudPairingAccountNotificationPlugin *)self daemonConection];

  if (daemonConection)
  {
    daemonConection2 = [(CloudPairingAccountNotificationPlugin *)self daemonConection];
    xpc_connection_send_message(daemonConection2, v3);
  }
}

@end