@interface APWrappingView
- (void)layoutSubviews;
@end

@implementation APWrappingView

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(APWrappingView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        safeAreaLayoutGuide = [(APWrappingView *)self safeAreaLayoutGuide];
        [safeAreaLayoutGuide frameInView:self];
        [v8 setFrame:?];

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end