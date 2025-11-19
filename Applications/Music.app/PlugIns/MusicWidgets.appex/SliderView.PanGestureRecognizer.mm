@interface SliderView.PanGestureRecognizer
- (_TtCC11MusicCoreUI10SliderViewP33_54515F1554A39BA10CF5FF24DBCB49D920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1000D3B98(0, &qword_1006F5BC0);
  sub_10045DAA0();
  sub_1005730F8();
  v6 = a4;
  v7 = self;
  isa = sub_1005730E8().super.isa;

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
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_100459748(v6, a4);
}

@end