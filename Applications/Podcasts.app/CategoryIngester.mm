@interface CategoryIngester
- (id)unsafeIngestCategoryWithCategory:(id)a3 feedCategory:(id)a4 ctx:(id)a5;
- (id)unsafeIngestFeedCategory:(id)a3 ctx:(id)a4;
- (id)unsafeIngestNewCategoryWithCtx:(id)a3 feedCategory:(id)a4;
@end

@implementation CategoryIngester

- (id)unsafeIngestNewCategoryWithCtx:(id)a3 feedCategory:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  swift_unknownObjectRetain();

  v9 = sub_1002DB128(v8, a4, self, ObjectType);

  swift_unknownObjectRelease();

  return v9;
}

- (id)unsafeIngestCategoryWithCategory:(id)a3 feedCategory:(id)a4 ctx:(id)a5
{
  swift_getObjectType();
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;

  v11 = sub_1002D96A4(v9, a4, v10, self);

  swift_unknownObjectRelease();

  return v11;
}

- (id)unsafeIngestFeedCategory:(id)a3 ctx:(id)a4
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a4;

  v9 = sub_1002D7CCC(a3, v8, self, ObjectType);
  swift_unknownObjectRelease();

  return v9;
}

@end