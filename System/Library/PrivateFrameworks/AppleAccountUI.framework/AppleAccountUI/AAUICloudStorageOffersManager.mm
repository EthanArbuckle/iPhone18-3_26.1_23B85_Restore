@interface AAUICloudStorageOffersManager
- (void)manager:(id)manager didCompleteWithError:(id)error;
- (void)manager:(id)manager loadDidFailWithError:(id)error;
- (void)managerDidCancel:(id)cancel;
- (void)presentCloudStorageOffersPageFromNavigationController:(id)controller requiredStorageThreshold:(id)threshold completionHandler:(id)handler;
@end

@implementation AAUICloudStorageOffersManager

- (void)presentCloudStorageOffersPageFromNavigationController:(id)controller requiredStorageThreshold:(id)threshold completionHandler:(id)handler
{
  thresholdCopy = threshold;
  handlerCopy = handler;
  v9 = MEMORY[0x1E69C56E8];
  controllerCopy = controller;
  v11 = objc_alloc_init(v9);
  cloudStorageOffersManager = self->_cloudStorageOffersManager;
  self->_cloudStorageOffersManager = v11;

  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [thresholdCopy doubleValue];
    [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager setRequiredStorageThreshold:v13];
  }

  [(AAUICloudStorageOffersManager *)self setCompletionHandler:handlerCopy];
  [(PSCloudStorageOffersManager *)self->_cloudStorageOffersManager beginFlowWithNavigationController:controllerCopy modally:1];
}

- (void)manager:(id)manager loadDidFailWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, error);
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

- (void)managerDidCancel:(id)cancel
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

- (void)manager:(id)manager didCompleteWithError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, error);
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