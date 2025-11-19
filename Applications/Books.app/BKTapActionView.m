@interface BKTapActionView
- (CGSize)intrinsicContentSize;
- (_TtC5Books15BKTapActionView)initWithCoder:(id)a3;
- (_TtC5Books15BKTapActionView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)be_singleTapAction;
- (void)didMoveToWindow;
- (void)fireAction:(id)a3;
@end

@implementation BKTapActionView

- (_TtC5Books15BKTapActionView)initWithCoder:(id)a3
{
  *&self->fixedSize[OBJC_IVAR____TtC5Books15BKTapActionView_listener] = 0;
  swift_unknownObjectWeakInit();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
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

- (void)fireAction:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BKTapActionView_action);
  v5 = self;

  v3(v4);
}

- (void)be_singleTapAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BKTapActionView_action);
  v4 = self;

  v2(v3);
}

- (_TtC5Books15BKTapActionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1004EE728(v8);

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1004EE830(v6);

  return v9;
}

@end