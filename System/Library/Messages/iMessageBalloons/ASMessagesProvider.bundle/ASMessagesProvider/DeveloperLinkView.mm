@interface DeveloperLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)coder;
- (void)didTapLink:(id)link;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DeveloperLinkView

- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_5CDE6C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(DeveloperLinkView *)self measurementsWithFitting:self in:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)didTapLink:(id)link
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_5CEC90(change);
}

@end