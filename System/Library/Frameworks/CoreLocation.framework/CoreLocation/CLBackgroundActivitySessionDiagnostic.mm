@interface CLBackgroundActivitySessionDiagnostic
- (BOOL)authorizationDenied;
- (CLBackgroundActivitySessionDiagnostic)initWithDiagnostics:(unint64_t)diagnostics;
- (void)dealloc;
@end

@implementation CLBackgroundActivitySessionDiagnostic

- (CLBackgroundActivitySessionDiagnostic)initWithDiagnostics:(unint64_t)diagnostics
{
  v5.receiver = self;
  v5.super_class = CLBackgroundActivitySessionDiagnostic;
  result = [(CLBackgroundActivitySessionDiagnostic *)&v5 init];
  if (result)
  {
    result->_diagnostics = diagnostics;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLBackgroundActivitySessionDiagnostic;
  [(CLBackgroundActivitySessionDiagnostic *)&v2 dealloc];
}

- (BOOL)authorizationDenied
{
  if ([(CLBackgroundActivitySessionDiagnostic *)self authorizationDeniedGlobally])
  {
    return 1;
  }

  else
  {
    return self->_diagnostics & 1;
  }
}

@end