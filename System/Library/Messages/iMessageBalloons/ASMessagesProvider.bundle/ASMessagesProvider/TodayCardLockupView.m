@interface TodayCardLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation TodayCardLockupView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(TodayCardLockupView *)v4 traitCollection];
  v6 = sub_BBAF0(v5, width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_BBE58();
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
  sub_BC21C(v4);
  sub_B170(v4, v4[3]);
  sub_75D650();
  v3 = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

@end