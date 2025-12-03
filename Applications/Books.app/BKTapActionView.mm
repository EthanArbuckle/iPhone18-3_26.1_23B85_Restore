@interface BKTapActionView
- (CGSize)intrinsicContentSize;
- (_TtC5Books15BKTapActionView)initWithCoder:(id)coder;
- (_TtC5Books15BKTapActionView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)be_singleTapAction;
- (void)didMoveToWindow;
- (void)fireAction:(id)action;
@end

@implementation BKTapActionView

- (_TtC5Books15BKTapActionView)initWithCoder:(id)coder
{
  *&self->fixedSize[OBJC_IVAR____TtC5Books15BKTapActionView_listener] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1004EDF2C();
}

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC5Books15BKTapActionView_fixedSize);
  if (self->fixedSize[OBJC_IVAR____TtC5Books15BKTapActionView_fixedSize + 8])
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for BKTapActionView();
    [(BKTapActionView *)&v5 intrinsicContentSize];
  }

  else
  {
    v3 = *v2;
    v4 = v2[1];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)fireAction:(id)action
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BKTapActionView_action);
  selfCopy = self;

  v3(v4);
}

- (void)be_singleTapAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BKTapActionView_action);
  selfCopy = self;

  v2(v3);
}

- (_TtC5Books15BKTapActionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v12 = sub_1004EE728(interactionCopy);

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1004EE830(interactionCopy);

  return v9;
}

@end