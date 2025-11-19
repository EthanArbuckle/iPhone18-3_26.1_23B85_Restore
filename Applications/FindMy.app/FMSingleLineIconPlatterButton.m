@interface FMSingleLineIconPlatterButton
- (BOOL)isUserInteractionEnabled;
- (NSString)accessibilityLabel;
- (_TtC6FindMy29FMSingleLineIconPlatterButton)init;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation FMSingleLineIconPlatterButton

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_label);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)isUserInteractionEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMSingleLineIconPlatterButton();
  return [(FMSingleLineIconPlatterButton *)&v3 isUserInteractionEnabled];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMSingleLineIconPlatterButton();
  v4 = v5.receiver;
  [(FMSingleLineIconPlatterButton *)&v5 setUserInteractionEnabled:v3];
  [*&v4[OBJC_IVAR____TtC6FindMy29FMSingleLineIconPlatterButton_label] setEnabled:{v3, v5.receiver, v5.super_class}];
}

- (_TtC6FindMy29FMSingleLineIconPlatterButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end