@interface UIKitSearchBar
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7SwiftUI14UIKitSearchBar)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setShowsScopeBar:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation UIKitSearchBar

- (_TtC7SwiftUI14UIKitSearchBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder) = 2;
  v9 = self + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarView;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UIKitSearchBar *)&v11 initWithFrame:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = swift_getObjectType();
  v5 = v16.receiver;
  [(UIKitSearchBar *)&v16 sizeThatFits:width, height];
  v7 = v6;
  v9 = v8;
  v10 = *&v5[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
  if (v10)
  {
    v11 = v10;
    if (([v11 isHidden] & 1) == 0)
    {
      UIKitSearchBar.roundedScopeBarSizeThatFits(_:)(width, height);
      v13 = v12;

      v9 = v9 + v13;
      goto LABEL_6;
    }
  }

LABEL_6:
  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
  UIKitSearchBar.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  UIKitSearchBar.layoutSubviews()();
}

- (void)setShowsScopeBar:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(UIKitSearchBar *)&v7 setShowsScopeBar:v5 animated:v4];
  UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(v5, v4);
}

@end