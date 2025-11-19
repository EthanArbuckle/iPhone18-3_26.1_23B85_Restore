@interface APCoordinatedAdRequestBox
- (APCoordinatedAdRequestBox)initWithDelegate:(id)a3 contents:(id)a4 handler:(id)a5;
@end

@implementation APCoordinatedAdRequestBox

- (APCoordinatedAdRequestBox)initWithDelegate:(id)a3 contents:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = APCoordinatedAdRequestBox;
  v11 = [(APCoordinatedRetryBox *)&v16 initWithType:0 delegate:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestContents, a4);
    v13 = _Block_copy(v10);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v13;
  }

  return v12;
}

@end