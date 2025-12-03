@interface MusicCrossFadeDurationCellAccessibility
- (id)_axSlider;
- (id)accessibilityValue;
- (void)_axIncrementSlider:(BOOL)slider;
@end

@implementation MusicCrossFadeDurationCellAccessibility

- (id)accessibilityValue
{
  v3 = accessibilityMusicSettingsLocalizedString(@"CROSS_FADE_DURATION_FORMAT");
  _axSlider = [(MusicCrossFadeDurationCellAccessibility *)self _axSlider];
  [_axSlider value];
  v6 = v5;

  v7 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v3, v6];

  return v7;
}

- (void)_axIncrementSlider:(BOOL)slider
{
  sliderCopy = slider;
  _axSlider = [(MusicCrossFadeDurationCellAccessibility *)self _axSlider];
  objc_initWeak(&location, _axSlider);

  v6 = objc_loadWeakRetained(&location);
  [v6 value];
  v8 = v7;

  if (sliderCopy)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8 - 1;
  }

  v10 = objc_loadWeakRetained(&location);
  [v10 maximumValue];
  v12 = v11;

  v13 = objc_loadWeakRetained(&location);
  [v13 minimumValue];
  v15 = v14;

  v16 = v9;
  if (v15 > v9)
  {
    v16 = v15;
  }

  if (v12 < v16)
  {
    v16 = v12;
  }

  v17 = v16;
  objc_initWeak(&from, self);
  objc_copyWeak(&v18, &location);
  v20 = v17;
  objc_copyWeak(&v19, &from);
  AXPerformSafeBlock();
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __62__MusicCrossFadeDurationCellAccessibility__axIncrementSlider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = *(a1 + 48);
  [WeakRetained setValue:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  [v5 sliderValueChanged:v4];
}

- (id)_axSlider
{
  objc_opt_class();
  v3 = [(MusicCrossFadeDurationCellAccessibility *)self safeValueForKey:@"slider"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end