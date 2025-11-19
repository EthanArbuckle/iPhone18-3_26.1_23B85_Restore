@interface DAAccountChangeUpdaterACDAccountStoreWrapper
- (DAAccountChangeUpdaterACDAccountStoreWrapper)initWithAccount:(id)a3 store:(id)a4;
- (void)addAccount:(id)a3 withCompletionHandler:(id)a4;
- (void)removeAccount:(id)a3 completion:(id)a4;
- (void)updateAccount:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation DAAccountChangeUpdaterACDAccountStoreWrapper

- (DAAccountChangeUpdaterACDAccountStoreWrapper)initWithAccount:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DAAccountChangeUpdaterACDAccountStoreWrapper;
  v9 = [(DAAccountChangeUpdaterACDAccountStoreWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_store, a4);
  }

  return v10;
}

- (void)addAccount:(id)a3 withCompletionHandler:(id)a4
{
  store = self->_store;
  v9 = 0;
  v6 = a4;
  objc_msgSend_addAccountNoSave_error_(store, v7, a3, &v9);
  v8 = v9;
  v6[2](v6, v8 == 0, v8);
}

- (void)updateAccount:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_identifier(v6, v8, v9, v10);
  v15 = objc_msgSend_identifier(self->_account, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v16, v15, v17);

  if (isEqualToString)
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    store = self->_store;
    v22 = 0;
    objc_msgSend_updateAccountNoSave_error_(store, v19, v6, &v22);
    v21 = v22;
    (v7)[2](v7, v21 == 0, v21);
  }
}

- (void)removeAccount:(id)a3 completion:(id)a4
{
  store = self->_store;
  v9 = 0;
  v6 = a4;
  objc_msgSend_deleteAccountNoSave_error_(store, v7, a3, &v9);
  v8 = v9;
  v6[2](v6, v8 == 0, v8);
}

@end