@interface _TUITransactionAutoProxy
- (_TUITransactionAutoProxy)initWithTransaction:(id)transaction;
- (void)dealloc;
@end

@implementation _TUITransactionAutoProxy

- (_TUITransactionAutoProxy)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = _TUITransactionAutoProxy;
  v6 = [(_TUITransactionAutoProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tx, transaction);
  }

  return v7;
}

- (void)dealloc
{
  [(_TUITransaction *)self->_tx commit];
  v3.receiver = self;
  v3.super_class = _TUITransactionAutoProxy;
  [(_TUITransactionAutoProxy *)&v3 dealloc];
}

@end