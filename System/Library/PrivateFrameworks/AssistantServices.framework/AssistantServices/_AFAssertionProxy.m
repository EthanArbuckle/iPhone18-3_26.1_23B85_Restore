@interface _AFAssertionProxy
- (NSString)description;
- (_AFAssertionProxy)initWithImpl:(id)a3 coordinator:(id)a4;
- (void)dealloc;
- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4;
- (void)relinquishWithError:(id)a3 options:(unint64_t)a4;
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
  v4 = [(_AFAssertionImpl *)self->_impl uuid];
  v5 = [AFError errorWithCode:41];
  [WeakRetained relinquishAssertionWithUUID:v4 error:v5 options:0];

  v6.receiver = self;
  v6.super_class = _AFAssertionProxy;
  [(_AFAssertionProxy *)&v6 dealloc];
}

- (void)relinquishWithError:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = [(_AFAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:v7 error:v6 options:a4];
}

- (void)relinquishWithContext:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = [(_AFAssertionImpl *)self->_impl uuid];
  [WeakRetained relinquishAssertionWithUUID:v7 context:v6 options:a4];
}

- (_AFAssertionProxy)initWithImpl:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _AFAssertionProxy;
  v9 = [(_AFAssertionProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_impl, a3);
    objc_storeWeak(&v10->_coordinator, v8);
  }

  return v10;
}

@end