@interface AVAppStoreBehavior
+ (AVAppStoreBehavior)behaviorWithFirstGenerationEmbeddedPlayer;
- (AVAppStoreBehaviorContext)behaviorContext;
- (void)willMoveToContext:(id)a3;
@end

@implementation AVAppStoreBehavior

- (AVAppStoreBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

- (void)willMoveToContext:(id)a3
{
  v5 = a3;
  if ([(AVAppStoreBehavior *)self prefersFirstGenerationControlsWhenEmbeddedInline])
  {
    v4 = [v5 playerViewController];
    [v4 setControlsGeneration:0];
  }
}

+ (AVAppStoreBehavior)behaviorWithFirstGenerationEmbeddedPlayer
{
  v2 = objc_alloc_init(AVAppStoreBehavior);
  v2->_prefersFirstGenerationControlsWhenEmbeddedInline = 1;

  return v2;
}

@end