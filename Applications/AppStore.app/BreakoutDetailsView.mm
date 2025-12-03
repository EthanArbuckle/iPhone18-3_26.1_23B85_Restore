@interface BreakoutDetailsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore19BreakoutDetailsView)initWithFrame:(CGRect)frame;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BreakoutDetailsView

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_10014D6EC(in, selfCopy);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_10014D6EC(selfCopy, selfCopy);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10014BE4C();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(BreakoutDetailsView *)&v7 traitCollectionDidChange:changeCopy];
  contentView = [*&v5[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView] contentView];
  sub_100149418();
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  [contentView setLayoutMargins:?];

  sub_1001487E0();
  sub_10014A590();
  [v5 setNeedsLayout];
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (_TtC8AppStore19BreakoutDetailsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end