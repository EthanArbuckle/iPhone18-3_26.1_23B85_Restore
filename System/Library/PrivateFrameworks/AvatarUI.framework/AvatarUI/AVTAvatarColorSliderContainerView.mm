@interface AVTAvatarColorSliderContainerView
- (AVTAvatarColorSliderContainerView)initWithFrame:(CGRect)frame userInterfaceLayoutDirection:(int64_t)direction;
- (AVTAvatarColorSliderContainerViewDelegate)delegate;
- (void)colorSlider:(id)slider didFinishSelectingValue:(double)value;
- (void)colorSlider:(id)slider valueChanged:(double)changed;
- (void)layoutSubviews;
- (void)setSectionItem:(id)item animated:(BOOL)animated;
- (void)updateSliderTrackLayerAnimated:(BOOL)animated;
- (void)updateSliderWithColorPreset:(id)preset animated:(BOOL)animated;
@end

@implementation AVTAvatarColorSliderContainerView

- (AVTAvatarColorSliderContainerView)initWithFrame:(CGRect)frame userInterfaceLayoutDirection:(int64_t)direction
{
  v10.receiver = self;
  v10.super_class = AVTAvatarColorSliderContainerView;
  v5 = [(AVTAvatarColorSliderContainerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTAvatarColorSliderContainerView *)v5 setBackgroundColor:clearColor];

    v7 = [[AVTColorSlider alloc] initWithUserInterfaceLayoutDirection:direction];
    slider = v5->_slider;
    v5->_slider = v7;

    [(AVTColorSlider *)v5->_slider setAutoresizingMask:34];
    [(AVTColorSlider *)v5->_slider setDelegate:v5];
    [(AVTAvatarColorSliderContainerView *)v5 setClipsToBounds:0];
    [(AVTAvatarColorSliderContainerView *)v5 addSubview:v5->_slider];
  }

  return v5;
}

- (void)setSectionItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if (self->_sectionItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(&self->_sectionItem, item);
    [(AVTAvatarColorSliderContainerView *)self updateSliderTrackLayerAnimated:animatedCopy];
    itemCopy = v8;
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
  slider = [(AVTAvatarColorSliderContainerView *)self slider];
  [slider setFrame:{20.0, 0.0, v4, v6}];
}

- (void)updateSliderTrackLayerAnimated:(BOOL)animated
{
  sectionItem = [(AVTAvatarColorSliderContainerView *)self sectionItem];

  if (sectionItem)
  {
    sectionItem2 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    gradientProvider = [sectionItem2 gradientProvider];
    sectionItem3 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    color = [sectionItem3 color];
    sectionItem4 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
    skinColor = [sectionItem4 skinColor];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__AVTAvatarColorSliderContainerView_updateSliderTrackLayerAnimated___block_invoke;
    v12[3] = &unk_1E7F3D758;
    v12[4] = self;
    animatedCopy = animated;
    (gradientProvider)[2](gradientProvider, color, skinColor, v12);
  }
}

void __68__AVTAvatarColorSliderContainerView_updateSliderTrackLayerAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 slider];
  [v5 setTrackLayer:v4 animated:*(a1 + 40)];
}

- (void)updateSliderWithColorPreset:(id)preset animated:(BOOL)animated
{
  animatedCopy = animated;
  presetCopy = preset;
  slider = [(AVTAvatarColorSliderContainerView *)self slider];
  [slider value];
  v9 = v8;
  [presetCopy variation];
  v11 = v10;

  if (v9 != v11)
  {
    v12 = MEMORY[0x1E69DD250];
    if (animatedCopy)
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
    v21 = presetCopy;
    v22 = animatedCopy;
    [v12 animateWithDuration:v20 animations:v13];
  }

  sectionItem = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  layerContentProvider = [sectionItem layerContentProvider];
  sectionItem2 = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  skinColor = [sectionItem2 skinColor];
  slider2 = [(AVTAvatarColorSliderContainerView *)self slider];
  thumbLayer = [slider2 thumbLayer];
  (layerContentProvider)[2](layerContentProvider, presetCopy, skinColor, thumbLayer);
}

void __74__AVTAvatarColorSliderContainerView_updateSliderWithColorPreset_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) slider];
  [*(a1 + 40) variation];
  [v2 setValue:*(a1 + 48) animated:?];
}

- (void)colorSlider:(id)slider valueChanged:(double)changed
{
  delegate = [(AVTAvatarColorSliderContainerView *)self delegate];
  sectionItem = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  [delegate colorSliderVariationChanged:sectionItem forItem:changed];
}

- (void)colorSlider:(id)slider didFinishSelectingValue:(double)value
{
  delegate = [(AVTAvatarColorSliderContainerView *)self delegate];
  sectionItem = [(AVTAvatarColorSliderContainerView *)self sectionItem];
  [delegate colorSliderDidFinishChangingVariation:sectionItem forItem:value];
}

- (AVTAvatarColorSliderContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end