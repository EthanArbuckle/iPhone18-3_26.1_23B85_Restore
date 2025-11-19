@interface PKPaletteToolImageContentView
- (uint64_t)initWithImageView:(uint64_t)a1;
- (void)_updateUI;
- (void)setSelectedView:(uint64_t)a1;
@end

@implementation PKPaletteToolImageContentView

- (uint64_t)initWithImageView:(uint64_t)a1
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = PKPaletteToolImageContentView;
    v5 = objc_msgSendSuper2(&v22, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 52, a2);
      *(a1 + 408) = 0;
      v6 = *(a1 + 424);
      *(a1 + 424) = 0;

      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [a1 addSubview:v4];
      v16 = MEMORY[0x1E696ACD8];
      v21 = [v4 topAnchor];
      v20 = [a1 topAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v23[0] = v19;
      v18 = [v4 leadingAnchor];
      v17 = [a1 leadingAnchor];
      v7 = [v18 constraintEqualToAnchor:v17];
      v23[1] = v7;
      v8 = [v4 trailingAnchor];
      v9 = [a1 trailingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v23[2] = v10;
      v11 = [v4 bottomAnchor];
      v12 = [a1 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v23[3] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
      [v16 activateConstraints:v14];

      [(PKPaletteToolImageContentView *)a1 _updateUI];
    }
  }

  return a1;
}

- (void)_updateUI
{
  if (a1)
  {
    [*(a1 + 416) setHidden:0];
    v2 = *(a1 + 424);
    if (*(a1 + 408) == 1)
    {
      if (v2)
      {
        [*(a1 + 416) setHidden:1];
        v3 = [*(a1 + 424) superview];

        if (v3 != a1)
        {
          [a1 setNeedsLayout];
          v4 = MEMORY[0x1E69DD250];
          v12 = MEMORY[0x1E69E9820];
          v13 = 3221225472;
          v14 = __42__PKPaletteToolImageContentView__updateUI__block_invoke;
          v15 = &unk_1E82D7148;
          v16 = a1;
          v5 = &v12;
LABEL_9:
          [v4 performWithoutAnimation:{v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
        }
      }
    }

    else if (v2)
    {
      v6 = [v2 superview];

      if (v6 == a1)
      {
        v4 = MEMORY[0x1E69DD250];
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __42__PKPaletteToolImageContentView__updateUI__block_invoke_2;
        v10 = &unk_1E82D7148;
        v11 = a1;
        v5 = &v7;
        goto LABEL_9;
      }
    }
  }
}

- (void)setSelectedView:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 424);
    if (v5 != v4)
    {
      v6 = [v5 superview];

      if (v6 == a1)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __49__PKPaletteToolImageContentView_setSelectedView___block_invoke;
        v7[3] = &unk_1E82D7148;
        v7[4] = a1;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
      }

      objc_storeStrong((a1 + 424), a2);
      [(PKPaletteToolImageContentView *)a1 _updateUI];
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