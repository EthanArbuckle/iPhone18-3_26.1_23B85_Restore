@interface _TUISyncLayoutAssertion
- (NSString)description;
- (_TUISyncLayoutAssertion)initWithController:(id)controller timeout:(double)timeout transaction:(id)transaction feedId:(id)id;
- (void)_invalidate:(id)_invalidate;
- (void)dealloc;
@end

@implementation _TUISyncLayoutAssertion

- (_TUISyncLayoutAssertion)initWithController:(id)controller timeout:(double)timeout transaction:(id)transaction feedId:(id)id
{
  controllerCopy = controller;
  transactionCopy = transaction;
  v15.receiver = self;
  v15.super_class = _TUISyncLayoutAssertion;
  v12 = [(_TUISyncLayoutAssertion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_controller, controllerCopy);
    v13->_timeout = timeout;
    objc_storeStrong(&v13->_transaction, transaction);
    v13->_feedId.uniqueIdentifier = id.var0;
  }

  return v13;
}

- (void)dealloc
{
  [(_TUISyncLayoutAssertion *)self _invalidate:0];
  v3.receiver = self;
  v3.super_class = _TUISyncLayoutAssertion;
  [(_TUISyncLayoutAssertion *)&v3 dealloc];
}

- (void)_invalidate:(id)_invalidate
{
  _invalidateCopy = _invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  objc_storeWeak(&self->_controller, 0);
  [WeakRetained removeAssertion:_invalidateCopy];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p timeout=%f tx=%@ feedId=%lu>", v4, self, *&self->_timeout, self->_transaction, self->_feedId.uniqueIdentifier];

  return v5;
}

@end