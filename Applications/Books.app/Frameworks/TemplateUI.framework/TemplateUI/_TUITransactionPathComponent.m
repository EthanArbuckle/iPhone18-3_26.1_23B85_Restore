@interface _TUITransactionPathComponent
- (_TUITransactionPathComponent)initWithTransaction:(id)a3 enumerator:(id)a4;
@end

@implementation _TUITransactionPathComponent

- (_TUITransactionPathComponent)initWithTransaction:(id)a3 enumerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _TUITransactionPathComponent;
  v9 = [(_TUITransactionPathComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, a3);
    objc_storeStrong(&v10->_enumerator, a4);
  }

  return v10;
}

@end