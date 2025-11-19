@interface PanRecognizerWithInitialTouch
- (_TtC7Measure29PanRecognizerWithInitialTouch)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PanRecognizerWithInitialTouch

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_10001B92C();
  sub_10001B978();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = v9;
  v19.super_class = ObjectType;
  [(PanRecognizerWithInitialTouch *)&v19 touchesBegan:isa withEvent:v8];

  v11 = sub_10008CA00(v7);
  if (v11)
  {
    v12 = v11;

    v13 = [(PanRecognizerWithInitialTouch *)v9 view];
    [v12 locationInView:v13];
    v15 = v14;
    v17 = v16;

    v18 = v9 + OBJC_IVAR____TtC7Measure29PanRecognizerWithInitialTouch_initialTouchLocation;
    *v18 = v15;
    *(v18 + 1) = v17;
    v18[16] = 0;
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Measure29PanRecognizerWithInitialTouch)initWithTarget:(id)a3 action:(SEL)a4
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

  return sub_10008CC58(v6, a4);
}

@end