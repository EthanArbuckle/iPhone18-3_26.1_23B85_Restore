@interface NqmlStringGenerator
- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidEndListElement:(id)a3;
- (void)parserDidFindNewline:(id)a3;
- (void)parserDidStartDocument:(id)a3;
- (void)parserDidStartListElement:(id)a3;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1ADD484();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1ADD5D8();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E1ADD680();
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  type metadata accessor for NqmlAttributeName(0);
  sub_1E1ADE418(&unk_1EE1E3400, type metadata accessor for NqmlAttributeName);
  v8 = sub_1E1AF5C7C();
  v9 = a3;
  v10 = self;
  sub_1E1ADD860(a4, v8);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1E1ADDC70(a4);
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_1E1AF5DFC();
  v6 = a3;
  v7 = self;
  sub_1E1ADDD4C();
}

- (void)parserDidFindNewline:(id)a3
{
  v3 = self;
  sub_1E1ADC1D8();
}

- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1E1ADDF40(a4);
}

- (void)parserDidStartListElement:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E1ADE0EC();
}

- (void)parserDidEndListElement:(id)a3
{
  v7 = self;
  sub_1E1ADC1D8();
  v3 = *(&v7->super.isa + OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_orderedListTracker);
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

- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1E1ADE330();
}

- (_TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end