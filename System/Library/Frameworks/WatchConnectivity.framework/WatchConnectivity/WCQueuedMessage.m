@interface WCQueuedMessage
- (WCQueuedMessage)initWithMessage:(id)a3 completionHandler:(id)a4;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation WCQueuedMessage

- (WCQueuedMessage)initWithMessage:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WCQueuedMessage;
  v9 = [(WCQueuedMessage *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_retryCount = 0;
    objc_storeStrong(&v9->_message, a3);
    v11 = objc_opt_new();
    creationDate = v10->_creationDate;
    v10->_creationDate = v11;

    v13 = [v8 copy];
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
  v6 = [(WCQueuedMessage *)self message];
  v7 = [v6 identifier];
  v8 = [(WCQueuedMessage *)self creationDate];
  v9 = [v3 stringWithFormat:@"<%@: %p, message id: %@, creation date: %@>", v5, self, v7, v8];

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WCQueuedMessage *)self creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

@end