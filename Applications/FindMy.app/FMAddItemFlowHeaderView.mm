@interface FMAddItemFlowHeaderView
- (_TtC6FindMy23FMAddItemFlowHeaderView)init;
- (_TtC6FindMy23FMAddItemFlowHeaderView)initWithCoder:(id)coder;
- (_TtC6FindMy23FMAddItemFlowHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation FMAddItemFlowHeaderView

- (_TtC6FindMy23FMAddItemFlowHeaderView)init
{
  v3 = OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_headerLabel;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_subheaderLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAddItemFlowHeaderView();
  v5 = [(FMAddItemFlowHeaderView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1003BACF0();
  sub_1003BAF08();

  return v5;
}

- (_TtC6FindMy23FMAddItemFlowHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_headerLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_subheaderLabel;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy23FMAddItemFlowHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end