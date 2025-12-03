@interface KeyPathWrapper
- (BOOL)isEqual:(id)equal;
- (_TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper)init;
- (int64_t)hash;
@end

@implementation KeyPathWrapper

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = KeyPathWrapper.isEqual(_:)(v8);

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sypSgMd);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for CRKeyPath();
  lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
  selfCopy = self;
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (_TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end