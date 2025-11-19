@interface _TUISyncLayoutAssertion
- (NSString)description;
- (_TUISyncLayoutAssertion)initWithController:(id)a3 timeout:(double)a4 transaction:(id)a5 feedId:(id)a6;
- (void)_invalidate:(id)a3;
- (void)dealloc;
@end

@implementation _TUISyncLayoutAssertion

- (_TUISyncLayoutAssertion)initWithController:(id)a3 timeout:(double)a4 transaction:(id)a5 feedId:(id)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _TUISyncLayoutAssertion;
  v12 = [(_TUISyncLayoutAssertion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_controller, v10);
    v13->_timeout = a4;
    objc_storeStrong(&v13->_transaction, a5);
    v13->_feedId.uniqueIdentifier = a6.var0;
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

- (void)_invalidate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  objc_storeWeak(&self->_controller, 0);
  [WeakRetained removeAssertion:v4];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p timeout=%f tx=%@ feedId=%lu>", v4, self, *&self->_timeout, self->_transaction, self->_feedId.uniqueIdentifier];

  return v5;
}

@end