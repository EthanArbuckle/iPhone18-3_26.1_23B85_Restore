@interface FMPlatterInfoView
- (_TtC6FindMy17FMPlatterInfoView)initWithFrame:(CGRect)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FMPlatterInfoView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = v7;
  v10.super_class = type metadata accessor for FMPlatterInfoView();
  [(FMPlatterInfoView *)&v10 touchesBegan:isa withEvent:v6];

  v9 = [objc_opt_self() secondarySystemFillColor];
  [(FMPlatterInfoView *)v7 setBackgroundColor:v9];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1002B29DC(v6, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPlatterInfoView();
  v4 = a3;
  v5 = v8.receiver;
  [(FMPlatterInfoView *)&v8 traitCollectionDidChange:v4];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = [v5 traitCollection];
  v7 = sub_100356E0C(v6);

  [v5 setBackgroundColor:v7];
}

- (_TtC6FindMy17FMPlatterInfoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end