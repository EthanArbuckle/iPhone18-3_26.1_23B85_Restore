@interface NSIPCallbackSerialization
@end

@implementation NSIPCallbackSerialization

uint64_t __45___NSIPCallbackSerialization_sendBeginBlock___block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 16));
  if (v1)
  {
    __assert_rtn("[_NSIPCallbackSerialization sendBeginBlock:]_block_invoke", "NSItemProvider.m", 106, "!_hasBegun");
  }

  atomic_store(1u, (*(a1 + 32) + 16));
  (*(*(a1 + 40) + 16))();
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __43___NSIPCallbackSerialization_sendEndBlock___block_invoke(uint64_t a1)
{
  atomic_store(1u, (*(a1 + 32) + 17));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  LOBYTE(v3) = atomic_load((v3 + 16));
  if (v3)
  {
    v4 = v2[2];

    return v4();
  }

  else
  {
    result = [v2 copy];
    *(*(a1 + 32) + 8) = result;
  }

  return result;
}

@end