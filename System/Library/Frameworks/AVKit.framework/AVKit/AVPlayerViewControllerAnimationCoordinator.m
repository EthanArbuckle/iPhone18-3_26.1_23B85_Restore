@interface AVPlayerViewControllerAnimationCoordinator
- (AVPlayerViewControllerAnimationCoordinator)init;
- (void)addCoordinatedAnimations:(id)a3 completion:(id)a4;
- (void)didFinishAnimations:(BOOL)a3;
- (void)performCoordinatedAnimations;
@end

@implementation AVPlayerViewControllerAnimationCoordinator

- (void)didFinishAnimations:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
  v5 = [v4 copy];

  completions = self->_completions;
  self->_completions = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
  [v12 removeAllObjects];
}

- (void)performCoordinatedAnimations
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
  v4 = [v3 copy];

  animations = self->_animations;
  self->_animations = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
  [v11 removeAllObjects];
}

- (void)addCoordinatedAnimations:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];

  if (v7)
  {
    if (v12)
    {
      v8 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
      v9 = [v12 copy];
      [v8 addObject:v9];
    }

    if (v6)
    {
      v10 = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
      v11 = [v6 copy];
      [v10 addObject:v11];
    }
  }

  else
  {
    NSLog(&cfstr_Avplayerviewco_80.isa);
  }
}

- (AVPlayerViewControllerAnimationCoordinator)init
{
  v8.receiver = self;
  v8.super_class = AVPlayerViewControllerAnimationCoordinator;
  v2 = [(AVPlayerViewControllerAnimationCoordinator *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    animations = v2->_animations;
    v2->_animations = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    completions = v2->_completions;
    v2->_completions = v5;
  }

  return v2;
}

@end