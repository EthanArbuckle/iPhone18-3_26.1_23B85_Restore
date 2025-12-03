@interface BooksHTMLConverter
- (_TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidFindNewline:(id)newline;
@end

@implementation BooksHTMLConverter

- (_TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NQMLAttributeName(0);
  sub_19D9EC();
  v8 = sub_264280();
  parserCopy = parser;
  selfCopy = self;
  sub_19CE90(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_19D078();
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_264460();
  parserCopy = parser;
  selfCopy = self;
  sub_19D124();
}

- (void)parserDidFindNewline:(id)newline
{
  v4 = sub_25FF40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_25FF10();
  swift_beginAccess();
  sub_25FF30();
  swift_endAccess();

  (*(v5 + 8))(v8, v4);
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_19D6C0();
}

@end