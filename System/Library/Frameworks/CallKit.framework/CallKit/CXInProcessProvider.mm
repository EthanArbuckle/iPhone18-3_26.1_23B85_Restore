@interface CXInProcessProvider
- (CXInProcessCallSource)callSource;
- (CXInProcessProvider)initWithConfiguration:(id)a3 callSource:(id)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation CXInProcessProvider

- (CXInProcessProvider)initWithConfiguration:(id)a3 callSource:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CXInProcessProvider;
  v7 = [(CXProvider *)&v13 initWithConfiguration:a3];
  if (v7)
  {
    v8 = [v6 identifier];
    v9 = [v8 copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = objc_storeWeak(&v7->_callSource, v6);
    [v6 setProvider:v7];

    [(CXProvider *)v7 registerCurrentConfiguration];
  }

  return v7;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6.receiver = self;
  v6.super_class = CXInProcessProvider;
  [(CXProvider *)&v6 setDelegate:a3 queue:a4];
  v5 = [(CXProvider *)self abstractProvider];
  [v5 sendDidBeginForProvider:self];
}

- (CXInProcessCallSource)callSource
{
  WeakRetained = objc_loadWeakRetained(&self->_callSource);

  return WeakRetained;
}

@end