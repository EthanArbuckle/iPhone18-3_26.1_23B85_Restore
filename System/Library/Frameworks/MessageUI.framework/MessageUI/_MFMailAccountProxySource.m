@interface _MFMailAccountProxySource
- (_MFMailAccountProxySource)init;
- (id)accountProxiesOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4;
- (void)_deregisterForNotifications_nts;
- (void)_registerForNotifications_nts;
- (void)_resetAccountsChanged:(BOOL)a3;
- (void)dealloc;
@end

@implementation _MFMailAccountProxySource

- (_MFMailAccountProxySource)init
{
  v6.receiver = self;
  v6.super_class = _MFMailAccountProxySource;
  v2 = [(_MFMailAccountProxySource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];
  [(_MFMailAccountProxySource *)self _deregisterForNotifications_nts];
  accountProxies = self->_accountProxies;
  self->_accountProxies = 0;

  [(NSLock *)self->_lock unlock];
  v4.receiver = self;
  v4.super_class = _MFMailAccountProxySource;
  [(_MFMailAccountProxySource *)&v4 dealloc];
}

- (id)accountProxiesOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (!self->_accountProxies || self->_lastSourceAccountManagementQueried != v4)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69ADA48], *MEMORY[0x1E69ADA78], *MEMORY[0x1E69ADAB8], *MEMORY[0x1E69ADA58], *MEMORY[0x1E69ADA60], *MEMORY[0x1E69ADA68], *MEMORY[0x1E69ADA70], *MEMORY[0x1E69ADA50], *MEMORY[0x1E69ADA88], *MEMORY[0x1E69ADA80], *MEMORY[0x1E69ADAA0], *MEMORY[0x1E69ADA98], *MEMORY[0x1E69ADAB0], *MEMORY[0x1E69ADAA8], *MEMORY[0x1E69ADA90], 0}];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = dispatch_semaphore_create(0);
    v10 = MEMORY[0x1E69ADAC0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87___MFMailAccountProxySource_accountProxiesOriginatingBundleID_sourceAccountManagement___block_invoke;
    v18[3] = &unk_1E806E738;
    v11 = v8;
    v19 = v11;
    v20 = v9;
    v12 = v9;
    [v10 accountValuesForKeys:v7 originatingBundleID:v6 sourceAccountManagement:v4 launchMobileMail:1 completionBlock:v18];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    accountProxies = self->_accountProxies;
    self->_accountProxies = v11;
    v14 = v11;

    self->_lastSourceAccountManagementQueried = v4;
  }

  [(_MFMailAccountProxySource *)self _registerForNotifications_nts];
  [(NSLock *)self->_lock unlock];
  v15 = self->_accountProxies;
  v16 = v15;

  return v15;
}

- (void)_resetAccountsChanged:(BOOL)a3
{
  [(NSLock *)self->_lock lock];
  [(_MFMailAccountProxySource *)self _deregisterForNotifications_nts];
  accountProxies = self->_accountProxies;
  self->_accountProxies = 0;

  [(NSLock *)self->_lock unlock];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"MFMailComposeControllerShouldReloadAccounts" object:0 userInfo:0];
}

- (void)_registerForNotifications_nts
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69B17E8];
  v3 = 136315394;
  v4 = v2;
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Failed to register for %s notifications: %u", &v3, 0x12u);
}

- (void)_deregisterForNotifications_nts
{
  if (self->_registeredForNotifications)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69B1558], 0);
    notify_cancel(self->_notifyToken);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

    self->_registeredForNotifications = 0;
  }
}

@end