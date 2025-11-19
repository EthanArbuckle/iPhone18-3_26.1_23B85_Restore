@interface TodayCardChinLockupListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListView

- (void)layoutSubviews
{
  v2 = self;
  sub_10007725C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_100077AE4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end