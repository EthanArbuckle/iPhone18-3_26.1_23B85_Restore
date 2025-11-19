@interface NSXPCSerializationDebugInfoForObject
@end

@implementation NSXPCSerializationDebugInfoForObject

uint64_t ___NSXPCSerializationDebugInfoForObject_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    do
    {
      [*(a1 + 32) appendString:@" "];
      ++v4;
    }

    while (v4 < *(a1 + 48));
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  [v5 appendFormat:@"%lld => ", v7];
  [*(a1 + 32) appendString:{_NSXPCSerializationDebugInfoForObject(*(a1 + 56), a2, *(a1 + 64) + *(a1 + 48))}];
  [*(a1 + 32) appendString:@"\n"];
  return 1;
}

uint64_t ___NSXPCSerializationDebugInfoForObject_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    v6 = 0;
    do
    {
      [*(a1 + 32) appendString:@" "];
      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  if ((*(a2 + 2) | 0x10) == 0x70)
  {
    v7 = _NSXPCSerializationDebugInfoForObject(*(a1 + 48), a2, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 appendFormat:@"%@ => ", v7, v10];
    }

    else
    {
      [v8 appendFormat:@"<bad dictionary key @%lld>", *a2, v10];
    }
  }

  else
  {
    [*(a1 + 32) appendFormat:@"<unexpected dictionary key type %d @%lld>", *(a2 + 2), *a2];
  }

  [*(a1 + 32) appendString:{_NSXPCSerializationDebugInfoForObject(*(a1 + 48), a3, *(a1 + 56) + *(a1 + 40))}];
  [*(a1 + 32) appendString:@"\n"];
  return 1;
}

@end