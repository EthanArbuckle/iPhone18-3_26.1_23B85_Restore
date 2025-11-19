@interface BooksHTMLConverter
- (_TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidFindNewline:(id)a3;
@end

@implementation BooksHTMLConverter

- (_TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  type metadata accessor for NQMLAttributeName(0);
  sub_19D9EC();
  v8 = sub_264280();
  v9 = a3;
  v10 = self;
  sub_19CE90(a4, v8);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_19D078();
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_264460();
  v6 = a3;
  v7 = self;
  sub_19D124();
}

- (void)parserDidFindNewline:(id)a3
{
  v4 = sub_25FF40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_25FF10();
  swift_beginAccess();
  sub_25FF30();
  swift_endAccess();

  (*(v5 + 8))(v8, v4);
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_19D6C0();
}

@end