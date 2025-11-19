@interface FMPlatterButton
- (_TtC6FindMy15FMPlatterButton)initWithCoder:(id)a3;
- (_TtC6FindMy15FMPlatterButton)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMPlatterButton

- (void)traitCollectionDidChange:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0xE0);
  v4 = self;
  v3();
}

- (_TtC6FindMy15FMPlatterButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment) = 3;
  v4 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = v7;
  v10.super_class = type metadata accessor for FMPlatterButton();
  [(FMPlatterButton *)&v10 touchesBegan:isa withEvent:v6];

  v9 = [objc_opt_self() secondarySystemFillColor];
  [(FMPlatterButton *)v7 setBackgroundColor:v9];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1004F465C(v6, a4);
}

- (_TtC6FindMy15FMPlatterButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end