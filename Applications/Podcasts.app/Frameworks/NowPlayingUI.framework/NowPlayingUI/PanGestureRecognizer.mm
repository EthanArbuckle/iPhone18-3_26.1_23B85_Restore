@interface PanGestureRecognizer
- (_TtC12NowPlayingUIP33_FA232F067623283ED0BBB5857CB78B8620PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_2B860(0, &qword_1C2F38);
  sub_510F8();
  sub_144B5C();
  v6 = a4;
  v7 = self;
  isa = sub_144B4C().super.isa;

  v9.receiver = v7;
  v9.super_class = type metadata accessor for PanGestureRecognizer();
  [(PanGestureRecognizer *)&v9 touchesBegan:isa withEvent:v6];

  [(PanGestureRecognizer *)v7 setState:1];
}

- (_TtC12NowPlayingUIP33_FA232F067623283ED0BBB5857CB78B8620PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_4901C(v6, a4);
}

@end