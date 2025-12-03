@interface ReactionEffectInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation ReactionEffectInteraction

- (UIView)view
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  specialized ReactionEffectInteraction.willMove(to:)();
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ReactionEffectInteraction.didMove(to:)(view);
}

@end