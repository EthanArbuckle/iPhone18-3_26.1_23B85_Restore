@interface APSOutgoingItem
- (APSOutgoingItem)initWithSendBlock:(id)block completionBlock:(id)completionBlock timeout:(double)timeout;
@end

@implementation APSOutgoingItem

- (APSOutgoingItem)initWithSendBlock:(id)block completionBlock:(id)completionBlock timeout:(double)timeout
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v19.receiver = self;
  v19.super_class = APSOutgoingItem;
  v10 = [(APSOutgoingItem *)&v19 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSDate);
    timestamp = v10->_timestamp;
    v10->_timestamp = v11;

    v10->_timeout = timeout;
    v13 = objc_retainBlock(completionBlockCopy);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v13;

    v15 = objc_retainBlock(blockCopy);
    sendBlock = v10->_sendBlock;
    v10->_sendBlock = v15;

    sendInterface = v10->_sendInterface;
    v10->_sendInterface = 0;
  }

  return v10;
}

@end