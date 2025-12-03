@interface CRTextStorage
- (_TtC8PaperKit13CRTextStorage)initWithAttachment:(id)attachment attributes:(id)attributes;
- (_TtC8PaperKit13CRTextStorage)initWithAttributedString:(id)string;
- (_TtC8PaperKit13CRTextStorage)initWithCoder:(id)coder;
- (_TtC8PaperKit13CRTextStorage)initWithContentsOfMarkdownFileAtURL:(id)l options:(id)options baseURL:(id)rL error:(id *)error;
- (_TtC8PaperKit13CRTextStorage)initWithData:(id)data options:(id)options documentAttributes:(id *)attributes error:(id *)error;
- (_TtC8PaperKit13CRTextStorage)initWithMarkdown:(id)markdown options:(id)options baseURL:(id)l error:(id *)error;
- (_TtC8PaperKit13CRTextStorage)initWithMarkdownString:(id)string options:(id)options baseURL:(id)l error:(id *)error;
- (_TtC8PaperKit13CRTextStorage)initWithString:(id)string;
- (_TtC8PaperKit13CRTextStorage)initWithString:(id)string attributes:(id)attributes;
- (void)fixAttributesInRange:(_NSRange)range;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
@end

@implementation CRTextStorage

- (_TtC8PaperKit13CRTextStorage)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  selfCopy = self;
  v11.location = location;
  v11.length = length;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  CRTextStorage.replaceCharacters(in:with:)(v11, v12);
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    attributesCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v11.value._rawValue = attributesCopy;
  v11.is_nil = location;
  v9.location = length;
  CRTextStorage.setAttributes(_:range:)(v11, v9);
}

- (void)fixAttributesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes) = 1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(CRTextStorage *)&v9 fixAttributesInRange:location, length];
  *(&self->super.super.super.super.super.isa + v7) = 0;
}

- (_TtC8PaperKit13CRTextStorage)initWithData:(id)data options:(id)options documentAttributes:(id *)attributes error:(id *)error
{
  dataCopy = data;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithContentsOfMarkdownFileAtURL:(id)l options:(id)options baseURL:(id)rL error:(id *)error
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (rL)
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

- (_TtC8PaperKit13CRTextStorage)initWithMarkdown:(id)markdown options:(id)options baseURL:(id)l error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  markdownCopy = markdown;
  lCopy = l;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (lCopy)
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

- (_TtC8PaperKit13CRTextStorage)initWithMarkdownString:(id)string options:(id)options baseURL:(id)l error:(id *)error
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (l)
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

- (_TtC8PaperKit13CRTextStorage)initWithString:(id)string
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithString:(id)string attributes:(id)attributes
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithAttributedString:(id)string
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8PaperKit13CRTextStorage)initWithAttachment:(id)attachment attributes:(id)attributes
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end