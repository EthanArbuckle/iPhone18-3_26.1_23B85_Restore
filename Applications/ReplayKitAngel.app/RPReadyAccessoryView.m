@interface RPReadyAccessoryView
- (CGSize)intrinsicContentSize;
- (_TtC14ReplayKitAngel20RPReadyAccessoryView)initWithCoder:(id)a3;
- (_TtC14ReplayKitAngel20RPReadyAccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RPReadyAccessoryView

- (_TtC14ReplayKitAngel20RPReadyAccessoryView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  v4 = sub_10003720C();
  v5 = *(v4 + 1);
  *v3 = *v4;
  v3[1] = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000388E8();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_100038EE0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC14ReplayKitAngel20RPReadyAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end