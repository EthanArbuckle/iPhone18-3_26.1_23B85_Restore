@interface ADWeakWrapper
- (ADWeakWrapper)initWithWrapped:(id)a3;
- (id)wrapped;
@end

@implementation ADWeakWrapper

- (id)wrapped
{
  WeakRetained = objc_loadWeakRetained(&self->_wrapped);

  return WeakRetained;
}

- (ADWeakWrapper)initWithWrapped:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ADWeakWrapper;
  v5 = [(ADWeakWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrapped, v4);
  }

  return v6;
}

@end