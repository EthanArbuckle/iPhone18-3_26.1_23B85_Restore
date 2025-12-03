@interface NCWidgetController
+ (NCWidgetController)widgetController;
+ (id)widgetContentUnavailableViewWithButtonTitle:(id)title buttonAction:(id)action;
+ (id)widgetContentUnavailableViewWithTitle:(id)title;
- (id)_connectionForRequest;
- (void)__didReceiveHasContentRequest;
- (void)_invalidateConnection;
- (void)dealloc;
- (void)requestRefreshAfterDate:(id)date forWidgetWithBundleIdentifier:(id)identifier;
@end

@implementation NCWidgetController

+ (NCWidgetController)widgetController
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)widgetContentUnavailableViewWithTitle:(id)title
{
  titleCopy = title;
  v4 = [_NCContentUnavailableView alloc];
  v5 = [(_UIContentUnavailableView *)v4 initWithFrame:titleCopy title:0 style:0 includeBackdrop:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v5;
}

+ (id)widgetContentUnavailableViewWithButtonTitle:(id)title buttonAction:(id)action
{
  actionCopy = action;
  titleCopy = title;
  v7 = [[_NCContentUnavailableViewWithButton alloc] initWithTitle:titleCopy buttonAction:actionCopy];

  return v7;
}

- (void)dealloc
{
  [(NCWidgetController *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = NCWidgetController;
  [(NCWidgetController *)&v3 dealloc];
}

- (void)_invalidateConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (id)_connectionForRequest
{
  v3 = +[_NCWidgetControllerRequestLimiter sharedInstance];
  isRequestPermitted = [v3 isRequestPermitted];

  if (isRequestPermitted)
  {
    connection = self->_connection;
    if (!connection)
    {
      [(NCWidgetController *)self _setStrongReference:self];
      v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.notificationcenter.widgetcontrollerconnection" options:0];
      v7 = self->_connection;
      self->_connection = v6;

      v8 = self->_connection;
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284064680];
      [(NSXPCConnection *)v8 setExportedInterface:v9];

      v10 = self->_connection;
      v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284067FE8];
      [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

      [(NSXPCConnection *)self->_connection setExportedObject:self];
      objc_initWeak(&location, self);
      v12 = self->_connection;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__NCWidgetController__connectionForRequest__block_invoke;
      v18[3] = &unk_278750AE0;
      objc_copyWeak(&v19, &location);
      [(NSXPCConnection *)v12 setInterruptionHandler:v18];
      v13 = self->_connection;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__NCWidgetController__connectionForRequest__block_invoke_3;
      v16[3] = &unk_278750AE0;
      objc_copyWeak(&v17, &location);
      [(NSXPCConnection *)v13 setInvalidationHandler:v16];
      [(NSXPCConnection *)self->_connection resume];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      connection = self->_connection;
    }

    v14 = connection;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __43__NCWidgetController__connectionForRequest__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NCWidgetController__connectionForRequest__block_invoke_2;
  block[3] = &unk_278750AE0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __43__NCWidgetController__connectionForRequest__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
  [WeakRetained _setStrongReference:0];
}

void __43__NCWidgetController__connectionForRequest__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NCWidgetController__connectionForRequest__block_invoke_4;
  block[3] = &unk_278750AE0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __43__NCWidgetController__connectionForRequest__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
  [WeakRetained _setStrongReference:0];
}

void __66__NCWidgetController_setHasContent_forWidgetWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NCWidgetController_setHasContent_forWidgetWithBundleIdentifier___block_invoke_2;
    block[3] = &unk_278750C78;
    v5 = *(a1 + 32);
    v6 = v3;
    objc_copyWeak(&v7, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
  }
}

void __66__NCWidgetController_setHasContent_forWidgetWithBundleIdentifier___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_EncounteredErr.isa, *(a1 + 32), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _invalidateConnection];
}

- (void)requestRefreshAfterDate:(id)date forWidgetWithBundleIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  _connectionForRequest = [(NCWidgetController *)self _connectionForRequest];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NCWidgetController_requestRefreshAfterDate_forWidgetWithBundleIdentifier___block_invoke;
  v11[3] = &unk_278750CA0;
  v9 = identifierCopy;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  v10 = [_connectionForRequest remoteObjectProxyWithErrorHandler:v11];
  [v10 __requestRefreshAfterDate:dateCopy forWidgetWithBundleIdentifier:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__NCWidgetController_requestRefreshAfterDate_forWidgetWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NCWidgetController_requestRefreshAfterDate_forWidgetWithBundleIdentifier___block_invoke_2;
    block[3] = &unk_278750C78;
    v5 = *(a1 + 32);
    v6 = v3;
    objc_copyWeak(&v7, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
  }
}

void __76__NCWidgetController_requestRefreshAfterDate_forWidgetWithBundleIdentifier___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_EncounteredErr_0.isa, *(a1 + 32), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _invalidateConnection];
}

- (void)__didReceiveHasContentRequest
{
  objc_initWeak(&location, self);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NCWidgetController___didReceiveHasContentRequest__block_invoke;
  block[3] = &unk_278750CC8;
  objc_copyWeak(&v6, &location);
  v5 = currentConnection;
  v3 = currentConnection;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__NCWidgetController___didReceiveHasContentRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  v4 = [WeakRetained _connection];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    [v5 _invalidateConnection];
  }
}

@end