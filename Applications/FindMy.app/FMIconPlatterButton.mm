@interface FMIconPlatterButton
- (NSString)accessibilityLabel;
- (_TtC6FindMy19FMIconPlatterButton)init;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMIconPlatterButton

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1000D1CDC();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14.receiver = selfCopy;
  v14.super_class = type metadata accessor for FMIconPlatterButton();
  [(FMPlatterButton *)&v14 touchesBegan:isa withEvent:eventCopy];

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = selfCopy;
  v13[4] = sub_1000D5C8C;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100004AE4;
  v13[3] = &unk_1006259A8;
  v11 = _Block_copy(v13);
  v12 = selfCopy;

  [v9 animateWithDuration:v11 animations:0.25];

  _Block_release(v11);
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for FMIconPlatterButton();
  changeCopy = change;
  v5 = v11.receiver;
  [(FMPlatterButton *)&v11 traitCollectionDidChange:changeCopy];
  sub_1000D3C9C();
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  v10[4] = sub_1000D5E8C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100004AE4;
  v10[3] = &unk_1006258B8;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v6 animateWithDuration:v8 animations:0.35];

  _Block_release(v8);
}

- (_TtC6FindMy19FMIconPlatterButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end