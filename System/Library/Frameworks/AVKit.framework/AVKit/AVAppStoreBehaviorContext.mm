@interface AVAppStoreBehaviorContext
- (AVAppStoreBehavior)behavior;
- (AVAppStoreBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVPlayerViewController)playerViewController;
- (void)_toggleControlsGenerationIfPossible;
@end

@implementation AVAppStoreBehaviorContext

- (AVAppStoreBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)_toggleControlsGenerationIfPossible
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);
  prefersFirstGenerationControlsWhenEmbeddedInline = [WeakRetained prefersFirstGenerationControlsWhenEmbeddedInline];

  if (prefersFirstGenerationControlsWhenEmbeddedInline)
  {
    v5 = +[AVKitGlobalSettings shared];
    if ([v5 thirdGenerationControlsEnabled])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = objc_loadWeakRetained(&self->_playerViewController);
    controlsGeneration = [v7 controlsGeneration];

    if (controlsGeneration)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = objc_loadWeakRetained(&self->_playerViewController);
    [v10 setControlsGeneration:v9];
  }
}

- (AVAppStoreBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = AVAppStoreBehaviorContext;
  v5 = [(AVAppStoreBehaviorContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, ownerCopy);
  }

  return v6;
}

@end