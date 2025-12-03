@interface CXInProcessProvider
- (CXInProcessCallSource)callSource;
- (CXInProcessProvider)initWithConfiguration:(id)configuration callSource:(id)source;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation CXInProcessProvider

- (CXInProcessProvider)initWithConfiguration:(id)configuration callSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = CXInProcessProvider;
  v7 = [(CXProvider *)&v13 initWithConfiguration:configuration];
  if (v7)
  {
    identifier = [sourceCopy identifier];
    v9 = [identifier copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = objc_storeWeak(&v7->_callSource, sourceCopy);
    [sourceCopy setProvider:v7];

    [(CXProvider *)v7 registerCurrentConfiguration];
  }

  return v7;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v6.receiver = self;
  v6.super_class = CXInProcessProvider;
  [(CXProvider *)&v6 setDelegate:delegate queue:queue];
  abstractProvider = [(CXProvider *)self abstractProvider];
  [abstractProvider sendDidBeginForProvider:self];
}

- (CXInProcessCallSource)callSource
{
  WeakRetained = objc_loadWeakRetained(&self->_callSource);

  return WeakRetained;
}

@end