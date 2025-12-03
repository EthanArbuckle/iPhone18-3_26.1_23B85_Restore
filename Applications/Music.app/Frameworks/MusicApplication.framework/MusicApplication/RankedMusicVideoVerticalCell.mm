@interface RankedMusicVideoVerticalCell
+ (UIEdgeInsets)visualContentInsets;
- (NSString)accessibilityRankString;
- (void)layoutSubviews;
@end

@implementation RankedMusicVideoVerticalCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_42B9E0();
}

+ (UIEdgeInsets)visualContentInsets
{
  sub_42C174();
  v3 = v2;
  if (qword_DE6BB8 != -1)
  {
    swift_once();
  }

  v4 = xmmword_E05F98;
  swift_beginAccess();
  v5 = *(v3 + 104);
  v6 = qword_E05FB0;

  *&v8 = v4 >> 64;
  *&v7 = v4;
  v9 = v5;
  v10 = *&v6;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (NSString)accessibilityRankString
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

@end