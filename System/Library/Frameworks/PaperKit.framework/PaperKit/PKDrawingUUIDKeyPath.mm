@interface PKDrawingUUIDKeyPath
- (BOOL)isEqual:(id)a3;
- (NSData)AES128Key;
- (NSString)description;
- (NSString)uniqueCacheFilePath;
- (_TtC8PaperKit20PKDrawingUUIDKeyPath)init;
- (int64_t)hash;
@end

@implementation PKDrawingUUIDKeyPath

- (NSString)uniqueCacheFilePath
{
  v2 = self;
  v3 = CRKeyPath.rawValue.getter();
  v5 = v4;
  Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v3, v5);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = v7;

  v9 = MEMORY[0x1DA6CCED0](v6, v8);

  return v9;
}

- (NSData)AES128Key
{
  v2 = self;
  v3 = PKDrawingUUIDKeyPath.aes128Key.getter();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

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

  v6 = PKDrawingUUIDKeyPath.isEqual(_:)(v8);

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_sypSgMd);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for CRKeyPath();
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, 255, MEMORY[0x1E69954B8]);
  v3 = self;
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (NSString)description
{
  v2 = self;
  v3 = CRKeyPath.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1DA6CCED0](v3, v5);

  return v6;
}

- (_TtC8PaperKit20PKDrawingUUIDKeyPath)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end