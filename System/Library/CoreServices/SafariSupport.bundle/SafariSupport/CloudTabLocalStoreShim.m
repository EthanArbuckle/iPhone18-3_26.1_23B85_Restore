@interface CloudTabLocalStoreShim
- (CloudTabLocalStoreDelegate)delegate;
- (CloudTabLocalStoreShim)initWithCloudTabLocalStore:(id)a3;
- (void)closeDatabaseWithCompletionHandler:(id)a3;
- (void)cloudTabLocalStore:(id)a3 hadSevereError:(id)a4;
- (void)cloudTabLocalStoreDidOpen:(id)a3;
- (void)deleteDatabaseWithCompletionHandler:(id)a3;
- (void)deleteRecordsWithPrimaryKeys:(id)a3 completionHandler:(id)a4;
- (void)getServerChangeTokenDataWithCompletionHandler:(id)a3;
- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)a3;
- (void)loadCloudTabDataWithCompletionHandler:(id)a3;
- (void)loadCloudTabDeviceWithUUIDString:(id)a3 completionHandler:(id)a4;
- (void)openDatabaseIfNecessary;
- (void)saveCloudTabDevices:(id)a3 tabs:(id)a4 closeRequests:(id)a5 completionHandler:(id)a6;
- (void)setServerChangeTokenData:(id)a3 completionHandler:(id)a4;
@end

@implementation CloudTabLocalStoreShim

- (void)openDatabaseIfNecessary
{
  if (!self->_disabled)
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore openDatabaseIfNecessary];
  }
}

- (CloudTabLocalStoreShim)initWithCloudTabLocalStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CloudTabLocalStoreShim;
  v6 = [(CloudTabLocalStoreShim *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudTabLocalStore, a3);
    [(CloudTabLocalStore *)v7->_cloudTabLocalStore setDelegate:v7];
    v8 = v7;
  }

  return v7;
}

- (void)closeDatabaseWithCompletionHandler:(id)a3
{
  if (self->_disabled)
  {
    (*(a3 + 2))(a3);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore closeDatabaseWithCompletionHandler:a3];
  }
}

- (void)deleteDatabaseWithCompletionHandler:(id)a3
{
  if (self->_disabled)
  {
    (*(a3 + 2))(a3);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore deleteDatabaseWithCompletionHandler:a3];
  }
}

- (void)loadCloudTabDataWithCompletionHandler:(id)a3
{
  if (self->_disabled)
  {
    (*(a3 + 2))(a3, 0, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore loadCloudTabDataWithCompletionHandler:a3];
  }
}

- (void)loadCloudTabDeviceWithUUIDString:(id)a3 completionHandler:(id)a4
{
  if (self->_disabled)
  {
    (*(a4 + 2))(a4, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore loadCloudTabDeviceWithUUIDString:a3 completionHandler:a4];
  }
}

- (void)deleteRecordsWithPrimaryKeys:(id)a3 completionHandler:(id)a4
{
  if (self->_disabled)
  {
    (*(a4 + 2))(a4, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore deleteRecordsWithPrimaryKeys:a3 completionHandler:a4];
  }
}

- (void)saveCloudTabDevices:(id)a3 tabs:(id)a4 closeRequests:(id)a5 completionHandler:(id)a6
{
  if (self->_disabled)
  {
    (*(a6 + 2))(a6, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore saveCloudTabDevices:a3 tabs:a4 closeRequests:a5 completionHandler:a6];
  }
}

- (void)getServerChangeTokenDataWithCompletionHandler:(id)a3
{
  if (self->_disabled)
  {
    (*(a3 + 2))(a3, 0);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore getServerChangeTokenDataWithCompletionHandler:a3];
  }
}

- (void)setServerChangeTokenData:(id)a3 completionHandler:(id)a4
{
  if (self->_disabled)
  {
    (*(a4 + 2))(a4, 101);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore setServerChangeTokenData:a3 completionHandler:a4];
  }
}

- (void)getUseManateeContainerForSyncingWithCompletionHandler:(id)a3
{
  if (self->_disabled)
  {
    (*(a3 + 2))(a3, 1, 14);
  }

  else
  {
    [(CloudTabLocalStore *)self->_cloudTabLocalStore getUseManateeContainerForSyncingWithCompletionHandler:a3];
  }
}

- (void)cloudTabLocalStore:(id)a3 hadSevereError:(id)a4
{
  v5 = a4;
  if (!self->_disabled)
  {
    v7 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained cloudTabLocalStore:self hadSevereError:v7];
    }

    v5 = v7;
  }
}

- (void)cloudTabLocalStoreDidOpen:(id)a3
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