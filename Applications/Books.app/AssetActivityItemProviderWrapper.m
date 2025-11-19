@interface AssetActivityItemProviderWrapper
- (_NSRange)pageRangeForAnnotation:(id)a3;
- (_TtC5Books32AssetActivityItemProviderWrapper)init;
- (id)chapterTitleForAnnotation:(id)a3;
@end

@implementation AssetActivityItemProviderWrapper

- (_TtC5Books32AssetActivityItemProviderWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSRange)pageRangeForAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100216B30(a3);
  v8 = v7;
  swift_unknownObjectRelease();

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)chapterTitleForAnnotation:(id)a3
{
  v3 = self;
  v4 = swift_unknownObjectRetain();
  sub_100216DF0(v4);
  v6 = v5;
  swift_unknownObjectRelease();

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end