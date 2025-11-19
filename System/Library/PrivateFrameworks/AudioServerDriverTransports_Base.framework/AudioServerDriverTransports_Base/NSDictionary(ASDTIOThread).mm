@interface NSDictionary(ASDTIOThread)
- (uint64_t)asdtIOThreadChangeContextID;
- (uint64_t)asdtIOThreadChangeEvent;
- (uint64_t)asdtIOThreadChangeIsolatedUseCase;
- (uint64_t)asdtIOThreadUseCaseIsFirstOrWasLast;
- (uint64_t)asdtIOThreadUseCaseThreadCount;
@end

@implementation NSDictionary(ASDTIOThread)

- (uint64_t)asdtIOThreadChangeIsolatedUseCase
{
  v1 = [a1 objectForKey:@"Isolated Use Case"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)asdtIOThreadChangeContextID
{
  v1 = [a1 objectForKey:@"Context ID"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)asdtIOThreadChangeEvent
{
  v1 = [a1 objectForKey:@"Event"];
  v2 = [v1 unsignedIntValue];

  if (v2 == 1937011316)
  {
    return 1937011316;
  }

  else
  {
    return 1937010544;
  }
}

- (uint64_t)asdtIOThreadUseCaseThreadCount
{
  v1 = [a1 objectForKey:@"useCaseThreadCount"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (uint64_t)asdtIOThreadUseCaseIsFirstOrWasLast
{
  v1 = [a1 objectForKey:@"isFirstOrWasLast"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end