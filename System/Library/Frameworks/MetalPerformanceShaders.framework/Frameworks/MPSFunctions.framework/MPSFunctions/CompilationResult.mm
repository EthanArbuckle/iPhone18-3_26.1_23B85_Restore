@interface CompilationResult
- (CompilationResult)init;
- (CompilationResult)initWithFunction:(id)function error:(id)error;
- (MTLFunction)function;
- (NSError)error;
- (id)completionHandler;
- (void)dealloc;
@end

@implementation CompilationResult

- (CompilationResult)init
{
  v3.receiver = self;
  v3.super_class = CompilationResult;
  if ([(CompilationResult *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (CompilationResult)initWithFunction:(id)function error:(id)error
{
  v8.receiver = self;
  v8.super_class = CompilationResult;
  v6 = [(CompilationResult *)&v8 init];
  if (v6)
  {
    v6->_function = function;
    v6->_error = error;
    v6->_barrier = 0;
  }

  return v6;
}

- (void)dealloc
{
  barrier = self->_barrier;
  if (barrier && atomic_fetch_add(barrier + 1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    if (*barrier != -1)
    {
      dispatch_once_f(barrier, barrier, sub_239931640);
    }

    MEMORY[0x23EE7B550]();
  }

  v4.receiver = self;
  v4.super_class = CompilationResult;
  [(CompilationResult *)&v4 dealloc];
}

- (id)completionHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2399314C0;
  aBlock[3] = &unk_278AAAC10;
  aBlock[4] = self;
  return _Block_copy(aBlock);
}

- (MTLFunction)function
{
  barrier = self->_barrier;
  if (!barrier || *barrier == -1)
  {
    return self->_function;
  }

  dispatch_once_f(barrier, barrier, sub_23993166C);
  return self->_function;
}

- (NSError)error
{
  barrier = self->_barrier;
  if (!barrier || *barrier == -1)
  {
    return self->_error;
  }

  dispatch_once_f(barrier, barrier, sub_23993166C);
  return self->_error;
}

@end