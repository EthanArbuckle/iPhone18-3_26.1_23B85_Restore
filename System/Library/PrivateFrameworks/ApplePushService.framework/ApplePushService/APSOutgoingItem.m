@interface APSOutgoingItem
- (APSOutgoingItem)initWithSendBlock:(id)a3 completionBlock:(id)a4 timeout:(double)a5;
@end

@implementation APSOutgoingItem

- (APSOutgoingItem)initWithSendBlock:(id)a3 completionBlock:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = APSOutgoingItem;
  v10 = [(APSOutgoingItem *)&v19 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSDate);
    timestamp = v10->_timestamp;
    v10->_timestamp = v11;

    v10->_timeout = a5;
    v13 = objc_retainBlock(v9);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v13;

    v15 = objc_retainBlock(v8);
    sendBlock = v10->_sendBlock;
    v10->_sendBlock = v15;

    sendInterface = v10->_sendInterface;
    v10->_sendInterface = 0;
  }

  return v10;
}

@end