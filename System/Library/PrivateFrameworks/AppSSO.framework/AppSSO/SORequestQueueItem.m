@interface SORequestQueueItem
- (SORequestQueueItem)initWithService:(id)a3 requestParameters:(id)a4 completionBlock:(id)a5;
@end

@implementation SORequestQueueItem

- (SORequestQueueItem)initWithService:(id)a3 requestParameters:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SORequestQueueItem;
  v12 = [(SORequestQueueItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, a3);
    objc_storeStrong(&v13->_requestParameters, a4);
    v14 = MEMORY[0x1C68F1C40](v11);
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;

    v13->_isRunning = 0;
  }

  return v13;
}

@end