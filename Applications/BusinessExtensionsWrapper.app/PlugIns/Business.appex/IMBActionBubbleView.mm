@interface IMBActionBubbleView
- (_TtC8Business19IMBActionBubbleView)initWithCoder:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation IMBActionBubbleView

- (_TtC8Business19IMBActionBubbleView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for IMBAuthenticationTapIndicator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
  sub_100080BF0();
  sub_1000AC26C();
  v6 = a4;
  v7 = self;
  isa = sub_1000AC25C().super.isa;

  v10.receiver = v7;
  v10.super_class = type metadata accessor for IMBActionBubbleView();
  [(IMBBubbleView *)&v10 touchesBegan:isa withEvent:v6];

  v9 = [*(&v7->super.super.super.super.isa + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator) layer];
  if (qword_1000EED88 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1000FBE90];
}

@end