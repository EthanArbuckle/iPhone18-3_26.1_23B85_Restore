@interface PageLabelView
- (_TtC8PaperKit13PageLabelView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_fadeOut;
- (void)dealloc;
@end

@implementation PageLabelView

- (_TtC8PaperKit13PageLabelView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8PaperKit13PageLabelView_blurEffect;
  *(&self->super.super.super.isa + v4) = [objc_opt_self() effectWithStyle_];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit13PageLabelView_showsSidebarIcon) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC8PaperKit13PageLabelView_timer;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit13PageLabelView_timer);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for PageLabelView();
  [(PageLabelView *)&v7 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView);
  eventCopy = event;
  selfCopy = self;
  [v7 frame];
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v15, v14))
  {
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = type metadata accessor for PageLabelView();
    v10 = [(PageLabelView *)&v12 hitTest:eventCopy withEvent:x, y];

    selfCopy = v10;
  }

  return selfCopy;
}

- (void)_fadeOut
{
  selfCopy = self;
  PageLabelView._fadeOut()();
}

@end