@interface ShareAgeRangeCell
- (_TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation ShareAgeRangeCell

- (_TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_10001BD30();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10001531C(a3, a4, v6);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_100015550(a3, a4);
}

@end