@interface CARPaletteSelectorView
- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithCoder:(id)a3;
- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation CARPaletteSelectorView

- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_delegate;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_scrollView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC15CarPlaySettings22CARPaletteSelectorView_stackView;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_10006DC78(a4, x, y);

  return v10;
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xE8);
  v5 = a3;
  v6 = self;
  v4(v5);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006E04C(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006E32C(v4);
}

- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end