@interface PageLabelView
- (_TtC8PaperKit13PageLabelView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_fadeOut;
- (void)dealloc;
@end

@implementation PageLabelView

- (_TtC8PaperKit13PageLabelView)initWithCoder:(id)a3
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
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = 0;

  v7.receiver = v5;
  v7.super_class = type metadata accessor for PageLabelView();
  [(PageLabelView *)&v7 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit13PageLabelView_blurView);
  v8 = a4;
  v9 = self;
  [v7 frame];
  v14.x = x;
  v14.y = y;
  if (CGRectContainsPoint(v15, v14))
  {
  }

  else
  {
    v12.receiver = v9;
    v12.super_class = type metadata accessor for PageLabelView();
    v10 = [(PageLabelView *)&v12 hitTest:v8 withEvent:x, y];

    v9 = v10;
  }

  return v9;
}

- (void)_fadeOut
{
  v2 = self;
  PageLabelView._fadeOut()();
}

@end