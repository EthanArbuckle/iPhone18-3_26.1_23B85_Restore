@interface FMHyperlinkPlatterInfoView
- (_TtC6FindMy26FMHyperlinkPlatterInfoView)initWithFrame:(CGRect)a3;
- (void)buttonPressed;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMHyperlinkPlatterInfoView

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010053C();
}

- (void)buttonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_actionHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_button);
    v7[3] = sub_100100354();
    v7[0] = v3;
    v5 = self;
    sub_100062900(v2);
    v6 = v3;
    v2(v7);

    sub_10001835C(v2);
    sub_100006060(v7);
  }
}

- (_TtC6FindMy26FMHyperlinkPlatterInfoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end