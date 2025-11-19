@interface CRTextStorage
- (_TtC8PaperKit13CRTextStorage)initWithAttachment:(id)a3 attributes:(id)a4;
- (_TtC8PaperKit13CRTextStorage)initWithAttributedString:(id)a3;
- (_TtC8PaperKit13CRTextStorage)initWithCoder:(id)a3;
- (_TtC8PaperKit13CRTextStorage)initWithContentsOfMarkdownFileAtURL:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6;
- (_TtC8PaperKit13CRTextStorage)initWithData:(id)a3 options:(id)a4 documentAttributes:(id *)a5 error:(id *)a6;
- (_TtC8PaperKit13CRTextStorage)initWithMarkdown:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6;
- (_TtC8PaperKit13CRTextStorage)initWithMarkdownString:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6;
- (_TtC8PaperKit13CRTextStorage)initWithString:(id)a3;
- (_TtC8PaperKit13CRTextStorage)initWithString:(id)a3 attributes:(id)a4;
- (void)fixAttributesInRange:(_NSRange)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
@end

@implementation CRTextStorage

- (_TtC8PaperKit13CRTextStorage)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = self;
  v11.location = location;
  v11.length = length;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  CRTextStorage.replaceCharacters(in:with:)(v11, v12);
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = self;
  v11.value._rawValue = v6;
  v11.is_nil = location;
  v9.location = length;
  CRTextStorage.setAttributes(_:range:)(v11, v9);
}

- (void)fixAttributesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes) = 1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v8 = self;
  [(CRTextStorage *)&v9 fixAttributesInRange:location, length];
  *(&self->super.super.super.super.super.isa + v7) = 0;
}

- (_TtC8PaperKit13CRTextStorage)initWithData:(id)a3 options:(id)a4 documentAttributes:(id *)a5 error:(id *)a6
{
  v6 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithContentsOfMarkdownFileAtURL:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  (*(v11 + 56))(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithMarkdown:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = a3;
  v12 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    v15 = 0;
    v14 = (*(v13 - 8) + 56);
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = (*(v13 - 8) + 56);
    v15 = 1;
  }

  (*v14)(v10, v15, 1, v13);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithMarkdownString:(id)a3 options:(id)a4 baseURL:(id)a5 error:(id *)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v12 = 0;
    v11 = (*(v10 - 8) + 56);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = (*(v10 - 8) + 56);
    v12 = 1;
  }

  (*v11)(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithString:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithString:(id)a3 attributes:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithAttributedString:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithAttachment:(id)a3 attributes:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end