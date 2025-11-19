@interface ReactionEffectView
- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithCoder:(id)a3;
- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithFrame:(CGRect)a3;
@end

@implementation ReactionEffectView

- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions) = MEMORY[0x277D84FA0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReactionEffectView();
  return [(ReactionEffectView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22_GroupActivities_UIKit18ReactionEffectView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit18ReactionEffectView_reactions) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for ReactionEffectView();
  v4 = a3;
  v5 = [(ReactionEffectView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end