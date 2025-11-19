@interface CoreGraphicsContext
- (CoreGraphicsContext)initWithCGContext:(CGContext *)a3;
- (void)pop;
- (void)push;
@end

@implementation CoreGraphicsContext

- (void)pop
{
  v2 = _current();
  *v2 = v3;
  v4 = _popContextIMP;
  if (_pushContextIMP)
  {
    v5 = _popContextIMP == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {

    v4(0, sel_popContext_);
  }
}

- (void)push
{
  v2 = _current();
  *(v3 + 8) = *v2;
  *v2 = v3;
  v4 = _pushContextIMP;
  if (_pushContextIMP)
  {
    v5 = _popContextIMP == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {

    v4(0, sel_pushContext_);
  }
}

- (CoreGraphicsContext)initWithCGContext:(CGContext *)a3
{
  if (_once_0 != -1)
  {
    [CoreGraphicsContext initWithCGContext:];
  }

  v6.receiver = self;
  v6.super_class = CoreGraphicsContext;
  result = [(CoreGraphicsContext *)&v6 init];
  if (result)
  {
    result->_ctx = a3;
  }

  return result;
}

id __41__CoreGraphicsContext_initWithCGContext___block_invoke()
{
  v0 = NSClassFromString(&cfstr_Uigraphicsrend.isa);
  if (v0)
  {
    v1 = v0;
    _pushContextIMP = [(objc_class *)v0 instanceMethodForSelector:sel_pushContext_];
    result = [(objc_class *)v1 instanceMethodForSelector:sel_popContext_];
    _popContextIMP = result;
  }

  else
  {

    return +[CoreTextGraphicsContextProvider sharedProvider];
  }

  return result;
}

@end