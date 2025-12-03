@interface NqmlAttributedStringGenerator
- (_TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
@end

@implementation NqmlAttributedStringGenerator

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E15B5564(element);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E15B5CC8(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_1E1AF5DFC();
  parserCopy = parser;
  selfCopy = self;
  sub_1E15B64C4();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1E15B6B34();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1E15B6D14();
}

- (_TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end