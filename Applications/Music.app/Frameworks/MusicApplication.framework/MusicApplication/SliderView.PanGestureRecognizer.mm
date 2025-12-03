@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_13C80(0, &qword_E1DAE0);
  sub_88E0D8();
  sub_AB9B40();
  eventCopy = event;
  selfCopy = self;
  isa = sub_AB9B30().super.isa;

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for SliderView.PanGestureRecognizer();
  [(SliderView.PanGestureRecognizer *)&v9 touchesBegan:isa withEvent:eventCopy];

  [(SliderView.PanGestureRecognizer *)selfCopy setState:1];
}

- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_889D80(v6, action);
}

@end