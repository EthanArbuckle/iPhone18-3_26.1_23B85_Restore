@interface WCQueuedMessage
- (WCQueuedMessage)initWithMessage:(id)message completionHandler:(id)handler;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation WCQueuedMessage

- (WCQueuedMessage)initWithMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = WCQueuedMessage;
  v9 = [(WCQueuedMessage *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_retryCount = 0;
    objc_storeStrong(&v9->_message, message);
    v11 = objc_opt_new();
    creationDate = v10->_creationDate;
    v10->_creationDate = v11;

    v13 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  message = [(WCQueuedMessage *)self message];
  identifier = [message identifier];
  creationDate = [(WCQueuedMessage *)self creationDate];
  v9 = [v3 stringWithFormat:@"<%@: %p, message id: %@, creation date: %@>", v5, self, identifier, creationDate];

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  creationDate = [(WCQueuedMessage *)self creationDate];
  creationDate2 = [compareCopy creationDate];

  v7 = [creationDate compare:creationDate2];
  return v7;
}

@end