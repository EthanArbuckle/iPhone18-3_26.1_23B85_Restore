@interface TouchesOnScreenCountGestureRecognizer
- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)init;
- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)initWithCoder:(id)coder;
- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TouchesOnScreenCountGestureRecognizer

- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)init
{
  *(&self->super._gestureFlags + OBJC_IVAR____TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer_asvDelegate) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for TouchesOnScreenCountGestureRecognizer();
  v3 = [(TouchesOnScreenCountGestureRecognizer *)&v5 initWithTarget:0 action:0];
  [(TouchesOnScreenCountGestureRecognizer *)v3 setCancelsTouchesInView:0];
  [(TouchesOnScreenCountGestureRecognizer *)v3 setDelaysTouchesEnded:0];
  [(TouchesOnScreenCountGestureRecognizer *)v3 setState:0];

  return v3;
}

- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)initWithCoder:(id)coder
{
  *(&self->super._gestureFlags + OBJC_IVAR____TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer_asvDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_2413547DC();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_2412FC764([(TouchesOnScreenCountGestureRecognizer *)selfCopy numberOfTouches]);
    swift_unknownObjectRelease();
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_24130C9E0();
  sub_2412FC7FC();
  v6 = sub_241353FFC();
  eventCopy = event;
  selfCopy = self;
  sub_24130CA2C(v6);
}

- (_TtC11AssetViewer37TouchesOnScreenCountGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_2413543BC();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end