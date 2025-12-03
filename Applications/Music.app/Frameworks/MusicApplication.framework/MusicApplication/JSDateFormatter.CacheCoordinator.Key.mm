@interface JSDateFormatter.CacheCoordinator.Key
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation JSDateFormatter.CacheCoordinator.Key

- (int64_t)hash
{
  sub_ABB5C0();

  sub_A22D74(v4);
  v2 = sub_ABB610();

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {

    swift_unknownObjectRetain();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = sub_A242B8(self, v4);
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end