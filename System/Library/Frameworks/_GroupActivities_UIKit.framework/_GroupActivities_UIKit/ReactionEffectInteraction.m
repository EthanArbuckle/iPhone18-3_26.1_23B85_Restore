@interface ReactionEffectInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation ReactionEffectInteraction

- (UIView)view
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ReactionEffectInteraction.willMove(to:)();
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  ReactionEffectInteraction.didMove(to:)(a3);
}

@end