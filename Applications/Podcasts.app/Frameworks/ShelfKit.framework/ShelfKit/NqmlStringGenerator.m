@interface NqmlStringGenerator
- (_TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidEndListElement:(void *)a1;
- (void)parserDidStartDocument:(id)a3;
- (void)parserDidStartListElement:(id)a3;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = NSFontAttributeName;
  v5 = *&self->configuration[OBJC_IVAR____TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator_configuration];
  *(inited + 64) = sub_36174(0, &qword_4EE3C0);
  *(inited + 40) = v5;
  v6 = self;
  v7 = NSFontAttributeName;
  v8 = v5;
  v9 = sub_619F4(inited);
  swift_setDeallocating();
  sub_FCF8(inited + 32, &qword_4EC478);
  sub_394150(v9);
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_395558();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_395600();
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  type metadata accessor for NqmlAttributeName(0);
  sub_3961DC(&qword_504580, type metadata accessor for NqmlAttributeName);
  v8 = sub_3ED094();
  v9 = a3;
  v10 = self;
  sub_3957A8(a4, v8);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_395E0C(a4);
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_3ED244();
  v6 = a3;
  v7 = self;
  sub_395EE8();
}

- (void)parserDidEndListElement:(void *)a1
{
  v1 = a1;
  sub_394524();
}

- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_396008();
}

- (void)parserDidStartListElement:(id)a3
{
  v3 = self;
  sub_394524();
}

- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_396108();
}

- (_TtC8ShelfKitP33_04B892DBC0BBAEFCE9764D2FF13A23A619NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end