@interface _EXAppExtensionPointEnumerator.ExtensionPoint
- (NSDictionary)SDKDictionary;
- (NSString)identifier;
- (_TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint)init;
@end

@implementation _EXAppExtensionPointEnumerator.ExtensionPoint

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner);
  v3 = *&self->inner[OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner];

  v4 = MEMORY[0x1865F36D0](v2, v3);

  return v4;
}

- (NSDictionary)SDKDictionary
{
  v2 = *&self->inner[OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner + 8];
  selfCopy = self;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end