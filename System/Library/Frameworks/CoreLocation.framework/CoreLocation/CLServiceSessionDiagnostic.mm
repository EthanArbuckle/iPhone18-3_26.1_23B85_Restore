@interface CLServiceSessionDiagnostic
- (BOOL)authorizationDenied;
- (CLServiceSessionDiagnostic)initWithDiagnostics:(unint64_t)a3;
- (void)dealloc;
@end

@implementation CLServiceSessionDiagnostic

- (CLServiceSessionDiagnostic)initWithDiagnostics:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLServiceSessionDiagnostic;
  result = [(CLServiceSessionDiagnostic *)&v5 init];
  if (result)
  {
    result->_diagnostics = a3;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLServiceSessionDiagnostic;
  [(CLServiceSessionDiagnostic *)&v2 dealloc];
}

- (BOOL)authorizationDenied
{
  if ([(CLServiceSessionDiagnostic *)self authorizationDeniedGlobally])
  {
    return 1;
  }

  else
  {
    return self->_diagnostics & 1;
  }
}

@end