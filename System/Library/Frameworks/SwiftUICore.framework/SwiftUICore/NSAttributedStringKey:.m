@interface NSAttributedStringKey:
- (Class)Any;
- (uint64_t)Any;
- (void)Any;
@end

@implementation NSAttributedStringKey:

- (uint64_t)Any
{
  v8 = *(a1 + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

- (void)Any
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>)
  {
    type metadata accessor for _NSRange(255);
    type metadata accessor for [NSAttributedStringKey : Any]();
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type _NSRange and conformance _NSRange, type metadata accessor for _NSRange);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>);
    }
  }
}

- (Class)Any
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = v5(v4, a3);

  if (v6)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end