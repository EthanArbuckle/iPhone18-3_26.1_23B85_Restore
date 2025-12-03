@interface PassThroughStackView
- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA20PassThroughStackView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassThroughStackView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1001CB98C(event, x, y);

  return v10;
}

- (_TtC5MusicP33_B29993BA797B47F8C660EB2DB95D08BA20PassThroughStackView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PassThroughStackView();
  return [(PassThroughStackView *)&v5 initWithCoder:coder];
}

@end