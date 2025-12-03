@interface NqmlStringGenerator
- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidEndListElement:(id)element;
- (void)parserDidFindNewline:(id)newline;
- (void)parserDidStartDocument:(id)document;
- (void)parserDidStartListElement:(id)element;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1E1ADD484();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1E1ADD5D8();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1E1ADD680();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NqmlAttributeName(0);
  sub_1E1ADE418(&unk_1EE1E3400, type metadata accessor for NqmlAttributeName);
  v8 = sub_1E1AF5C7C();
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADD860(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDC70(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_1E1AF5DFC();
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDD4C();
}

- (void)parserDidFindNewline:(id)newline
{
  selfCopy = self;
  sub_1E1ADC1D8();
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADDF40(style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1E1ADE0EC();
}

- (void)parserDidEndListElement:(id)element
{
  selfCopy = self;
  sub_1E1ADC1D8();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_orderedListTracker);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return;
    }

    *(v3 + 16) = v6;
  }
}

- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E1ADE330();
}

- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end