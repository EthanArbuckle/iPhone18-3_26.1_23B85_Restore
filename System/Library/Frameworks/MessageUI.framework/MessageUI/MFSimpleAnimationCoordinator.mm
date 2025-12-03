@interface MFSimpleAnimationCoordinator
- (MFSimpleAnimationCoordinator)init;
- (id)initCoordinatorAnimated:(BOOL)animated;
- (void)animateAlongsideAnimations:(id)animations completion:(id)completion;
- (void)playAnimations;
- (void)playCompletions:(BOOL)completions;
@end

@implementation MFSimpleAnimationCoordinator

- (id)initCoordinatorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = [(MFSimpleAnimationCoordinator *)self init];
  v5 = v4;
  if (v4)
  {
    [(MFSimpleAnimationCoordinator *)v4 setAnimated:animatedCopy];
  }

  return v5;
}

- (MFSimpleAnimationCoordinator)init
{
  v6.receiver = self;
  v6.super_class = MFSimpleAnimationCoordinator;
  v2 = [(MFSimpleAnimationCoordinator *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(MFSimpleAnimationCoordinator *)v2 setAnimations:array];

    array2 = [MEMORY[0x1E695DF70] array];
    [(MFSimpleAnimationCoordinator *)v2 setCompletions:array2];
  }

  return v2;
}

- (void)animateAlongsideAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (animationsCopy)
  {
    v7 = [animationsCopy copy];
    animations = [(MFSimpleAnimationCoordinator *)self animations];
    v9 = _Block_copy(v7);
    [animations addObject:v9];
  }

  if (completionCopy)
  {
    v10 = [completionCopy copy];
    completions = [(MFSimpleAnimationCoordinator *)self completions];
    v12 = _Block_copy(v10);
    [completions addObject:v12];
  }
}

- (void)playAnimations
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  animations = [(MFSimpleAnimationCoordinator *)self animations];
  v3 = [animations countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(animations);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [animations countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)playCompletions:(BOOL)completions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  completions = [(MFSimpleAnimationCoordinator *)self completions];
  v4 = [completions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(completions);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [completions countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end