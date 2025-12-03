@interface ReactionEffectViewController
- (_TtC22_GroupActivities_UIKit28ReactionEffectViewController)initWithCoder:(id)coder;
- (_TtC22_GroupActivities_UIKit28ReactionEffectViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation ReactionEffectViewController

- (void)loadView
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView);
  selfCopy = self;
  [v4 setUserInteractionEnabled_];
  [(ReactionEffectViewController *)selfCopy setView:*(&self->super.super.super.isa + v3)];
}

- (_TtC22_GroupActivities_UIKit28ReactionEffectViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView;
  type metadata accessor for ReactionEffectView();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v9) = [v10 init];
  if (v8)
  {
    v12 = MEMORY[0x23EEA6320](v6, v8);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ReactionEffectViewController();
  v13 = [(ReactionEffectViewController *)&v15 initWithNibName:v12 bundle:bundleCopy];

  return v13;
}

- (_TtC22_GroupActivities_UIKit28ReactionEffectViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit28ReactionEffectViewController_effectView;
  type metadata accessor for ReactionEffectView();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for ReactionEffectViewController();
  v8 = [(ReactionEffectViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end