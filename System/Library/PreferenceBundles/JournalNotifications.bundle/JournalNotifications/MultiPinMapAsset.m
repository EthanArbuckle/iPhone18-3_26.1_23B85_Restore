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
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_5054C(v8);

  sub_C060(v8, &qword_104818);
  return v6 & 1;
}

@end