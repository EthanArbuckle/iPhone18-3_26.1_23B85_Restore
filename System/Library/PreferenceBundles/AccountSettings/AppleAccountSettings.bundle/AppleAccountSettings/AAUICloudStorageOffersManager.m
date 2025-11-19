@interface AAUICloudStorageOffersManager
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)presentCloudStorageOffersPageFromNavigationController:(id)a3 requiredStorageThreshold:(id)a4 completionHandler:(id)a5;
@end

@implementation AAUICloudStorageOffersManager

- (void)presentCloudStorageOffersPageFromNavigationController:(id)a3 requiredStorageThreshold:(id)a4 completionHandler:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(PSCloudStorageOffersManager);
  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = v10;

  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 doubleValue];
    [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setRequiredStorageThreshold:v12];
  }

  [(AAUICloudStorageOffersManager *)self setCompletionHandler:v8];
  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager beginFlowWithNavigationController:v9 modally:1];
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