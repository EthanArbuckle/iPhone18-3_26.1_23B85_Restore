@interface _TUITransactionPathComponent
- (_TUITransactionPathComponent)initWithTransaction:(id)transaction enumerator:(id)enumerator;
@end

@implementation _TUITransactionPathComponent

- (_TUITransactionPathComponent)initWithTransaction:(id)transaction enumerator:(id)enumerator
{
  transactionCopy = transaction;
  enumeratorCopy = enumerator;
  v12.receiver = self;
  v12.super_class = _TUITransactionPathComponent;
  v9 = [(_TUITransactionPathComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, transaction);
    objc_storeStrong(&v10->_enumerator, enumerator);
  }

  return v10;
}

@end