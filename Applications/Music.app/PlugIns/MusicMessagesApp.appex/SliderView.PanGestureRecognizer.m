@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100006F10(0, &qword_1006449E0);
  sub_1003C980C();
  sub_1004DDC3C();
  v6 = a4;
  v7 = self;
  isa = sub_1004DDC2C().super.isa;

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
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1003C54B4(v6, a4);
}

@end