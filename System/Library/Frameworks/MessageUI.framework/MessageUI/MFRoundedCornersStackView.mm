@interface MFRoundedCornersStackView
- (MFRoundedCornersStackView)initWithCoder:(id)coder;
- (MFRoundedCornersStackView)initWithFrame:(CGRect)frame;
- (void)mf_addArrangedSubviews:(id)subviews;
- (void)updateRoundedCorners;
@end

@implementation MFRoundedCornersStackView

- (MFRoundedCornersStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFRoundedCornersStackView;
  v3 = [(MFRoundedCornersStackView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFRoundedCornersStackView *)v3 setCornerRadius:0.0];
  }

  return v4;
}

- (MFRoundedCornersStackView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MFRoundedCornersStackView;
  v5 = [(MFRoundedCornersStackView *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(MFRoundedCornersStackView *)v5 setCornerRadius:0.0];
  }

  return v6;
}

- (void)mf_addArrangedSubviews:(id)subviews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subviewsCopy = subviews;
  v5 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(subviewsCopy);
        }

        [(MFRoundedCornersStackView *)self addArrangedSubview:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(MFRoundedCornersStackView *)self updateRoundedCorners];
}

- (void)updateRoundedCorners
{
  v27 = *MEMORY[0x1E69E9840];
  arrangedSubviews = [(MFRoundedCornersStackView *)self arrangedSubviews];
  v4 = [arrangedSubviews count];

  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    arrangedSubviews2 = [(MFRoundedCornersStackView *)self arrangedSubviews];
    v6 = [arrangedSubviews2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(arrangedSubviews2);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          layer = [v9 layer];
          [layer setCornerRadius:0.0];

          layer2 = [v9 layer];
          [layer2 setMaskedCorners:0];
        }

        v6 = [arrangedSubviews2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__MFRoundedCornersStackView_updateRoundedCorners__block_invoke;
    aBlock[3] = &unk_1E8070840;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    [(MFRoundedCornersStackView *)self cornerRadius];
    if (v13 > 0.0)
    {
      effectiveUserInterfaceLayoutDirection = [(MFRoundedCornersStackView *)self effectiveUserInterfaceLayoutDirection];
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v15 = 10;
      }

      else
      {
        v15 = 5;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v16 = 5;
      }

      else
      {
        v16 = 10;
      }

      arrangedSubviews3 = [(MFRoundedCornersStackView *)self arrangedSubviews];
      firstObject = [arrangedSubviews3 firstObject];
      v12[2](v12, firstObject, v15);

      arrangedSubviews4 = [(MFRoundedCornersStackView *)self arrangedSubviews];
      lastObject = [arrangedSubviews4 lastObject];
      v12[2](v12, lastObject, v16);
    }
  }
}

void __49__MFRoundedCornersStackView_updateRoundedCorners__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 layer];
  [v5 setMaskedCorners:{objc_msgSend(v5, "maskedCorners") | a3}];

  [*(a1 + 32) cornerRadius];
  v7 = v6;
  v8 = [v10 layer];
  [v8 setCornerRadius:v7];

  v9 = [v10 layer];
  [v9 setMasksToBounds:1];
}

@end