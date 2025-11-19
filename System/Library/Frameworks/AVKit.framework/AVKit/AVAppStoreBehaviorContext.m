@interface AVAppStoreBehaviorContext
- (AVAppStoreBehavior)behavior;
- (AVAppStoreBehaviorContext)initWithAVKitOwner:(id)a3;
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
  v4 = [WeakRetained prefersFirstGenerationControlsWhenEmbeddedInline];

  if (v4)
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
    v8 = [v7 controlsGeneration];

    if (v8)
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

- (AVAppStoreBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVAppStoreBehaviorContext;
  v5 = [(AVAppStoreBehaviorContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, v4);
  }

  return v6;
}

@end