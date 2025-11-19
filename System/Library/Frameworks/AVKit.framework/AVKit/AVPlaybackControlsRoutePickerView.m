@interface AVPlaybackControlsRoutePickerView
- (AVButton)customButton;
- (AVPlaybackControlsRoutePickerView)initWithFrame:(CGRect)a3;
- (AVPlaybackControlsRoutePickerView)initWithSecondGenerationButton:(BOOL)a3;
- (BOOL)isCollapsed;
- (BOOL)isCollapsedOrExcluded;
- (BOOL)isIncluded;
- (CGSize)extrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (void)_updateCustomButtonMicaPackage;
- (void)_updateLayoutItem;
- (void)layoutAttributesDidChange;
- (void)setCollapsed:(BOOL)a3;
- (void)setCurrentMicaPackageName:(id)a3;
- (void)setExtrinsicContentSize:(CGSize)a3;
- (void)setHasFullScreenAppearance:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setPrioritizesVideoDevices:(BOOL)a3;
- (void)setRemoved:(BOOL)a3;
- (void)updateButtonAppearance;
@end

@implementation AVPlaybackControlsRoutePickerView

- (void)_updateLayoutItem
{
  v3 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [(AVPlaybackControlsRoutePickerView *)self intrinsicContentSize];
  [v3 setMinimumSize:?];

  v4 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [v4 setIncluded:{-[AVPlaybackControlsRoutePickerView isIncluded](self, "isIncluded")}];

  v5 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  [v5 setCollapsed:{-[AVPlaybackControlsRoutePickerView isCollapsed](self, "isCollapsed")}];
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
    v5 = [v4 thirdGenerationControlsEnabled];

    v6 = [MEMORY[0x1E69DC888] whiteColor];
    v3 = v6;
    if ((v5 & 1) == 0)
    {
      v7 = [v6 colorWithAlphaComponent:0.55];

      v8 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      v9 = [v8 micaPackage];
      v10 = [v9 rootLayer];

      [v10 setCompositingFilter:*MEMORY[0x1E6979CF8]];
      v3 = v7;
    }
  }

  v11 = [(AVRoutePickerView *)self isAirPlayActive];
  v12 = @"off";
  if (v11)
  {
    v12 = @"on";
  }

  v13 = v12;
  v14 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v15 = [v14 micaPackage];
  [v15 setState:v13 color:{objc_msgSend(v3, "CGColor")}];

  v16 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v17 = [v16 micaPackage];
  [v17 setState:v13 color:0];

  v18 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v19 = [v18 micaPackage];
  [(AVPlaybackControlsRoutePickerView *)self extrinsicContentSize];
  [v19 setTargetSize:?];

  v20 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [v20 setHasAlternateAppearance:{-[AVRoutePickerView isAirPlayActive](self, "isAirPlayActive")}];

  v21 = [(AVPlaybackControlsRoutePickerView *)self isCollapsedOrExcluded];
  if (v21 != [(AVPlaybackControlsRoutePickerView *)self isHidden]|| (!v21 ? (v22 = 1.0) : (v22 = 0.0), [(AVPlaybackControlsRoutePickerView *)self alpha], v23 != v22))
  {
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
    if ((v21 & 1) == 0)
    {
      v24 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [v24 frame];
      v26 = v25;
      v28 = v27;
      v29 = MEMORY[0x1E695F060];
      v30 = *MEMORY[0x1E695F060];

      if (v26 == v30 && v28 == *(v29 + 8))
      {
        v31 = [(AVPlaybackControlsRoutePickerView *)self customButton];
        [v31 invalidateIntrinsicContentSize];

        [(AVPlaybackControlsRoutePickerView *)self invalidateIntrinsicContentSize];
      }
    }
  }
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  v3 = a3;
  self->_hasFullScreenAppearance = a3;
  v4 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  if (v3)
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

  [v4 setTransform:&v6];
}

- (void)_updateCustomButtonMicaPackage
{
  v3 = [(AVPlaybackControlsRoutePickerView *)self effectiveUserInterfaceLayoutDirection];
  objc_initWeak(&location, self);
  v4 = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlaybackControlsRoutePickerView__updateCustomButtonMicaPackage__block_invoke;
  v5[3] = &unk_1E7209E08;
  objc_copyWeak(&v6, &location);
  [AVMicaPackage asynchronouslyPrepareMicaPackageWithName:v4 layoutDirection:v3 completion:v5];

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

- (void)setCurrentMicaPackageName:(id)a3
{
  v8 = a3;
  v5 = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];

  if (v5 != v8)
  {
    objc_storeStrong(&self->_currentMicaPackageName, a3);
    [(AVPlaybackControlsRoutePickerView *)self _updateCustomButtonMicaPackage];
    if (self->_currentMicaPackageName == @"AVRoutePickerViewCircularAirPlayGlyph")
    {
      v6 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [v6 setImageName:@"AVMobileImageNameNoImage"];

      v7 = [(AVPlaybackControlsRoutePickerView *)self customButton];
      [v7 setAlternateImageName:@"AVMobileImageNameNoImage"];
    }
  }
}

- (void)setPrioritizesVideoDevices:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVPlaybackControlsRoutePickerView;
  [(AVRoutePickerView *)&v5 setPrioritizesVideoDevices:a3];
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
    v5 = [(AVPlaybackControlsRoutePickerView *)self layer];
    [v5 setAllowsGroupBlending:0];

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
    v11 = [(AVPlaybackControlsRoutePickerView *)self currentMicaPackageName];
    [(AVPlaybackControlsRoutePickerView *)self setCurrentMicaPackageName:v11];

    [(AVButton *)v8 setImageName:@"AVMobileImageNameNoImage"];
    [(AVButton *)v8 setAlternateImageName:@"AVMobileImageNameNoImage"];
    [(AVButton *)v8 setMicaSnapshotAlpha:0.55];

    customButton = self->_customButton;
  }

  return customButton;
}

- (void)layoutAttributesDidChange
{
  v3 = [(AVPlaybackControlsRoutePickerView *)self layoutAttributes];
  -[AVPlaybackControlsRoutePickerView setCollapsed:](self, "setCollapsed:", [v3 isCollapsed]);
}

- (void)setExtrinsicContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [v6 extrinsicContentSize];
  v8 = v7;
  v10 = v9;

  if (width != v8 || height != v10)
  {
    v12 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [v12 setExtrinsicContentSize:{width, height}];

    v13 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [v13 invalidateIntrinsicContentSize];

    [(AVPlaybackControlsRoutePickerView *)self invalidateIntrinsicContentSize];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];
  }
}

- (CGSize)extrinsicContentSize
{
  v2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  [v2 extrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setRemoved:(BOOL)a3
{
  if (self->_removed != a3)
  {
    v4 = a3;
    self->_removed = a3;
    v6 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [v6 setRemoved:v4];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v6 = [v5 isCollapsed];

  if (v6 != v3)
  {
    v7 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [v7 setCollapsed:v3];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (BOOL)isCollapsed
{
  v2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v3 = [v2 isCollapsed];

  return v3;
}

- (void)setIncluded:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v6 = [v5 isIncluded];

  if (v6 != v3)
  {
    v7 = [(AVPlaybackControlsRoutePickerView *)self customButton];
    [v7 setIncluded:v3];

    [(AVPlaybackControlsRoutePickerView *)self _updateLayoutItem];

    [(AVPlaybackControlsRoutePickerView *)self updateButtonAppearance];
  }
}

- (BOOL)isIncluded
{
  v2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v3 = [v2 isIncluded];

  return v3;
}

- (BOOL)isCollapsedOrExcluded
{
  v2 = [(AVPlaybackControlsRoutePickerView *)self customButton];
  v3 = [v2 isCollapsedOrExcluded];

  return v3;
}

- (AVPlaybackControlsRoutePickerView)initWithSecondGenerationButton:(BOOL)a3
{
  result = [(AVPlaybackControlsRoutePickerView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_secondGenerationButton = a3;
  }

  return result;
}

- (AVPlaybackControlsRoutePickerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = AVPlaybackControlsRoutePickerView;
  v3 = [(AVRoutePickerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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