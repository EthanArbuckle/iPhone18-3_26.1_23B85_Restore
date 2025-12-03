@interface CLUpdate
- (BOOL)authorizationDenied;
- (CLUpdate)initWithLocation:(id)location diagnostics:(unint64_t)diagnostics;
- (void)dealloc;
@end

@implementation CLUpdate

- (CLUpdate)initWithLocation:(id)location diagnostics:(unint64_t)diagnostics
{
  v9.receiver = self;
  v9.super_class = CLUpdate;
  v6 = [(CLUpdate *)&v9 init];
  if (v6)
  {
    locationCopy = location;
    v6->_diagnostics = diagnostics;
    v6->_location = locationCopy;
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