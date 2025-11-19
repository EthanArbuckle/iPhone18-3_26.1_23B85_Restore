@interface DeveloperLinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)a3;
- (void)didTapLink:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DeveloperLinkView

- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_5CDE6C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(DeveloperLinkView *)self measurementsWithFitting:self in:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_5CE244();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)didTapLink:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_5CEC90(a3);
}

@end