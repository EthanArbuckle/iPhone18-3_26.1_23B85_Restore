@interface CARPaletteSelectorView
- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithCoder:(id)coder;
- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation CARPaletteSelectorView

- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithCoder:(id)coder
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_10006DC78(event, x, y);

  return v10;
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v4 = *((swift_isaMask & self->super.super.super.isa) + 0xE8);
  animationCopy = animation;
  selfCopy = self;
  v4(animationCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_10006E04C(deceleratingCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_10006E32C(scrollCopy);
}

- (_TtC15CarPlaySettings22CARPaletteSelectorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end