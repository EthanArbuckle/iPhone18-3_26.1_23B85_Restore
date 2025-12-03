@interface ReactionEffectView
- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithCoder:(id)coder;
- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithFrame:(CGRect)frame;
@end

@implementation ReactionEffectView

- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions) = MEMORY[0x277D84FA0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReactionEffectView();
  return [(ReactionEffectView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for ReactionEffectView();
  coderCopy = coder;
  v5 = [(ReactionEffectView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end