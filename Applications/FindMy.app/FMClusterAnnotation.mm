@interface FMClusterAnnotation
- (BOOL)isEqual:(id)a3;
@end

@implementation FMClusterAnnotation

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  sub_10017EE08(v11, v9);
  if (!v10)
  {
    sub_10000D2C0(v9);
    goto LABEL_8;
  }

  type metadata accessor for FMClusterAnnotation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_1003F4F34(v8, self);

LABEL_9:
  sub_10000D2C0(v11);
  return v6 & 1;
}

@end