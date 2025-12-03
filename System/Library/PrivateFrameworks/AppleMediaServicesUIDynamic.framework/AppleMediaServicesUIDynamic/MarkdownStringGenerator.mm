@interface MarkdownStringGenerator
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidEndListElement:(id)element;
- (void)parserDidFindNewline:(id)newline;
- (void)parserDidStartDocument:(id)document;
- (void)parserDidStartListElement:(id)element;
@end

@implementation MarkdownStringGenerator

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1CA168FFC();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1CA169198();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1CA16924C();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for MarkdownAttributeName(0);
  sub_1CA16BA04(&qword_1EE03C1B0, type metadata accessor for MarkdownAttributeName);
  v8 = sub_1CA19C018();
  parserCopy = parser;
  selfCopy = self;
  sub_1CA1694E0(selfCopy, element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1CA169EBC(selfCopy, element);
}

- (void)parserDidFindNewline:(id)newline
{
  newlineCopy = newline;
  selfCopy = self;
  sub_1CA16A408();
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1CA16A47C(selfCopy, style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1CA16A6A8();
}

- (void)parserDidEndListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1CA16A9BC();
}

- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1CA16AAB0();
}

@end