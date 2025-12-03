@interface AVAppStoreBehavior
+ (AVAppStoreBehavior)behaviorWithFirstGenerationEmbeddedPlayer;
- (AVAppStoreBehaviorContext)behaviorContext;
- (void)willMoveToContext:(id)context;
@end

@implementation AVAppStoreBehavior

- (AVAppStoreBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

- (void)willMoveToContext:(id)context
{
  contextCopy = context;
  if ([(AVAppStoreBehavior *)self prefersFirstGenerationControlsWhenEmbeddedInline])
  {
    playerViewController = [contextCopy playerViewController];
    [playerViewController setControlsGeneration:0];
  }
}

+ (AVAppStoreBehavior)behaviorWithFirstGenerationEmbeddedPlayer
{
  v2 = objc_alloc_init(AVAppStoreBehavior);
  v2->_prefersFirstGenerationControlsWhenEmbeddedInline = 1;

  return v2;
}

@end