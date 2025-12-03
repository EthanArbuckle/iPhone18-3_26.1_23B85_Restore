@interface DAAccountChangeUpdaterACDAccountStoreWrapper
- (DAAccountChangeUpdaterACDAccountStoreWrapper)initWithAccount:(id)account store:(id)store;
- (void)addAccount:(id)account withCompletionHandler:(id)handler;
- (void)removeAccount:(id)account completion:(id)completion;
- (void)updateAccount:(id)account withCompletionHandler:(id)handler;
@end

@implementation DAAccountChangeUpdaterACDAccountStoreWrapper

- (DAAccountChangeUpdaterACDAccountStoreWrapper)initWithAccount:(id)account store:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = DAAccountChangeUpdaterACDAccountStoreWrapper;
  v9 = [(DAAccountChangeUpdaterACDAccountStoreWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

- (void)addAccount:(id)account withCompletionHandler:(id)handler
{
  store = self->_store;
  v9 = 0;
  handlerCopy = handler;
  objc_msgSend_addAccountNoSave_error_(store, v7, account, &v9);
  v8 = v9;
  handlerCopy[2](handlerCopy, v8 == 0, v8);
}

- (void)updateAccount:(id)account withCompletionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v11 = objc_msgSend_identifier(accountCopy, v8, v9, v10);
  v15 = objc_msgSend_identifier(self->_account, v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v16, v15, v17);

  if (isEqualToString)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    store = self->_store;
    v22 = 0;
    objc_msgSend_updateAccountNoSave_error_(store, v19, accountCopy, &v22);
    v21 = v22;
    (handlerCopy)[2](handlerCopy, v21 == 0, v21);
  }
}

- (void)removeAccount:(id)account completion:(id)completion
{
  store = self->_store;
  v9 = 0;
  completionCopy = completion;
  objc_msgSend_deleteAccountNoSave_error_(store, v7, account, &v9);
  v8 = v9;
  completionCopy[2](completionCopy, v8 == 0, v8);
}

@end