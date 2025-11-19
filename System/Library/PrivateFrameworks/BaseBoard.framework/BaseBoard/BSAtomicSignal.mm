@interface BSAtomicSignal
- (BOOL)hasBeenSignalled;
- (BOOL)signal;
- (BSAtomicSignal)init;
- (id)description;
@end

@implementation BSAtomicSignal

- (BSAtomicSignal)init
{
  v3.receiver = self;
  v3.super_class = BSAtomicSignal;
  result = [(BSAtomicSignal *)&v3 init];
  if (result)
  {
    atomic_store(0, &result->_flag);
  }

  return result;
}

- (BOOL)signal
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&self->_flag, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  return v2 == 0;
}

- (BOOL)hasBeenSignalled
{
  v2 = 1;
  atomic_compare_exchange_strong_explicit(&self->_flag, &v2, v2, memory_order_relaxed, memory_order_relaxed);
  return v2 == 1;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendBool:-[BSAtomicSignal hasBeenSignalled](self withName:"hasBeenSignalled") ifEqualTo:{@"signalled", 1}];
  v5 = [v3 build];

  return v5;
}

@end