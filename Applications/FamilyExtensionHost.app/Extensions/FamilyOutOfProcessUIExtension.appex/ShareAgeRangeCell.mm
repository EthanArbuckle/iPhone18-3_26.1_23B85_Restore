@interface ShareAgeRangeCell
- (_TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation ShareAgeRangeCell

- (_TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_10001BD30();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10001531C(style, identifier, v6);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_100015550(selected, animated);
}

@end