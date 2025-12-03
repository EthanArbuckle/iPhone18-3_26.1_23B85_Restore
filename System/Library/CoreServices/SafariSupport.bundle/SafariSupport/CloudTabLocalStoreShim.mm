@interface CloudTabLocalStoreShim
- (CloudTabLocalStoreDelegate)delegate;
- (CloudTabLocalStoreShim)initWithCloudTabLocalStore:(id)store;
- (void)closeDatabaseWithCompletionHandler:(id)handler;
- (void)cloudTabLocalStore:(id)store hadSevereError:(id)error;
- (void)cloudTabLocalStoreDidOpen:(id)open;
- (void)deleteDatabaseWithCompletionHandler:(id)handler;
- (void)deleteRecordsWithPrimaryKeys:(id)keys completionHandler:(id)handler;
- (void)getServerChangeTokenDataWithCompletionHandler:(id)handler;
- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)handler;
- (void)loadCloudTabDataWithCompletionHandler:(id)handler;
- (void)loadCloudTabDeviceWithUUIDString:(id)string completionHandler:(id)handler;
- (void)openDatabaseIfNecessary;
- (void)saveCloudTabDevices:(id)devices tabs:(id)tabs closeRequests:(id)requests completionHandler:(id)handler;
- (void)setServerChangeTokenData:(id)data completionHandler:(id)handler;
@end

@implementation CloudTabLocalStoreShim

- (void)openDatabaseIfNecessary
{
  if (!self->_disabled)
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore openDatabaseIfNecessary];
  }
}

- (CloudTabLocalStoreShim)initWithCloudTabLocalStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CloudTabLocalStoreShim;
  v6 = [(CloudTabLocalStoreShim *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudTabLocalStore, store);
    [(CloudTabLocalStore *)v7->_cloudTabLocalStore setDelegate:v7];
    v8 = v7;
  }

  return v7;
}

- (void)closeDatabaseWithCompletionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore closeDatabaseWithCompletionHandler:handler];
  }
}

- (void)deleteDatabaseWithCompletionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore deleteDatabaseWithCompletionHandler:handler];
  }
}

- (void)loadCloudTabDataWithCompletionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 0, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore loadCloudTabDataWithCompletionHandler:handler];
  }
}

- (void)loadCloudTabDeviceWithUUIDString:(id)string completionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore loadCloudTabDeviceWithUUIDString:string completionHandler:handler];
  }
}

- (void)deleteRecordsWithPrimaryKeys:(id)keys completionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore deleteRecordsWithPrimaryKeys:keys completionHandler:handler];
  }
}

- (void)saveCloudTabDevices:(id)devices tabs:(id)tabs closeRequests:(id)requests completionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore saveCloudTabDevices:devices tabs:tabs closeRequests:requests completionHandler:handler];
  }
}

- (void)getServerChangeTokenDataWithCompletionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore getServerChangeTokenDataWithCompletionHandler:handler];
  }
}

- (void)setServerChangeTokenData:(id)data completionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore setServerChangeTokenData:data completionHandler:handler];
  }
}

- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)handler
{
  if (self->_disabled)
  {
    (*(handler + 2))(handler, 1, 14);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore getUseManateeContainerForSyncingWithCompletionHandler:handler];
  }
}

- (void)cloudTabLocalStore:(id)store hadSevereError:(id)error
{
  errorCopy = error;
  if (!self->_disabled)
  {
    v7 = errorCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained cloudTabLocalStore:self hadSevereError:v7];
    }

    errorCopy = v7;
  }
}

- (void)cloudTabLocalStoreDidOpen:(id)open
{
  if (!self->_disabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained cloudTabLocalStoreDidOpen:self];
    }
  }
}

- (CloudTabLocalStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end