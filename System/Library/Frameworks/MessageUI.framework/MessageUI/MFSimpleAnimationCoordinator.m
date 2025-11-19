@interface MFSimpleAnimationCoordinator
- (MFSimpleAnimationCoordinator)init;
- (id)initCoordinatorAnimated:(BOOL)a3;
- (void)animateAlongsideAnimations:(id)a3 completion:(id)a4;
- (void)playAnimations;
- (void)playCompletions:(BOOL)a3;
@end

@implementation MFSimpleAnimationCoordinator

- (id)initCoordinatorAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFSimpleAnimationCoordinator *)self init];
  v5 = v4;
  if (v4)
  {
    [(MFSimpleAnimationCoordinator *)v4 setAnimated:v3];
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
    v3 = [MEMORY[0x1E695DF70] array];
    [(MFSimpleAnimationCoordinator *)v2 setAnimations:v3];

    v4 = [MEMORY[0x1E695DF70] array];
    [(MFSimpleAnimationCoordinator *)v2 setCompletions:v4];
  }

  return v2;
}

- (void)animateAlongsideAnimations:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = [v13 copy];
    v8 = [(MFSimpleAnimationCoordinator *)self animations];
    v9 = _Block_copy(v7);
    [v8 addObject:v9];
  }

  if (v6)
  {
    v10 = [v6 copy];
    v11 = [(MFSimpleAnimationCoordinator *)self completions];
    v12 = _Block_copy(v10);
    [v11 addObject:v12];
  }
}

- (void)playAnimations
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [(MFSimpleAnimationCoordinator *)self animations];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)playCompletions:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(MFSimpleAnimationCoordinator *)self completions];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end