@interface FMPlatterInfoView
- (_TtC6FindMy17FMPlatterInfoView)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMPlatterInfoView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for FMPlatterInfoView();
  [(FMPlatterInfoView *)&v10 touchesBegan:isa withEvent:eventCopy];

  secondarySystemFillColor = [objc_opt_self() secondarySystemFillColor];
  [(FMPlatterInfoView *)selfCopy setBackgroundColor:secondarySystemFillColor];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_1002B29DC(v6, event);
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPlatterInfoView();
  changeCopy = change;
  v5 = v8.receiver;
  [(FMPlatterInfoView *)&v8 traitCollectionDidChange:changeCopy];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  traitCollection = [v5 traitCollection];
  v7 = sub_100356E0C(traitCollection);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy17FMPlatterInfoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end