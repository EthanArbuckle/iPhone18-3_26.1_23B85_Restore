@interface AVTAvatarColorSliderContainerView
- (AVTAvatarColorSliderContainerView)initWithFrame:(CGRect)a3 userInterfaceLayoutDirection:(int64_t)a4;
- (AVTAvatarColorSliderContainerViewDelegate)delegate;
- (void)colorSlider:(id)a3 didFinishSelectingValue:(double)a4;
- (void)colorSlider:(id)a3 valueChanged:(double)a4;
- (void)layoutSubviews;
- (void)setSectionItem:(id)a3 animated:(BOOL)a4;
- (void)updateSliderTrackLayerAnimated:(BOOL)a3;
- (void)updateSliderWithColorPreset:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTAvatarColorSliderContainerView

- (AVTAvatarColorSliderContainerView)initWithFrame:(CGRect)a3 userInterfaceLayoutDirection:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = AVTAvatarColorSliderContainerView;
  v5 = [(AVTAvatarColorSliderContainerView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(AVTAvatarColorSliderContainerView *)v5 setBackgroundColor:v6];

    v7 = [[AVTColorSlider alloc] initWithUserInterfaceLayoutDirection:a4];
    slider = v5->_slider;
    v5->_slider = v7;

    [(AVTColorSlider *)v5->_slider setAutoresizingMask:34];
    [(AVTColorSlider *)v5->_slider setDelegate:v5];
    [(AVTAvatarColorSliderContainerView *)v5 setClipsToBounds:0];
    [(AVTAvatarColorSliderContainerView *)v5 addSubview:v5->_slider];
  }

  return v5;
}

- (void)setSectionItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_sectionItem != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_sectionItem, a3);
    [(AVTAvatarColorSliderContainerView *)self updateSliderTrackLayerAnimated:v4];
    v7 = v8;
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVTAvatarColorSliderContainerView;
  [(AVTAvatarColorSliderContainerView *)&v8 layoutSubviews];
  [(AVTAvatarColorSliderContainerView *)self bounds];
  v4 = v3 + -40.0;
  [(AVTAvatarColorSliderContainerView *)self bounds];
  v6 = v5;
  v7 = [(AVTAvatarColorSliderContainerView *)self slider];
  [v7 setFrame:{20.0, 0.0, v4, v6}];
}

- (void)updateSliderTrackLayerAnimated:(BOOL)a3
{
  v5 = [(AVTAvatarColorSliderContainerView *)self sectionItem];

  if (v5)
  {
    v6 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    v7 = [v6 gradientProvider];
    v8 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    v9 = [v8 color];
    v10 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    v11 = [v10 skinColor];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__AVTAvatarColorSliderContainerView_updateSliderTrackLayerAnimated___block_invoke;
    v12[3] = &unk_1E7F3D758;
    v12[4] = self;
    v13 = a3;
    (v7)[2](v7, v9, v11, v12);
  }
}

void __68__AVTAvatarColorSliderContainerView_updateSliderTrackLayerAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 slider];
  [v5 setTrackLayer:v4 animated:*(a1 + 40)];
}

- (void)updateSliderWithColorPreset:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTAvatarColorSliderContainerView *)self slider];
  [v7 value];
  v9 = v8;
  [v6 variation];
  v11 = v10;

  if (v9 != v11)
  {
    v12 = MEMORY[0x1E69DD250];
    if (v4)
    {
      v13 = 0.2;
    }

    else
    {
      v13 = 0.0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__AVTAvatarColorSliderContainerView_updateSliderWithColorPreset_animated___block_invoke;
    v20[3] = &unk_1E7F3D780;
    v20[4] = self;
    v21 = v6;
    v22 = v4;
    [v12 animateWithDuration:v20 animations:v13];
  }

  v14 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  v15 = [v14 layerContentProvider];
  v16 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  v17 = [v16 skinColor];
  v18 = [(AVTAvatarColorSliderContainerView *)self slider];
  v19 = [v18 thumbLayer];
  (v15)[2](v15, v6, v17, v19);
}

void __74__AVTAvatarColorSliderContainerView_updateSliderWithColorPreset_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) slider];
  [*(a1 + 40) variation];
  [v2 setValue:*(a1 + 48) animated:?];
}

- (void)colorSlider:(id)a3 valueChanged:(double)a4
{
  v7 = [(AVTAvatarColorSliderContainerView *)self delegate];
  v6 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  [v7 colorSliderVariationChanged:v6 forItem:a4];
}

- (void)colorSlider:(id)a3 didFinishSelectingValue:(double)a4
{
  v7 = [(AVTAvatarColorSliderContainerView *)self delegate];
  v6 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  [v7 colorSliderDidFinishChangingVariation:v6 forItem:a4];
}

- (AVTAvatarColorSliderContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end