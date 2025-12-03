@interface FMLostModeSummaryEntryView
- (_TtC6FindMy26FMLostModeSummaryEntryView)init;
- (_TtC6FindMy26FMLostModeSummaryEntryView)initWithCoder:(id)coder;
- (_TtC6FindMy26FMLostModeSummaryEntryView)initWithFrame:(CGRect)frame;
@end

@implementation FMLostModeSummaryEntryView

- (_TtC6FindMy26FMLostModeSummaryEntryView)init
{
  v3 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMLostModeSummaryEntryView();
  v5 = [(FMLostModeSummaryEntryView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10043389C();

  return v5;
}

- (_TtC6FindMy26FMLostModeSummaryEntryView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy26FMLostModeSummaryEntryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end