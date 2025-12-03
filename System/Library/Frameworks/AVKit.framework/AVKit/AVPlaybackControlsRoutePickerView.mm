@interface AVPlaybackControlsRoutePickerView
- (AVButton)customButton;
- (AVPlaybackControlsRoutePickerView)initWithFrame:(CGRect)frame;
- (AVPlaybackControlsRoutePickerView)initWithSecondGenerationButton:(BOOL)button;
- (BOOL)isCollapsed;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)isIncluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)_updateCustomButtonMicaPackage;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setCurrentMicaPackageName:(id)name;
- (void)setExtrinsicContentSize:(CGSize)size;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setIncluded:(BOOL)included;
- (void)setPrioritizesVideoDevices:(BOOL)devices;
- (void)setRemoved:(BOOL)removed;
- (void)updateButtonAppearance;
@end

@implementation AVPlaybackControlsRoutePickerView

- (void)_updateLayoutItem
{
  layoutAttributes = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [(AVPlaybackControlsRoutePickerView *)self intrinsicContentSize];
  [layoutAttributes setMinimumSize:?];

  layoutAttributes2 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [layoutAttributes2 setIncluded:{-[AVPlaybackControlsRoutePickerView isIncluded](self, "isIncluded")}];

  layoutAttributes3 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [layoutAttributes3 setCollapsed:{-[AVPlaybackControlsRoutePickerView isCollapsed](self, "isCollapsed")}];
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = AVPlaybackControlsRoutePickerView;
  [(AVRoutePickerView *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
  if (v7 > 0.0)
  {
    [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
    v4 = v8;
  }

  [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
  if (v9 > 0.0)
  {
    [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
    v6 = v10;
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateButtonAppearance
{
  v32.receiver = self;
  v32.super_class = AVPlaybackControlsRoutePickerView;
  [(AVRoutePickerView *)&v32 updateButtonAppearance];
  if ([(AVRoutePickerView *)self isAirPlayActive])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[AVKitGlobalSettings shared];
    thirdGenerationControlsEnabled = [v4 thirdGenerationControlsEnabled];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v3 = whiteColor;
    if ((thirdGenerationControlsEnabled & 1) == 0)
    {
      v7 = [whiteColor colorWithAlphaComponent:0.55];

      customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
      micaPackage = [customButton micaPackage];
      rootLayer = [micaPackage rootLayer];

      [rootLayer setCompositingFilter:*MEMORY[0x1E6979CF8]];
      v3 = v7;
    }
  }

  isAirPlayActive = [(AVRoutePickerView *)self isAirPlayActive];
  v12 = @"off";
  if (isAirPlayActive)
  {
    v12 = @"on";
  }

  v13 = v12;
  customButton2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  micaPackage2 = [customButton2 micaPackage];
  [micaPackage2 setState:v13 color:{objc_msgSend(v3, "CGColor")}];

  customButton3 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  micaPackage3 = [customButton3 micaPackage];
  [micaPackage3 setState:v13 color:0];

  customButton4 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  micaPackage4 = [customButton4 micaPackage];
  [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
  [micaPackage4 setTargetSize:?];

  customButton5 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [customButton5 setHasAlternateAppearance:{-[AVRoutePickerView isAirPlayActive](self, "isAirPlayActive")}];

  isCollapsedOrExcluded = [(AVPlaybackControlsRoutePickerView *)self isCollapsedOrExcluded];
  if (isCollapsedOrExcluded != [(AVPlaybackControlsRoutePickerView *)self isHidden]|| (!isCollapsedOrExcluded ? (v22 = 1.0) : (v22 = 0.0), [(AVPlaybackControlsRoutePickerView *)self alpha], v23 != v22))
  {
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
    if ((isCollapsedOrExcluded & 1) == 0)
    {
      customButton6 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [customButton6 frame];
      v26 = v25;
      v28 = v27;
      v29 = MEMORY[0x1E695F060];
      v30 = *MEMORY[0x1E695F060];

      if (v26 == v30 && v28 == *(v29 + 8))
      {
        customButton7 = [(AVPlaybackControlsRoutePickerView *)self customButton];
        [customButton7 invalidateIntrinsicContentSize];

        [(AVPlaybackControlsRoutePickerView *)self invalidateIntrinsicContentSize];
      }
    }
  }
}

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  self->_hasFullScreenAppearance = appearance;
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  if (appearanceCopy)
  {
    CGAffineTransformMakeTranslation(&v6, 0.0, 1.0);
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6.a = *MEMORY[0x1E695EFD0];
    *&v6.c = v5;
    *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  [customButton setTransform:&v6];
}

- (void)_updateCustomButtonMicaPackage
{
  effectiveUserInterfaceLayoutDirection = [(AVPlaybackControlsRoutePickerView *)self effectiveUserInterfaceLayoutDirection];
  objc_initWeak(&location, self);
  currentMicaPackageName = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlaybackControlsRoutePickerView__updateCustomButtonMicaPackage__block_invoke;
  v5[3] = &unk_1E7209E08;
  objc_copyWeak(&v6, &location);
  [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:currentMicaPackageName layoutDirection:effectiveUserInterfaceLayoutDirection completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__AVPlaybackControlsRoutePickerView__updateCustomButtonMicaPackage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained customButton];
  [v5 setMicaPackage:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 updateButtonAppearance];
}

- (void)setCurrentMicaPackageName:(id)name
{
  nameCopy = name;
  currentMicaPackageName = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];

  if (currentMicaPackageName != nameCopy)
  {
    objc_storeStrong(&self->_currentMicaPackageName, name);
    [(AVPlaybackControlsRoutePickerView *)self _updateCustomButtonMicaPackage];
    if (self->_currentMicaPackageName == @"AVRoutePickerViewCircularAirPlayGlyph")
    {
      customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [customButton setImageName:@"AVMobileImageNameNoImage"];

      customButton2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [customButton2 setAlternateImageName:@"AVMobileImageNameNoImage"];
    }
  }
}

- (void)setPrioritizesVideoDevices:(BOOL)devices
{
  v5.receiver = self;
  v5.super_class = AVPlaybackControlsRoutePickerView;
  [(AVRoutePickerView *)&v5 setPrioritizesVideoDevices:devices];
  if ([(AVRoutePickerView *)self prioritizesVideoDevices])
  {
    v4 = @"AVRoutePickerViewSquareAirPlayGlyph";
  }

  else
  {
    v4 = @"AVRoutePickerViewCircularAirPlayGlyph";
  }

  [(AVPlaybackControlsRoutePickerView *)self setCurrentMicaPackageName:v4];
}

- (AVButton)customButton
{
  customButton = self->_customButton;
  if (!customButton)
  {
    secondGenerationButton = self->_secondGenerationButton;
    layer = [(AVPlaybackControlsRoutePickerView *)self layer];
    [layer setAllowsGroupBlending:0];

    v6 = [AVButton buttonWithAccessibilityIdentifier:@"AirPlay" isFirstGeneration:!secondGenerationButton];
    v7 = self->_customButton;
    self->_customButton = v6;
    v8 = v6;

    [(AVButton *)self->_customButton setIncluded:[(AVPlaybackControlsRoutePickerView *)self isIncluded]];
    [(AVButton *)self->_customButton setCollapsed:[(AVPlaybackControlsRoutePickerView *)self isCollapsed]];
    v9 = self->_customButton;
    [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
    [(AVButton *)v9 setExtrinsicContentSize:?];
    v10 = self->_customButton;
    [(AVPlaybackControlsRoutePickerView *)self bounds];
    [(AVButton *)v10 setFrame:?];
    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
    currentMicaPackageName = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];
    [(AVPlaybackControlsRoutePickerView *)self setCurrentMicaPackageName:currentMicaPackageName];

    [(AVButton *)v8 setImageName:@"AVMobileImageNameNoImage"];
    [(AVButton *)v8 setAlternateImageName:@"AVMobileImageNameNoImage"];
    [(AVButton *)v8 setMicaSnapshotAlpha:0.55];

    customButton = self->_customButton;
  }

  return customButton;
}

- (void)layoutAttributesDidChange
{
  layoutAttributes = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  -[AVPlaybackControlsRoutePickerView setCollapsed:](self, "setCollapsed:", [layoutAttributes isCollapsed]);
}

- (void)setExtrinsicContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [customButton extrinsicContentSize];
  v8 = v7;
  v10 = v9;

  if (width != v8 || height != v10)
  {
    customButton2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [customButton2 setExtrinsicContentSize:{width, height}];

    customButton3 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [customButton3 invalidateIntrinsicContentSize];

    [(AVPlaybackControlsRoutePickerView *)self invalidateIntrinsicContentSize];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];
  }
}

- (CGSize)extrinsicContentSize
{
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [customButton extrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setRemoved:(BOOL)removed
{
  if (self->_removed != removed)
  {
    removedCopy = removed;
    self->_removed = removed;
    customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [customButton setRemoved:removedCopy];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  isCollapsed = [customButton isCollapsed];

  if (isCollapsed != collapsedCopy)
  {
    customButton2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [customButton2 setCollapsed:collapsedCopy];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (BOOL)isCollapsed
{
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  isCollapsed = [customButton isCollapsed];

  return isCollapsed;
}

- (void)setIncluded:(BOOL)included
{
  includedCopy = included;
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  isIncluded = [customButton isIncluded];

  if (isIncluded != includedCopy)
  {
    customButton2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [customButton2 setIncluded:includedCopy];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (BOOL)isIncluded
{
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  isIncluded = [customButton isIncluded];

  return isIncluded;
}

- (BOOL)isCollapsedOrExcluded
{
  customButton = [(AVPlaybackControlsRoutePickerView *)self customButton];
  isCollapsedOrExcluded = [customButton isCollapsedOrExcluded];

  return isCollapsedOrExcluded;
}

- (AVPlaybackControlsRoutePickerView)initWithSecondGenerationButton:(BOOL)button
{
  result = [(AVPlaybackControlsRoutePickerView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_secondGenerationButton = button;
  }

  return result;
}

- (AVPlaybackControlsRoutePickerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = AVPlaybackControlsRoutePickerView;
  v3 = [(AVRoutePickerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_secondGenerationButton = 1;
    v5 = objc_alloc_init(AVLayoutItemAttributes);
    layoutAttributes = v4->_layoutAttributes;
    v4->_layoutAttributes = v5;

    v7 = v4->_layoutAttributes;
    [(AVPlaybackControlsRoutePickerView *)v4 intrinsicContentSize];
    [(AVLayoutItemAttributes *)v7 setMinimumSize:?];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setCollapsed:[(AVPlaybackControlsRoutePickerView *)v4 isCollapsed]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setIncluded:[(AVPlaybackControlsRoutePickerView *)v4 isIncluded]];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setHasFlexibleContentSize:0];
    [(AVLayoutItemAttributes *)v4->_layoutAttributes setAccessibilityIdentifier:@"Airplay"];
  }

  return v4;
}

@end