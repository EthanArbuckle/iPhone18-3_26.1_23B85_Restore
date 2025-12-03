@interface PanGestureRecognizer
- (_TtC12NowPlayingUIP33_FA232F067623283ED0BBB5857CB78B8620PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation PanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_2B860(0, &qword_1C2F38);
  sub_510F8();
  sub_144B5C();
  eventCopy = event;
  selfCopy = self;
  isa = sub_144B4C().super.isa;

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for PanGestureRecognizer();
  [(PanGestureRecognizer *)&v9 touchesBegan:isa withEvent:eventCopy];

  [(PanGestureRecognizer *)selfCopy setState:1];
}

- (_TtC12NowPlayingUIP33_FA232F067623283ED0BBB5857CB78B8620PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_4901C(v6, action);
}

@end