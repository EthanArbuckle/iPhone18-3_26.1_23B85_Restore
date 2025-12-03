@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100006F10(0, &qword_1006449E0);
  sub_1003C980C();
  sub_1004DDC3C();
  eventCopy = event;
  selfCopy = self;
  isa = sub_1004DDC2C().super.isa;

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
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1003C54B4(v6, action);
}

@end