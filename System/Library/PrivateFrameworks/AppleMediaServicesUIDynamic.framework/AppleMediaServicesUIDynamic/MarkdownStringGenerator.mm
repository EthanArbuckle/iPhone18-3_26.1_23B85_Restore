@interface MarkdownStringGenerator
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidEndListElement:(id)a3;
- (void)parserDidFindNewline:(id)a3;
- (void)parserDidStartDocument:(id)a3;
- (void)parserDidStartListElement:(id)a3;
@end

@implementation MarkdownStringGenerator

- (void)parserDidStartDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA168FFC();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA169198();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1CA16924C();
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  type metadata accessor for MarkdownAttributeName(0);
  sub_1CA16BA04(&qword_1EE03C1B0, type metadata accessor for MarkdownAttributeName);
  v8 = sub_1CA19C018();
  v9 = a3;
  v10 = self;
  sub_1CA1694E0(v10, a4, v8);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1CA169EBC(v7, a4);
}

- (void)parserDidFindNewline:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA16A408();
}

- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1CA16A47C(v7, a4);
}

- (void)parserDidStartListElement:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA16A6A8();
}

- (void)parserDidEndListElement:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA16A9BC();
}

- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1CA16AAB0();
}

@end