@interface _BCTransactionProxy
- (BCSceneControlling)destinationSceneController;
- (_BCTransactionProxy)initWithTransaction:(id)transaction;
- (void)dealloc;
@end

@implementation _BCTransactionProxy

- (_BCTransactionProxy)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = _BCTransactionProxy;
  v6 = [(_BCTransactionProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
  }

  return v7;
}

- (void)dealloc
{
  [(_BCTransactionProxy *)self finalize];
  v3.receiver = self;
  v3.super_class = _BCTransactionProxy;
  [(_BCTransactionProxy *)&v3 dealloc];
}

- (BCSceneControlling)destinationSceneController
{
  targetSceneController = [(_BCTransactionProxy *)self targetSceneController];
  v4 = targetSceneController;
  if (targetSceneController)
  {
    originatingSceneController = targetSceneController;
  }

  else
  {
    originatingSceneController = [(_BCTransactionProxy *)self originatingSceneController];
  }

  v6 = originatingSceneController;

  return v6;
}

@end