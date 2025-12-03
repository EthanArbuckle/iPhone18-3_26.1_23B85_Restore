@interface TodayCardLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation TodayCardLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(TodayCardLockupView *)selfCopy traitCollection];
  v6 = sub_1006569E8(traitCollection, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_100656D50();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TodayCardLockupView();
  v2 = v5.receiver;
  [(TodayCardLockupView *)&v5 layoutSubviews];
  sub_100657114(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

@end