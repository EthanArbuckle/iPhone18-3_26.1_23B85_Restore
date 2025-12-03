@interface ResizeGestureRecognizer
- (_TtC8PaperKitP33_625D4AAB7AD9DA9F2F4DB07EDC29229023ResizeGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (int64_t)state;
- (void)setState:(int64_t)state;
@end

@implementation ResizeGestureRecognizer

- (int64_t)state
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ResizeGestureRecognizer();
  return [(ResizeGestureRecognizer *)&v3 state];
}

- (void)setState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ResizeGestureRecognizer();
  v4 = v7.receiver;
  [(ResizeGestureRecognizer *)&v7 setState:state];
  if (![v4 delegate])
  {
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

- (_TtC8PaperKitP33_625D4AAB7AD9DA9F2F4DB07EDC29229023ResizeGestureRecognizer)initWithTarget:(id)target action:(SEL)action
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

  return ResizeGestureRecognizer.init(target:action:)(v6, action);
}

@end