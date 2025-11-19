@interface MPModelSocialPerson
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation MPModelSocialPerson

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MPModelSocialPerson.isEqual(_:)(v8);

  sub_9BC10(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = MPModelSocialPerson.hash.getter();

  return v3;
}

@end