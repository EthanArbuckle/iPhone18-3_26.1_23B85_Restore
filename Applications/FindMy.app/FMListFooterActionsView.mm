@interface FMListFooterActionsView
- (_TtC6FindMy23FMListFooterActionsView)init;
- (_TtC6FindMy23FMListFooterActionsView)initWithCoder:(id)a3;
- (_TtC6FindMy23FMListFooterActionsView)initWithFrame:(CGRect)a3;
@end

@implementation FMListFooterActionsView

- (_TtC6FindMy23FMListFooterActionsView)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMListFooterActionsView_actions) = _swiftEmptyArrayStorage;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMListFooterActionsView();
  v2 = [(FMListFooterActionsView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(FMListFooterActionsView *)v2 setAxis:1];
  [(FMListFooterActionsView *)v2 setAlignment:0];
  [(FMListFooterActionsView *)v2 setLayoutMarginsRelativeArrangement:1];
  [(FMListFooterActionsView *)v2 directionalLayoutMargins];
  [(FMListFooterActionsView *)v2 setDirectionalLayoutMargins:12.0];

  return v2;
}

- (_TtC6FindMy23FMListFooterActionsView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMListFooterActionsView_actions) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy23FMListFooterActionsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end