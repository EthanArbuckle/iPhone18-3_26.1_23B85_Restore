@interface UberNavigationTitleView
- (_TtC23ShelfKitCollectionViews23UberNavigationTitleView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews23UberNavigationTitleView)initWithFrame:(CGRect)a3;
- (void)contentDidChange;
- (void)layoutSubviews;
@end

@implementation UberNavigationTitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_154708();
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UberNavigationTitleView *)&v3 contentDidChange];
  [v2 setNeedsLayout];
}

- (_TtC23ShelfKitCollectionViews23UberNavigationTitleView)initWithFrame:(CGRect)a3
{
  self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_backButtonStyle] = 0;
  *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews23UberNavigationTitleView)initWithCoder:(id)a3
{
  self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_backButtonStyle] = 0;
  *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC23ShelfKitCollectionViews23UberNavigationTitleView_customBackButton] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

@end