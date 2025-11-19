@interface NqmlAttributedStringGenerator
- (_TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
@end

@implementation NqmlAttributedStringGenerator

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  v7 = a3;
  v8 = self;
  sub_1E15B5564(a4);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1E15B5CC8(a4);
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_1E1AF5DFC();
  v6 = a3;
  v7 = self;
  sub_1E15B64C4();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E15B6B34();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E15B6D14();
}

- (_TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end