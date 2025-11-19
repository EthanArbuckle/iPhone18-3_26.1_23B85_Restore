@interface ClimateFocusStackView
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate21ClimateFocusStackView)initWithCoder:(id)a3;
@end

@implementation ClimateFocusStackView

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  v3 = [(ClimateFocusStackView *)v2 arrangedSubviews];
  sub_100005AA0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000C5884(v4);

  sub_1000040E8(&unk_1001150F0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC7Climate21ClimateFocusStackView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateFocusStackView();
  return [(ClimateFocusStackView *)&v5 initWithCoder:a3];
}

@end