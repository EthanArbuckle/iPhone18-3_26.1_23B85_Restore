@interface PKOverlayDrawingView
- (PKOverlayDrawingView)initWithFrame:(CGRect)frame;
- (id)imageView;
- (void)hideImageViewWithDuration:(double)duration;
- (void)showImageView:(uint64_t)view frame:(double)frame animationType:(double)type animationDuration:(double)duration;
@end

@implementation PKOverlayDrawingView

- (PKOverlayDrawingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKOverlayDrawingView;
  v3 = [(PKOverlayDrawingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKOverlayDrawingView *)v3 setUserInteractionEnabled:1];
    [(PKOverlayDrawingView *)v4 setClipsToBounds:0];
  }

  return v4;
}

- (id)imageView
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 51);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)showImageView:(uint64_t)view frame:(double)frame animationType:(double)type animationDuration:(double)duration
{
  v14 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 51);
    [self frame];
    v17 = v16 - frame;
    v19 = v18 - type;
    objc_storeWeak(self + 51, v14);
    if (view == 1)
    {
      v20 = a7 * 1.5 + 0.0;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = MEMORY[0x1E69DD250];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke;
    v41[3] = &unk_1E82D9B78;
    v41[4] = self;
    frameCopy = frame;
    typeCopy = type;
    durationCopy = duration;
    v47 = a7;
    v22 = WeakRetained;
    v42 = v22;
    v48 = v17;
    v49 = v19;
    v23 = v14;
    v43 = v23;
    v50 = 0;
    v51 = v20;
    durationCopy2 = duration;
    v53 = a7;
    [v21 performWithoutAnimation:v41];
    v24 = MEMORY[0x1E69DD250];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke_2;
    v34[3] = &unk_1E82D9BA0;
    v37 = 0;
    v38 = 0;
    v35 = v23;
    durationCopy3 = duration;
    v40 = a7;
    v36 = v22;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke_3;
    v27[3] = &unk_1E82D9BC8;
    v28 = v36;
    v30 = 0;
    v31 = 0;
    v29 = v35;
    durationCopy4 = duration;
    v33 = a7;
    v25 = v36;
    [v24 _animateUsingSpringWithDuration:0 delay:v34 options:v27 mass:a8 stiffness:0.0 damping:1.0 initialVelocity:400.0 animations:20.0 completion:0.0];
  }
}

uint64_t __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 frame];
    [*(a1 + 40) setFrame:{*(a1 + 88) + v3, v4 + *(a1 + 96)}];
  }

  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v9 = *(a1 + 48);

  return [v9 setFrame:{v5, v6, v7, v8}];
}

uint64_t __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __76__PKOverlayDrawingView_showImageView_frame_animationType_animationDuration___block_invoke_3(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)hideImageViewWithDuration:(double)duration
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, &stru_1F476BD20, 424);
    v5 = *(MEMORY[0x1E695F050] + 16);
    *(self + 432) = *MEMORY[0x1E695F050];
    *(self + 448) = v5;
    WeakRetained = objc_loadWeakRetained((self + 408));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__PKOverlayDrawingView_hideImageViewWithDuration___block_invoke;
      v11[3] = &unk_1E82D7148;
      v12 = WeakRetained;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__PKOverlayDrawingView_hideImageViewWithDuration___block_invoke_2;
      v9[3] = &unk_1E82D8F30;
      v10 = v12;
      [v8 animateWithDuration:v11 animations:v9 completion:duration];
    }
  }
}

@end