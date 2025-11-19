@interface CloudPairingAccountNotificationPlugin
- (id)daemonConection;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
- (void)account:(id)a3 didPerformActionsForDataclasses:(id)a4;
- (void)accountModified;
@end

@implementation CloudPairingAccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v26 = a4;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] changeType: %d oldAccount: %@ account: %@", buf, 0x1Cu);
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;
  v15 = [v14 accountType];
  v16 = [v15 identifier];
  v17 = [v16 isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v17)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C89EF64;
    block[3] = &unk_29F32D180;
    v24 = a4;
    v20 = v10;
    v21 = v14;
    v22 = v12;
    v23 = self;
    dispatch_async(MEMORY[0x29EDCA578], block);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] No Apple Account Identifier Found", buf, 2u);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)account:(id)a3 didPerformActionsForDataclasses:(id)a4
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] didPerformActionsForDataclasses: %@ for account: %@", &v9, 0x16u);
  }

  if ((([v7 containsObject:*MEMORY[0x29EDB8090]] & 1) != 0 || (objc_msgSend(v7, "containsObject:", *MEMORY[0x29EDB8150]) & 1) != 0 || (objc_msgSend(v7, "containsObject:", *MEMORY[0x29EDB8098]) & 1) != 0 || (objc_msgSend(v7, "containsObject:", *MEMORY[0x29EDB8180]) & 1) != 0 || objc_msgSend(v7, "containsObject:", *MEMORY[0x29EDB8108])) && objc_msgSend(v6, "isActive") && objc_msgSend(v6, "isAuthenticated"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] interested account properties changed: %@ for account: %@", &v9, 0x16u);
    }

    [(CloudPairingAccountNotificationPlugin *)self accountModified];
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (id)daemonConection
{
  v3 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];

  if (v3)
  {
LABEL_6:
    v10 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    goto LABEL_7;
  }

  v4 = dispatch_get_global_queue(2, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", v4, 2uLL);
  [(CloudPairingAccountNotificationPlugin *)self setCloudKitConnection:mach_service];

  v6 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];

  v7 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] Got to connect to cloudpaird", v12, 2u);
    }

    v8 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    xpc_connection_set_event_handler(v8, &unk_2A23D1A48);

    v9 = [(CloudPairingAccountNotificationPlugin *)self cloudKitConnection];
    xpc_connection_resume(v9);

    goto LABEL_6;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_29C89E000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "[BluetoothUserAccountPlugin] Failed to connect to cloudpaird", buf, 2u);
  }

  v10 = 0;
LABEL_7:

  return v10;
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
  v4 = [(CloudPairingAccountNotificationPlugin *)self daemonConection];

  if (v4)
  {
    v5 = [(CloudPairingAccountNotificationPlugin *)self daemonConection];
    xpc_connection_send_message(v5, v3);
  }
}

@end