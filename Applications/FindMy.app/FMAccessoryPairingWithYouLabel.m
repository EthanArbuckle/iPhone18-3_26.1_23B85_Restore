@interface FMAccessoryPairingWithYouLabel
- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)init;
- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)initWithCoder:(id)a3;
- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)initWithFrame:(CGRect)a3;
@end

@implementation FMAccessoryPairingWithYouLabel

- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)init
{
  v3 = OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_dotView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingWithYouIndicator()) init];
  v4 = OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_textLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAccessoryPairingWithYouLabel();
  v5 = [(FMAccessoryPairingWithYouLabel *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1003BB26C();

  return v5;
}

- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_dotView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingWithYouIndicator()) init];
  v5 = OBJC_IVAR____TtC6FindMy30FMAccessoryPairingWithYouLabel_textLabel;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy30FMAccessoryPairingWithYouLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end