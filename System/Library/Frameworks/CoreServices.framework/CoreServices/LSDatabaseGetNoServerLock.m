@interface LSDatabaseGetNoServerLock
@end

@implementation LSDatabaseGetNoServerLock

uint64_t ___LSDatabaseGetNoServerLock_block_invoke()
{
  result = [__LSDefaultsGetSharedInstance() hasServer];
  if ((result & 1) == 0)
  {
    result = [__LSDefaultsGetSharedInstance() isServer];
    if ((result & 1) == 0)
    {
      operator new();
    }
  }

  return result;
}

@end