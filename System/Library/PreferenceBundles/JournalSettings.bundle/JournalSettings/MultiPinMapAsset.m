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
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_50C08(v8);

  sub_8EF0(v8, &qword_C5418);
  return v6 & 1;
}

@end