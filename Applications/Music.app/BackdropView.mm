@interface BackdropView
+ (Class)layerClass;
- (_TtC5Music12BackdropView)initWithCoder:(id)coder;
- (_TtC5Music12BackdropView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BackdropView

- (_TtC5Music12BackdropView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music12BackdropView_gradientLayer) = 0;
  v4 = OBJC_IVAR____TtC5Music12BackdropView_overlayView;
  type metadata accessor for PassthroughView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_100009F78(0, &qword_1011908A8);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004537C0();
}

- (_TtC5Music12BackdropView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end