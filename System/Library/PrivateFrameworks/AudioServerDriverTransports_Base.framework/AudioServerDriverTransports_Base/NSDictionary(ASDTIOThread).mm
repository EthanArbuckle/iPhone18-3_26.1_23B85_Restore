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
  v1 = [self objectForKey:@"Isolated Use Case"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (uint64_t)asdtIOThreadChangeContextID
{
  v1 = [self objectForKey:@"Context ID"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (uint64_t)asdtIOThreadChangeEvent
{
  v1 = [self objectForKey:@"Event"];
  unsignedIntValue = [v1 unsignedIntValue];

  if (unsignedIntValue == 1937011316)
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
  v1 = [self objectForKey:@"useCaseThreadCount"];
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (uint64_t)asdtIOThreadUseCaseIsFirstOrWasLast
{
  v1 = [self objectForKey:@"isFirstOrWasLast"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end