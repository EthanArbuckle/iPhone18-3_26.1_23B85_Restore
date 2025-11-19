@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100009130(0, &qword_100610C90);
  sub_1003A7E54();
  sub_1004BC664();
  v6 = a4;
  v7 = self;
  isa = sub_1004BC654().super.isa;

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
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1003A3AFC(v6, a4);
}

@end