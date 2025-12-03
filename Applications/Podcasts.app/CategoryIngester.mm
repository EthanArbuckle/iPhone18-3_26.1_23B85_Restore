@interface CategoryIngester
- (id)unsafeIngestCategoryWithCategory:(id)category feedCategory:(id)feedCategory ctx:(id)ctx;
- (id)unsafeIngestFeedCategory:(id)category ctx:(id)ctx;
- (id)unsafeIngestNewCategoryWithCtx:(id)ctx feedCategory:(id)category;
@end

@implementation CategoryIngester

- (id)unsafeIngestNewCategoryWithCtx:(id)ctx feedCategory:(id)category
{
  ObjectType = swift_getObjectType();
  ctxCopy = ctx;
  swift_unknownObjectRetain();

  v9 = sub_1002DB128(ctxCopy, category, self, ObjectType);

  swift_unknownObjectRelease();

  return v9;
}

- (id)unsafeIngestCategoryWithCategory:(id)category feedCategory:(id)feedCategory ctx:(id)ctx
{
  swift_getObjectType();
  categoryCopy = category;
  swift_unknownObjectRetain();
  ctxCopy = ctx;

  v11 = sub_1002D96A4(categoryCopy, feedCategory, ctxCopy, self);

  swift_unknownObjectRelease();

  return v11;
}

- (id)unsafeIngestFeedCategory:(id)category ctx:(id)ctx
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  ctxCopy = ctx;

  v9 = sub_1002D7CCC(category, ctxCopy, self, ObjectType);
  swift_unknownObjectRelease();

  return v9;
}

@end