@interface SORequestQueueItem
- (SORequestQueueItem)initWithService:(id)service requestParameters:(id)parameters completionBlock:(id)block;
@end

@implementation SORequestQueueItem

- (SORequestQueueItem)initWithService:(id)service requestParameters:(id)parameters completionBlock:(id)block
{
  serviceCopy = service;
  parametersCopy = parameters;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = SORequestQueueItem;
  v12 = [(SORequestQueueItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_requestParameters, parameters);
    v14 = MEMORY[0x1C68F1C40](blockCopy);
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;

    v13->_isRunning = 0;
  }

  return v13;
}

@end