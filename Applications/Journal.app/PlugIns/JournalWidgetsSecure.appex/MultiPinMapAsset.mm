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
    sub_1000DC864();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1000603BC(v8);

  sub_1000080B0(v8, &qword_100121470);
  return v6 & 1;
}

@end