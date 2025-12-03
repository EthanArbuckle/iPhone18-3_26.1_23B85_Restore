@interface PanRecognizerWithInitialTouch
- (_TtC7Measure29PanRecognizerWithInitialTouch)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation PanRecognizerWithInitialTouch

- (void)touchesBegan:(id)began withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_10001B92C();
  sub_10001B978();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = selfCopy;
  v19.super_class = ObjectType;
  [(PanRecognizerWithInitialTouch *)&v19 touchesBegan:isa withEvent:eventCopy];

  v11 = sub_10008CA00(v7);
  if (v11)
  {
    v12 = v11;

    view = [(PanRecognizerWithInitialTouch *)selfCopy view];
    [v12 locationInView:view];
    v15 = v14;
    v17 = v16;

    v18 = selfCopy + OBJC_IVAR____TtC7Measure29PanRecognizerWithInitialTouch_initialTouchLocation;
    *v18 = v15;
    *(v18 + 1) = v17;
    v18[16] = 0;
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Measure29PanRecognizerWithInitialTouch)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_10008CC58(v6, action);
}

@end