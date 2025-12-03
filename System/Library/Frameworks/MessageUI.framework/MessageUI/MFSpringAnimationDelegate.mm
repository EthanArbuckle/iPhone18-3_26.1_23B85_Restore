@interface MFSpringAnimationDelegate
- (MFSpringAnimationDelegate)init;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation MFSpringAnimationDelegate

- (MFSpringAnimationDelegate)init
{
  v6.receiver = self;
  v6.super_class = MFSpringAnimationDelegate;
  v2 = [(MFSpringAnimationDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;
  }

  return v2;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_completionBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
}

@end