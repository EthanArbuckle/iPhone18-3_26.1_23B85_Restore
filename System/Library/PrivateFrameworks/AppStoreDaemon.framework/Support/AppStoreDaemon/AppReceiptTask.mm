@interface AppReceiptTask
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation AppReceiptTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self || !*(&self->_account + 2))
  {
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
    v6 = *(&self->_account + 2);
    *(&self->_account + 2) = v5;
  }

  v7 = sub_10032F8D0([FetchReceiptTask alloc], *(&self->super._finished + 1));
  v8 = v7;
  if (v7)
  {
    *(v7 + 138) = *(&self->_logKey + 2);
  }

  v10 = *(&self->_revoked + 1);
  if (!v10)
  {
    Property = sub_1003D23D0(*(&self->super._finished + 1));
    v13 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v12, 16, 1);
    }

    v10 = Property;

    if (v10)
    {
      v15 = +[ACAccountStore ams_sharedAccountStore];
      if (v13)
      {
        v16 = objc_getProperty(v13, v14, 16, 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v10 = [v15 ams_iTunesAccountWithDSID:v17];
    }
  }

  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v9, v10, 50);
    v8[42] = BYTE2(self->_app);
    objc_setProperty_nonatomic_copy(v8, v18, *(&self->_account + 2), 90);
    objc_storeWeak((v8 + 66), self);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001F21D0;
  v21[3] = &unk_10051C6C0;
  v21[4] = self;
  v22 = v8;
  v23 = v4;
  v19 = v4;
  v20 = v8;
  [(Task *)self runAsyncSubTask:v20 completionHandler:v21];
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = ASDErrorWithDescription();
    (*(a4 + 2))(v5, 0, v6);
  }
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = ASDErrorWithDescription();
    (*(a4 + 2))(v5, 0, v6);
  }
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = ASDErrorWithDescription();
    (*(a4 + 2))(v5, 0, v6);
  }
}

@end