@interface _BCTransactionProxy
- (BCSceneControlling)destinationSceneController;
- (_BCTransactionProxy)initWithTransaction:(id)a3;
- (void)dealloc;
@end

@implementation _BCTransactionProxy

- (_BCTransactionProxy)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _BCTransactionProxy;
  v6 = [(_BCTransactionProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
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
  v3 = [(_BCTransactionProxy *)self targetSceneController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_BCTransactionProxy *)self originatingSceneController];
  }

  v6 = v5;

  return v6;
}

@end