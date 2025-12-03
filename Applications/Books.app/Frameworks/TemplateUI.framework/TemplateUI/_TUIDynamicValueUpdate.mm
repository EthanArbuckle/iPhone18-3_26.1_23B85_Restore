@interface _TUIDynamicValueUpdate
- (_TUIDynamicValueUpdate)initWithValue:(id)value transaction:(id)transaction;
- (void)dealloc;
@end

@implementation _TUIDynamicValueUpdate

- (_TUIDynamicValueUpdate)initWithValue:(id)value transaction:(id)transaction
{
  valueCopy = value;
  transactionCopy = transaction;
  v12.receiver = self;
  v12.super_class = _TUIDynamicValueUpdate;
  v9 = [(_TUIDynamicValueUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    objc_storeStrong(&v10->_transaction, transaction);
    [(_TUITransaction *)v10->_transaction addCompletionDeferral];
  }

  return v10;
}

- (void)dealloc
{
  [(_TUITransaction *)self->_transaction removeCompletionDeferral];
  v3.receiver = self;
  v3.super_class = _TUIDynamicValueUpdate;
  [(_TUIDynamicValueUpdate *)&v3 dealloc];
}

@end