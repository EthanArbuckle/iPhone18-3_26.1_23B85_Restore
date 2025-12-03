@interface AnyHashable:
- (Class)Any;
- (uint64_t)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (void)Any
{
  if (!lazy cache variable for type metadata for [AnyHashable : Any])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AnyHashable : Any]);
    }
  }
}

- (Class)Any
{
  v1 = *(self + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (uint64_t)Any
{
  v2 = *(self + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

@end