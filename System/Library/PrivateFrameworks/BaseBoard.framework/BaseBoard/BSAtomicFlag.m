@interface BSAtomicFlag
- (BOOL)getFlag;
- (BOOL)setFlag:(BOOL)a3;
- (BSAtomicFlag)initWithFlag:(BOOL)a3;
- (id)description;
@end

@implementation BSAtomicFlag

- (BOOL)getFlag
{
  v2 = 1;
  atomic_compare_exchange_strong_explicit(&self->_flag, &v2, v2, memory_order_relaxed, memory_order_relaxed);
  return v2 == 1;
}

- (BSAtomicFlag)initWithFlag:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BSAtomicFlag;
  result = [(BSAtomicFlag *)&v5 init];
  if (result)
  {
    atomic_store(a3, &result->_flag);
  }

  return result;
}

- (BOOL)setFlag:(BOOL)a3
{
  v3 = !a3;
  atomic_compare_exchange_strong_explicit(&self->_flag, &v3, a3, memory_order_relaxed, memory_order_relaxed);
  return v3 == !a3;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __27__BSAtomicFlag_description__block_invoke;
  v11 = &unk_1E72CACC0;
  v4 = v3;
  v12 = v4;
  v13 = self;
  v5 = [v4 modifyProem:&v8];
  v6 = [v4 build];

  return v6;
}

@end