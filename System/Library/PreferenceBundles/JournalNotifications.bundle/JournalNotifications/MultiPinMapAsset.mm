@interface MultiPinMapAsset
- (BOOL)isEqual:(id)equal;
@end

@implementation MultiPinMapAsset

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_5054C(v8);

  sub_C060(v8, &qword_104818);
  return v6 & 1;
}

@end