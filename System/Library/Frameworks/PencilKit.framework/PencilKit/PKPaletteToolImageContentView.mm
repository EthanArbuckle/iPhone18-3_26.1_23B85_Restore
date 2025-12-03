@interface PKPaletteToolImageContentView
- (uint64_t)initWithImageView:(uint64_t)view;
- (void)_updateUI;
- (void)setSelectedView:(uint64_t)view;
@end

@implementation PKPaletteToolImageContentView

- (uint64_t)initWithImageView:(uint64_t)view
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (view)
  {
    v22.receiver = view;
    v22.super_class = PKPaletteToolImageContentView;
    v5 = objc_msgSendSuper2(&v22, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    view = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 52, a2);
      *(view + 408) = 0;
      v6 = *(view + 424);
      *(view + 424) = 0;

      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view addSubview:v4];
      v16 = MEMORY[0x1E696ACD8];
      topAnchor = [v4 topAnchor];
      topAnchor2 = [view topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v23[0] = v19;
      leadingAnchor = [v4 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v23[1] = v7;
      trailingAnchor = [v4 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v23[2] = v10;
      bottomAnchor = [v4 bottomAnchor];
      bottomAnchor2 = [view bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v23[3] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
      [v16 activateConstraints:v14];

      [(PKPaletteToolImageContentView *)view _updateUI];
    }
  }

  return view;
}

- (void)_updateUI
{
  if (self)
  {
    [*(self + 416) setHidden:0];
    v2 = *(self + 424);
    if (*(self + 408) == 1)
    {
      if (v2)
      {
        [*(self + 416) setHidden:1];
        superview = [*(self + 424) superview];

        if (superview != self)
        {
          [self setNeedsLayout];
          v4 = MEMORY[0x1E69DD250];
          v12 = MEMORY[0x1E69E9820];
          v13 = 3221225472;
          v14 = __42__PKPaletteToolImageContentView__updateUI__block_invoke;
          v15 = &unk_1E82D7148;
          selfCopy = self;
          v5 = &v12;
LABEL_9:
          [v4 performWithoutAnimation:{v5, v7, v8, v9, v10, selfCopy2, v12, v13, v14, v15, selfCopy}];
        }
      }
    }

    else if (v2)
    {
      superview2 = [v2 superview];

      if (superview2 == self)
      {
        v4 = MEMORY[0x1E69DD250];
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __42__PKPaletteToolImageContentView__updateUI__block_invoke_2;
        v10 = &unk_1E82D7148;
        selfCopy2 = self;
        v5 = &v7;
        goto LABEL_9;
      }
    }
  }
}

- (void)setSelectedView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    v5 = *(view + 424);
    if (v5 != v4)
    {
      superview = [v5 superview];

      if (superview == view)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __49__PKPaletteToolImageContentView_setSelectedView___block_invoke;
        v7[3] = &unk_1E82D7148;
        v7[4] = view;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
      }

      objc_storeStrong((view + 424), a2);
      [(PKPaletteToolImageContentView *)view _updateUI];
    }
  }
}

uint64_t __42__PKPaletteToolImageContentView__updateUI__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 424)];
  [*(*(a1 + 32) + 424) setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = MEMORY[0x1E696ACD8];
  v3 = [*(*(a1 + 32) + 424) centerXAnchor];
  v4 = [*(*(a1 + 32) + 416) centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v11[0] = v5;
  v6 = [*(*(a1 + 32) + 424) centerYAnchor];
  v7 = [*(*(a1 + 32) + 416) centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v2 activateConstraints:v9];

  return [*(a1 + 32) layoutIfNeeded];
}

@end