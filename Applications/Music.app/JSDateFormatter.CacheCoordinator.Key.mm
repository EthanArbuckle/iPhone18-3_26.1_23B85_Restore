@interface JSDateFormatter.CacheCoordinator.Key
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation JSDateFormatter.CacheCoordinator.Key

- (int64_t)hash
{
  Hasher.init(_seed:)();

  sub_100D65B54(v4);
  v2 = Hasher._finalize()();

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {

    swift_unknownObjectRetain();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = sub_100D67098(self, v4);
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