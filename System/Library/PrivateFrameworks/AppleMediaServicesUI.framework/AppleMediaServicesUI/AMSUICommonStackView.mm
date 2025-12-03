@interface AMSUICommonStackView
- (void)addArrangedSubviews:(id)subviews;
- (void)removeArrangedSubviews;
@end

@implementation AMSUICommonStackView

- (void)addArrangedSubviews:(id)subviews
{
  v15 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [subviewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviewsCopy);
        }

        [(AMSUICommonStackView *)self addArrangedSubview:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [subviewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeArrangedSubviews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  arrangedSubviews = [(AMSUICommonStackView *)self arrangedSubviews];
  v3 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end