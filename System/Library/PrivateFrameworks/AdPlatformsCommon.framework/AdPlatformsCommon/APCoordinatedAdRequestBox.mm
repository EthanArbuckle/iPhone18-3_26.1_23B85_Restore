@interface APCoordinatedAdRequestBox
- (APCoordinatedAdRequestBox)initWithDelegate:(id)delegate contents:(id)contents handler:(id)handler;
@end

@implementation APCoordinatedAdRequestBox

- (APCoordinatedAdRequestBox)initWithDelegate:(id)delegate contents:(id)contents handler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = APCoordinatedAdRequestBox;
  v11 = [(APCoordinatedRetryBox *)&v16 initWithType:0 delegate:delegate];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContents, contents);
    v13 = _Block_copy(handlerCopy);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

@end