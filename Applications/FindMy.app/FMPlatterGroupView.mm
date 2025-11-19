@interface FMPlatterGroupView
- (_TtC6FindMy18FMPlatterGroupView)init;
- (_TtC6FindMy18FMPlatterGroupView)initWithCoder:(id)a3;
- (_TtC6FindMy18FMPlatterGroupView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMPlatterGroupView

- (_TtC6FindMy18FMPlatterGroupView)init
{
  v3 = OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIStackView) init];
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPlatterGroupView();
  v4 = [(FMPlatterGroupView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v5 = *((swift_isaMask & v4->super.super.super.isa) + 0x58);
  v6 = v4;
  v5();
  sub_100120088();
  (*((swift_isaMask & v6->super.super.super.isa) + 0x68))();

  return v6;
}

- (_TtC6FindMy18FMPlatterGroupView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIStackView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001203C8(a3);
}

- (_TtC6FindMy18FMPlatterGroupView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end