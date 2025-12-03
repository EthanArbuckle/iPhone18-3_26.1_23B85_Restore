@interface UIKitSearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7SwiftUI14UIKitSearchBar)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setShowsScopeBar:(BOOL)bar animated:(BOOL)animated;
@end

@implementation UIKitSearchBar

- (_TtC7SwiftUI14UIKitSearchBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  selfCopy = self;
  UIKitSearchBar.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  UIKitSearchBar.layoutSubviews()();
}

- (void)setShowsScopeBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(UIKitSearchBar *)&v7 setShowsScopeBar:barCopy animated:animatedCopy];
  UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(barCopy, animatedCopy);
}

@end