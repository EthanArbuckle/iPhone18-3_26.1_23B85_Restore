@interface AVPlayerViewControllerAnimationCoordinator
- (AVPlayerViewControllerAnimationCoordinator)init;
- (void)addCoordinatedAnimations:(id)animations completion:(id)completion;
- (void)didFinishAnimations:(BOOL)animations;
- (void)performCoordinatedAnimations;
@end

@implementation AVPlayerViewControllerAnimationCoordinator

- (void)didFinishAnimations:(BOOL)animations
{
  v18 = *MEMORY[0x1E69E9840];
  completions = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
  v5 = [completions copy];

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

  completions2 = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
  [completions2 removeAllObjects];
}

- (void)performCoordinatedAnimations
{
  v17 = *MEMORY[0x1E69E9840];
  animations = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
  v4 = [animations copy];

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

  animations2 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
  [animations2 removeAllObjects];
}

- (void)addCoordinatedAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  animations = [(AVPlayerViewControllerAnimationCoordinator *)self animations];

  if (animations)
  {
    if (animationsCopy)
    {
      animations2 = [(AVPlayerViewControllerAnimationCoordinator *)self animations];
      v9 = [animationsCopy copy];
      [animations2 addObject:v9];
    }

    if (completionCopy)
    {
      completions = [(AVPlayerViewControllerAnimationCoordinator *)self completions];
      v11 = [completionCopy copy];
      [completions addObject:v11];
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
    array = [MEMORY[0x1E695DF70] array];
    animations = v2->_animations;
    v2->_animations = array;

    array2 = [MEMORY[0x1E695DF70] array];
    completions = v2->_completions;
    v2->_completions = array2;
  }

  return v2;
}

@end