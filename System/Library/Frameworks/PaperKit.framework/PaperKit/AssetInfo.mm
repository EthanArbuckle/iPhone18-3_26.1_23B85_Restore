@interface AssetInfo
- (BOOL)isEqual:(id)a3;
- (_TtC8PaperKit9AssetInfo)init;
- (int64_t)hash;
@end

@implementation AssetInfo

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = AssetInfo.isEqual(_:)(v8);

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sypSgMd);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  v3 = self;
  Data.hash(into:)();
  MEMORY[0x1DA6CE810](*(&v3->super.isa + OBJC_IVAR____TtC8PaperKit9AssetInfo_maxDimensionInPixels));
  Hasher._combine(_:)(*(&v3->super.isa + OBJC_IVAR____TtC8PaperKit9AssetInfo_isHDRAllowed));
  v4 = Hasher.finalize()();

  return v4;
}

- (_TtC8PaperKit9AssetInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end