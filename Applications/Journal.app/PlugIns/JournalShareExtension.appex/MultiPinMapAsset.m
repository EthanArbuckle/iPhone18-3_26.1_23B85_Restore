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
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1000DEFCC(v8);

  sub_10000FFB4(v8, &qword_10014CA68);
  return v6 & 1;
}

@end