@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100009F78(0, &qword_1011B76A0);
  sub_100BE3E08();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9.receiver = v7;
  v9.super_class = type metadata accessor for SliderView.PanGestureRecognizer();
  [(SliderView.PanGestureRecognizer *)&v9 touchesBegan:isa withEvent:v6];

  [(SliderView.PanGestureRecognizer *)v7 setState:1];
}

- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_100BDFD38(v6, a4);
}

@end