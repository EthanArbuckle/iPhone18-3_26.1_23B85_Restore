@interface IMBActionBubbleView
- (_TtC8Business19IMBActionBubbleView)initWithCoder:(id)coder;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation IMBActionBubbleView

- (_TtC8Business19IMBActionBubbleView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for IMBAuthenticationTapIndicator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100005A24(0, &qword_1000F2A68, UITouch_ptr);
  sub_100080BF0();
  sub_1000AC26C();
  eventCopy = event;
  selfCopy = self;
  isa = sub_1000AC25C().super.isa;

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for IMBActionBubbleView();
  [(IMBBubbleView *)&v10 touchesBegan:isa withEvent:eventCopy];

  layer = [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator) layer];
  if (qword_1000EED88 != -1)
  {
    swift_once();
  }

  [layer setBackgroundColor:qword_1000FBE90];
}

@end