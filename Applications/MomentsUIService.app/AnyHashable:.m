@interface AnyHashable:
- (uint64_t)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a3;
  v6(a2, a3, v7);
}

- (void)Any
{
  v3 = *(a1 + 32);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a2;
  v3(a2, v4);
}

@end