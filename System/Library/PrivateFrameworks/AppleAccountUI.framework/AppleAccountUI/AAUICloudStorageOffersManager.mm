@interface AAUICloudStorageOffersManager
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)presentCloudStorageOffersPageFromNavigationController:(id)a3 requiredStorageThreshold:(id)a4 completionHandler:(id)a5;
@end

@implementation AAUICloudStorageOffersManager

- (void)presentCloudStorageOffersPageFromNavigationController:(id)a3 requiredStorageThreshold:(id)a4 completionHandler:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69C56E8];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = v11;

  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 doubleValue];
    [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setRequiredStorageThreshold:v13];
  }

  [(AAUICloudStorageOffersManager *)self setCompletionHandler:v8];
  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager beginFlowWithNavigationController:v10 modally:1];
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, a4);
    v6 = self->_completionHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_completionHandler = 0;

  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = 0;
}

- (void)managerDidCancel:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 1, 0);
    v5 = self->_completionHandler;
  }

  else
  {
    v5 = 0;
  }

  self->_completionHandler = 0;

  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = 0;
}

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, a4);
    v6 = self->_completionHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_completionHandler = 0;

  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = 0;
}

@end