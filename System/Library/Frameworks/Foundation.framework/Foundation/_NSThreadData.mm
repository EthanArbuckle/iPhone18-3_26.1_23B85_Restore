@interface _NSThreadData
- (_NSThreadData)init;
- (uint64_t)setTarget:(uint64_t)result;
- (void)setArgument:(void *)result;
- (void)setSelector:(void *)result;
@end

@implementation _NSThreadData

- (_NSThreadData)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSThreadData;
  result = [(_NSThreadData *)&v3 init];
  atomic_store(result->_target, &result->_pac_signature);
  return result;
}

- (uint64_t)setTarget:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    v3 = atomic_load((result + 32));
    if (v2 != v3)
    {
      _NSThreadPoisoned();
    }

    *(result + 8) = a2;
    atomic_store(result + 16, (result + 32));
  }

  return result;
}

- (void)setSelector:(void *)result
{
  if (result)
  {
    v2 = result[1];
    v3 = atomic_load(result + 4);
    if (v2 != v3)
    {
      _NSThreadPoisoned();
    }

    if (a2)
    {
      result[2] = a2;
    }

    else
    {
      result[2] = 0;
    }

    atomic_store((result + 2), result + 4);
  }

  return result;
}

- (void)setArgument:(void *)result
{
  if (result)
  {
    v2 = result[1];
    v3 = atomic_load(result + 4);
    if (v2 != v3)
    {
      _NSThreadPoisoned();
    }

    result[3] = a2;
    atomic_store((result + 2), result + 4);
  }

  return result;
}

@end