@interface _AFAssertionProxy
- (NSString)description;
- (_AFAssertionProxy)initWithImpl:(id)impl coordinator:(id)coordinator;
- (void)dealloc;
- (void)relinquishWithContext:(id)context options:(unint64_t)options;
- (void)relinquishWithError:(id)error options:(unint64_t)options;
@end

@implementation _AFAssertionProxy

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = _AFAssertionProxy;
  v4 = [(_AFAssertionProxy *)&v8 description];
  v5 = _AFAssertionCreateDescriptionOfProperties(self->_impl);
  v6 = [v3 initWithFormat:@"%@ {%@}", v4, v5];

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  uuid = [(_AFAssertionImpl *)self->_impl uuid];
  v5 = [AFError errorWithCode:41];
  [WeakRetained relinquishAssertionWithUUID:uuid error:v5 options:0];

  v6.receiver = self;
  v6.super_class = _AFAssertionProxy;
  [(_AFAssertionProxy *)&v6 dealloc];
}

- (void)relinquishWithError:(id)error options:(unint64_t)options
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  uuid = [(_AFAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:uuid error:errorCopy options:options];
}

- (void)relinquishWithContext:(id)context options:(unint64_t)options
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  uuid = [(_AFAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:uuid context:contextCopy options:options];
}

- (_AFAssertionProxy)initWithImpl:(id)impl coordinator:(id)coordinator
{
  implCopy = impl;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _AFAssertionProxy;
  v9 = [(_AFAssertionProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_impl, impl);
    objc_storeWeak(&v10->_coordinator, coordinatorCopy);
  }

  return v10;
}

@end