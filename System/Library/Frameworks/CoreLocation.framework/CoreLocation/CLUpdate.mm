@interface CLUpdate
- (BOOL)authorizationDenied;
- (CLUpdate)initWithLocation:(id)a3 diagnostics:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CLUpdate

- (CLUpdate)initWithLocation:(id)a3 diagnostics:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = CLUpdate;
  v6 = [(CLUpdate *)&v9 init];
  if (v6)
  {
    v7 = a3;
    v6->_diagnostics = a4;
    v6->_location = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLUpdate;
  [(CLUpdate *)&v3 dealloc];
}

- (BOOL)authorizationDenied
{
  if ([(CLUpdate *)self authorizationDeniedGlobally])
  {
    return 1;
  }

  else
  {
    return self->_diagnostics & 1;
  }
}

@end