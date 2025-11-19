@interface _ListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_ListenerDelegate)initWithService:(id)a3 queue:(id)a4;
- (id)makeServiceAuthorizationCheck;
@end

@implementation _ListenerDelegate

- (_ListenerDelegate)initWithService:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _ListenerDelegate;
  v9 = [(_ListenerDelegate *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = [(_ListenerDelegate *)v10 makeServiceAuthorizationCheck];
    serviceAuthorizationCheck = v10->_serviceAuthorizationCheck;
    v10->_serviceAuthorizationCheck = v11;

    v13 = v10;
  }

  return v10;
}

- (id)makeServiceAuthorizationCheck
{
  v2 = [CNContactsAPIServiceAuthorizationCheck alloc];
  v3 = +[CNContactPosterDataStore log];
  v4 = [(CNContactsAPIServiceAuthorizationCheck *)v2 initWithLog:v3];

  [(CNContactsAPIServiceAuthorizationCheck *)v4 setRequireTCCApprovalForContactProviders:1];

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerDelegate listener:v5 shouldAcceptNewConnection:?];
  }

  v7 = [(CNContactsAPIServiceAuthorizationCheck *)self->_serviceAuthorizationCheck isAuthorized:v5];
  v8 = +[CNContactPosterDataStore log];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_ListenerDelegate listener:v5 shouldAcceptNewConnection:?];
    }

    v10 = +[CNContactPosterDataXPCService interface];
    [v5 setExportedInterface:v10];

    [v5 setExportedObject:self->_service];
    [v5 _setQueue:self->_queue];
    [v5 resume];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ListenerDelegate listener:v5 shouldAcceptNewConnection:v9];
    }

    [v5 invalidate];
  }

  return v7;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Rejecting connection from %d", v3, 8u);
}

@end