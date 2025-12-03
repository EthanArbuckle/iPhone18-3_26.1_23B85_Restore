@interface CRLPreviewImages.LookupKey
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey)init;
- (int64_t)hash;
@end

@implementation CRLPreviewImages.LookupKey

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100046014(v8);

  sub_1000357F4(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_100046278();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1000464E4();

  v3 = sub_10007E404();

  return v3;
}

- (_TtCC24FreeformSharingExtension16CRLPreviewImages9LookupKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end