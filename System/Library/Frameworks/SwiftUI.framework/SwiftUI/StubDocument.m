@interface StubDocument
- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5;
- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7;
- (_TtC7SwiftUI12StubDocument)initWithFileURL:(id)a3;
@end

@implementation StubDocument

- (BOOL)writeContents:(id)a3 toURL:(id)a4 forSaveOperation:(int64_t)a5 originalContentsURL:(id)a6 error:(id *)a7
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_1(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25[-v18];
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = self;
  v22 = a6;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 32))(v12, v16, v13);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v14 + 56))(v12, v23, 1, v13);
  specialized StubDocument.writeContents(_:to:for:originalContentsURL:)(v26, v19);

  _s7SwiftUI25NavigationItemDescriptionVSgWOhTm_0(v12, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  (*(v14 + 8))(v19, v13);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return 1;
}

- (BOOL)loadFromContents:(id)a3 ofType:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v6);
  return 1;
}

- (_TtC7SwiftUI12StubDocument)initWithFileURL:(id)a3
{
  v3 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v3 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end