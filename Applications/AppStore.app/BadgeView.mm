@interface BadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)didTapBadgeView:(id)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BadgeView

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for BadgeView(0);
  [(BadgeView *)&v6 dealloc];
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_1005010B8();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BadgeView(0);
  v2 = v3.receiver;
  [(BadgeView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_100501240();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100501B24();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_100501E84();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100502178(a3);
}

- (void)didTapBadgeView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005036A4();
}

@end