@interface PKPaletteImageGeneratingToolView
- (void)_reloadToolImage;
- (void)_updateSelectedViewTransformAnimated:(void *)a1;
- (void)_updateUI;
- (void)didMoveToWindow;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKPaletteImageGeneratingToolView

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = PKPaletteImageGeneratingToolView;
  [(PKPaletteImageGeneratingToolView *)&v8 didMoveToWindow];
  v3 = [(PKPaletteImageGeneratingToolView *)self window];

  if (v3)
  {
    v4 = os_log_create("com.apple.pencilkit", "PKPaletteImageGeneratingToolView");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "load image wand ca assets", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PKPaletteImageGeneratingToolView_didMoveToWindow__block_invoke;
    v5[3] = &unk_1E82DA0B8;
    objc_copyWeak(&v6, buf);
    [PKImageWandCAPackage loadPackageViewsWithHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __51__PKPaletteImageGeneratingToolView_didMoveToWindow__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PKPaletteImageGeneratingToolView_didMoveToWindow__block_invoke_2;
    v8[3] = &unk_1E82DA090;
    v10 = a3;
    v8[4] = WeakRetained;
    v9 = v5;
    PKPerformOnMainThread(v8);
  }
}

uint64_t __51__PKPaletteImageGeneratingToolView_didMoveToWindow__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = os_log_create("com.apple.pencilkit", "PKPaletteImageGeneratingToolView");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "image wand dark ca asset loaded", buf, 2u);
    }

    v5 = &OBJC_IVAR___PKPaletteImageGeneratingToolView__animatedDarkToolView;
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "image wand light ca asset loaded", v7, 2u);
    }

    v5 = &OBJC_IVAR___PKPaletteImageGeneratingToolView__animatedLightToolView;
  }

  objc_storeStrong((*(a1 + 32) + *v5), *(a1 + 40));
  return [*(a1 + 32) _setToolImageNeedsReload];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteImageGeneratingToolView;
  [(PKPaletteToolView *)&v4 setSelected:a3];
  [(PKPaletteImageGeneratingToolView *)self _updateUI];
}

- (void)_updateUI
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 isSelected];
    v3 = [a1 imageContentView];
    v4 = v3;
    if (v3 && *(v3 + 408) != v2)
    {
      *(v3 + 408) = v2;
      [(PKPaletteToolImageContentView *)v3 _updateUI];
    }

    v5 = [a1 imageContentView];
    [(PKPaletteToolImageContentView *)v5 setSelectedView:?];

    v23 = [a1 traitCollection];
    if ([v23 userInterfaceStyle] == 2 && a1[82])
    {

LABEL_13:
      if ([a1 isSelected])
      {
        v8 = [a1 traitCollection];
        v9 = *(a1 + OBJC_IVAR___PKPaletteImageGeneratingToolView__animatedDarkToolView[[v8 userInterfaceStyle] != 2]);

        v10 = [v9 layer];
        [v10 setBeginTime:0.0];

        v11 = [v9 layer];
        [v11 setTimeOffset:0.0];

        v12 = [v9 layer];
        LODWORD(v13) = 1.0;
        [v12 setSpeed:v13];

        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = MEMORY[0x1E696ACD8];
        v15 = [v9 constraints];
        [v14 deactivateConstraints:v15];

        objc_opt_self();
        v16 = MEMORY[0x1E696ACD8];
        v17 = [v9 widthAnchor];
        v18 = [v17 constraintEqualToConstant:138.0];
        v24[0] = v18;
        v19 = [v9 heightAnchor];
        v20 = [v19 constraintEqualToConstant:390.0];
        v24[1] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
        [v16 activateConstraints:v21];

        v22 = [a1 imageContentView];
        [(PKPaletteToolImageContentView *)v22 setSelectedView:v9];

        [(PKPaletteImageGeneratingToolView *)a1 _updateSelectedViewTransformAnimated:?];
      }

      return;
    }

    v6 = [a1 traitCollection];
    if ([v6 userInterfaceStyle] != 2)
    {
      v7 = a1[81];

      if (!v7)
      {
        return;
      }

      goto LABEL_13;
    }
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteImageGeneratingToolView;
  [(PKPaletteToolView *)&v4 setEdgeLocation:a3];
  [(PKPaletteImageGeneratingToolView *)self _updateUI];
}

- (void)setScalingFactor:(double)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteImageGeneratingToolView;
  [(PKPaletteToolView *)&v4 setScalingFactor:a3];
  [(PKPaletteImageGeneratingToolView *)self _updateSelectedViewTransformAnimated:?];
}

- (void)_updateSelectedViewTransformAnimated:(void *)a1
{
  if (a1)
  {
    if (([a1 isSelected] & 1) != 0 || ((objc_msgSend(a1, "imageContentView"), v4 = objc_claimAutoreleasedReturnValue(), (v5 = v4) == 0) ? (v6 = 0) : (v6 = *(v4 + 424)), v7 = v6, v7, v5, !v7))
    {
      objc_opt_self();
      memset(&v16, 0, sizeof(v16));
      [a1 scalingFactor];
      v9 = v8 * 0.333333333;
      [a1 scalingFactor];
      CGAffineTransformMakeScale(&v16, v9, v10 * 0.333333333);
      v11 = [a1 edgeLocation];
      v14 = v16;
      PKCGAffineTransformRotateForEdge(&v14, v11, &v15);
      v16 = v15;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PKPaletteImageGeneratingToolView__updateSelectedViewTransformAnimated___block_invoke;
      v12[3] = &unk_1E82DA028;
      v12[4] = a1;
      v13 = v15;
      [MEMORY[0x1E6979518] _pk_withDisabledActions:a2 ^ 1u perform:v12];
    }
  }
}

- (void)_reloadToolImage
{
  v3.receiver = self;
  v3.super_class = PKPaletteImageGeneratingToolView;
  [(PKPaletteToolView *)&v3 _reloadToolImage];
  [(PKPaletteImageGeneratingToolView *)self _updateUI];
}

void __73__PKPaletteImageGeneratingToolView__updateSelectedViewTransformAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageContentView];
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 424);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 setTransform:&v5];
}

@end