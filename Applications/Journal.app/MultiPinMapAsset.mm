@interface MultiPinMapAsset
- (BOOL)isEqual:(id)a3;
@end

@implementation MultiPinMapAsset

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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100119E1C(v8);

  sub_100004F84(v8, &qword_100AD13D0);
  return v6 & 1;
}

@end