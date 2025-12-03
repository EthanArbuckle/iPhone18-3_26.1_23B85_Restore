@interface BadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)dealloc;
- (void)didTapBadgeView:(id)view;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BadgeView

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for BadgeView(0);
  [(BadgeView *)&v6 dealloc];
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_4AF398();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BadgeView(0);
  v2 = v3.receiver;
  [(BadgeView *)&v3 _dynamicUserInterfaceTraitDidChange];
  sub_4AF520();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4AFE04();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_4B0164();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_4B0458(change);
}

- (void)didTapBadgeView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_4B1984();
}

@end