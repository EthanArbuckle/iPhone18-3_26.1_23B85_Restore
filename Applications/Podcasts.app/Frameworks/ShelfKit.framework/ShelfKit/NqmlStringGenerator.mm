@interface NqmlStringGenerator
- (_TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidEndListElement:(void *)element;
- (void)parserDidStartDocument:(id)document;
- (void)parserDidStartListElement:(id)element;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)document
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSFontAttributeName;
  v5 = *&self->configuration[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration];
  *(inited + 64) = sub_36174(0, &qword_4EE3C0);
  *(inited + 40) = v5;
  selfCopy = self;
  v7 = NSFontAttributeName;
  v8 = v5;
  v9 = sub_619F4(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_4EC478);
  sub_394150(v9);
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_395558();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_395600();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NqmlAttributeName(0);
  sub_3961DC(&qword_504580, type metadata accessor for NqmlAttributeName);
  v8 = sub_3ED094();
  parserCopy = parser;
  selfCopy = self;
  sub_3957A8(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_395E0C(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_3ED244();
  parserCopy = parser;
  selfCopy = self;
  sub_395EE8();
}

- (void)parserDidEndListElement:(void *)element
{
  elementCopy = element;
  sub_394524();
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_396008();
}

- (void)parserDidStartListElement:(id)element
{
  selfCopy = self;
  sub_394524();
}

- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_396108();
}

- (_TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end