@interface TodayCardChinLockupListView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_58AC40();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_58B4C8();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end