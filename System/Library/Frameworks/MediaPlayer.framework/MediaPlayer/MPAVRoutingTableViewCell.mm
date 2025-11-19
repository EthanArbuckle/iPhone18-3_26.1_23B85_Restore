@interface MPAVRoutingTableViewCell
- (BOOL)_shouldShowSeparateBatteryPercentagesForBatteryLevel:(id)a3;
- (MPAVRoutingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MPAVRoutingTableViewCellDelegate)delegate;
- (id)_batteryTextForRoute:(id)a3;
- (id)_checkmarkAccessibilityLabelForSmartAudio;
- (id)_checkmarkImageForSmartAudio;
- (id)_checkmarkImageNameForSmartAudio;
- (id)_pairedDeviceTextForRoute:(id)a3;
- (void)_animateSubtitleLabelToNextAvailableText;
- (void)_configureDetailLabel:(id)a3;
- (void)_configureLabel:(id)a3;
- (void)_updateAccessory;
- (void)_updateSpinnerColor;
- (void)_updateSubtitleTextLabelForRouteItem:(id)a3;
- (void)dealloc;
- (void)didTapToExpand;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryType:(int64_t)a3;
- (void)setIconStyle:(unint64_t)a3;
- (void)setPendingSelection:(BOOL)a3;
- (void)setShowingVolumeSlider:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setUseSmartAudioCheckmarkStyle:(BOOL)a3;
- (void)setVolumeSlider:(id)a3;
- (void)updateForEndpoint:(id)a3 routeItem:(id)a4 inferLocalizedModelName:(BOOL)a5;
@end

@implementation MPAVRoutingTableViewCell

- (MPAVRoutingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapToExpand
{
  v3 = [(MPAVRoutingTableViewCell *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 routingCellDidTapToExpand:self];
  }
}

- (void)_animateSubtitleLabelToNextAvailableText
{
  if ([(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState hasVisibleTextTypeToShow]&& [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState hasVisibleTextTypeToTransitionTo])
  {
    [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState setAnimating:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__MPAVRoutingTableViewCell__animateSubtitleLabelToNextAvailableText__block_invoke;
    v5[3] = &unk_1E7682518;
    v5[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__MPAVRoutingTableViewCell__animateSubtitleLabelToNextAvailableText__block_invoke_2;
    v4[3] = &unk_1E7679340;
    v4[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.24];
  }

  else
  {
    [(NSTimer *)self->_subtitleTextUpdateTimer invalidate];
    subtitleTextUpdateTimer = self->_subtitleTextUpdateTimer;
    self->_subtitleTextUpdateTimer = 0;
  }
}

uint64_t __68__MPAVRoutingTableViewCell__animateSubtitleLabelToNextAvailableText__block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 1216);
  if (a2)
  {
    [v3 transitionToNextAvailableVisibleTextType];
    v4 = [*(*(a1 + 32) + 1216) stringForCurrentVisibleTextType];
    [*(*(a1 + 32) + 1112) setText:v4];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__MPAVRoutingTableViewCell__animateSubtitleLabelToNextAvailableText__block_invoke_3;
    v7[3] = &unk_1E7682518;
    v8 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__MPAVRoutingTableViewCell__animateSubtitleLabelToNextAvailableText__block_invoke_4;
    v6[3] = &unk_1E7679340;
    v6[4] = v8;
    return [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.24];
  }

  else
  {

    return [v3 setAnimating:0];
  }
}

- (void)_updateSpinnerColor
{
  if (self->_iconStyle == 1)
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [(UIActivityIndicatorView *)self->_spinnerView setColor:v3];
}

- (void)_updateSubtitleTextLabelForRouteItem:(id)a3
{
  v4 = a3;
  v5 = [v4 leader];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 routes];
    v7 = [v8 firstObject];
  }

  v9 = [(MPAVRoutingTableViewCell *)self _batteryTextForRoute:v7];
  [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState setBatteryText:v9];

  v10 = [(MPAVRoutingTableViewCell *)self _pairedDeviceTextForRoute:v7];
  [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState setPairedDeviceText:v10];

  v11 = [v4 localizedSubtitle];
  [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState setLocalizedSubtitle:v11];

  v12 = [v7 routeUID];
  v13 = [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState routeUID];
  v14 = v13;
  if (v12 == v13)
  {
    v15 = [v4 type];

    if (v15 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = [v7 routeUID];
  [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState setRouteUID:v16];

  [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState resetForNewRoute];
  if ([(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState isAnimating])
  {
    v17 = [(UILabel *)self->_subtitleTextLabel layer];
    [v17 removeAllAnimations];

    [(UILabel *)self->_subtitleTextLabel setAlpha:self->_subtitleViewAlpha];
  }

  [(NSTimer *)self->_subtitleTextUpdateTimer invalidate];
  subtitleTextUpdateTimer = self->_subtitleTextUpdateTimer;
  self->_subtitleTextUpdateTimer = 0;

LABEL_10:
  v19 = [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState stringForCurrentVisibleTextType];
  [(UILabel *)self->_subtitleTextLabel setText:v19];

  if (!self->_subtitleTextUpdateTimer && [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState hasVisibleTextTypeToShow]&& [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState hasVisibleTextTypeToTransitionTo])
  {
    objc_initWeak(&location, self);
    v20 = MEMORY[0x1E695DFF0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__MPAVRoutingTableViewCell__updateSubtitleTextLabelForRouteItem___block_invoke;
    v23[3] = &unk_1E7676508;
    objc_copyWeak(&v24, &location);
    v21 = [v20 scheduledTimerWithTimeInterval:1 repeats:v23 block:4.48];
    v22 = self->_subtitleTextUpdateTimer;
    self->_subtitleTextUpdateTimer = v21;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __65__MPAVRoutingTableViewCell__updateSubtitleTextLabelForRouteItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _animateSubtitleLabelToNextAvailableText];
    WeakRetained = v2;
  }
}

- (void)_updateAccessory
{
  if (self->_pendingSelection)
  {
    [(MPAVClippingTableViewCell *)self setAccessoryView:self->_spinnerView];
    spinnerView = self->_spinnerView;

    [(UIActivityIndicatorView *)spinnerView startAnimating];
    return;
  }

  if ([(MPAVRoutingTableViewCell *)self useSmartAudioCheckmarkStyle])
  {
    v4 = [(MPAVRoutingTableViewCell *)self _checkmarkImageForSmartAudio];
    v5 = 1136;
    [(UIImageView *)self->_smartAudioImageView setImage:v4];

    v6 = [(MPAVRoutingTableViewCell *)self _checkmarkAccessibilityLabelForSmartAudio];
    [(UIImageView *)self->_smartAudioImageView setAccessibilityLabel:v6];
  }

  else
  {
    if ([(MPAVRoutingTableViewCell *)self accessoryType]!= 3)
    {
      v8 = self;
      v7 = 0;
      goto LABEL_11;
    }

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
    v5 = 1144;
    [(UIImageView *)self->_checkmarkImageView setImage:v6];
  }

  [*(&self->super.super.super.super.super.isa + v5) sizeToFit];
  v7 = *(&self->super.super.super.super.super.isa + v5);
  v8 = self;
LABEL_11:

  [(MPAVClippingTableViewCell *)v8 setAccessoryView:v7];
}

- (id)_checkmarkImageForSmartAudio
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [(MPAVRoutingTableViewCell *)self _checkmarkImageNameForSmartAudio];
  v4 = [v2 systemImageNamed:v3];

  return v4;
}

- (id)_checkmarkAccessibilityLabelForSmartAudio
{
  v2 = [(MPAVRoutingTableViewCell *)self accessoryType];
  v3 = @"circle";
  if (v2)
  {
    v3 = 0;
  }

  if (v2 == 3)
  {
    return @"checkmark.circle.fill";
  }

  else
  {
    return v3;
  }
}

- (id)_checkmarkImageNameForSmartAudio
{
  v2 = [(MPAVRoutingTableViewCell *)self accessoryType];
  v3 = @"circle";
  if (v2)
  {
    v3 = 0;
  }

  if (v2 == 3)
  {
    return @"checkmark.circle.fill";
  }

  else
  {
    return v3;
  }
}

- (id)_pairedDeviceTextForRoute:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 isPickedOnPairedDevice])
  {
    v12 = 0;
    goto LABEL_18;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 auxiliaryDevices];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {

    goto LABEL_15;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v18;
LABEL_4:
  v9 = 0;
  v10 = v7;
  while (1)
  {
    if (*v18 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v7 = *(*(&v17 + 1) + 8 * v9);

    if ([v7 isPlaying])
    {
      break;
    }

    ++v9;
    v10 = v7;
    if (v6 == v9)
    {
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      break;
    }
  }

  if (!v7)
  {
LABEL_15:
    v11 = [v3 playingPairedDeviceName];
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v15 = [v14 localizedStringForKey:@"AIRPLAY_IN_USE_ON_PAIRED_DEVICE_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v12 = [v13 stringWithFormat:v15, v11];

    goto LABEL_17;
  }

  v11 = [v7 deviceName];

  if (v11)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = 0;
LABEL_17:

LABEL_18:

  return v12;
}

- (id)_batteryTextForRoute:(id)a3
{
  v4 = [a3 batteryLevel];
  v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v5 setNumberStyle:3];
  [v5 setUsesSignificantDigits:0];
  [v5 setUsesGroupingSeparator:0];
  v6 = [v4 leftPercentage];
  if (!v6 || (v7 = v6, [v4 rightPercentage], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v17 = [v4 leftPercentage];

    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
      v11 = [v10 localizedStringForKey:@"AIRPLAY_DEVICE_BATTERY_LEVEL_LEFT_FORMAT_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
      v19 = [v4 leftPercentage];
    }

    else
    {
      v20 = [v4 rightPercentage];

      if (v20)
      {
        v18 = MEMORY[0x1E696AEC0];
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v11 = [v10 localizedStringForKey:@"AIRPLAY_DEVICE_BATTERY_LEVEL_RIGHT_FORMAT_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v19 = [v4 rightPercentage];
      }

      else
      {
        v27 = [v4 singlePercentage];

        if (!v27)
        {
          v16 = 0;
          goto LABEL_18;
        }

        v18 = MEMORY[0x1E696AEC0];
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
        v11 = [v10 localizedStringForKey:@"AIRPLAY_DEVICE_BATTERY_LEVEL_SINGLE_FORMAT_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
        v19 = [v4 singlePercentage];
      }
    }

    v12 = v19;
    v13 = [v5 stringFromNumber:v19];
    [v18 stringWithFormat:v11, v13];
    goto LABEL_16;
  }

  if (![(MPAVRoutingTableViewCell *)self _shouldShowSeparateBatteryPercentagesForBatteryLevel:v4])
  {
    v21 = [v4 leftPercentage];
    [v21 floatValue];
    v23 = v22;
    v24 = [v4 rightPercentage];
    [v24 floatValue];
    if (v23 < v25)
    {
      [v4 leftPercentage];
    }

    else
    {
      [v4 rightPercentage];
    }
    v10 = ;

    v26 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v12 = [v11 localizedStringForKey:@"AIRPLAY_DEVICE_BATTERY_LEVEL_SINGLE_FORMAT_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
    v13 = [v5 stringFromNumber:v10];
    [v26 stringWithFormat:v12, v13];
    v16 = LABEL_16:;
    goto LABEL_17;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v11 = [v10 localizedStringForKey:@"AIRPLAY_DEVICE_BATTERY_LEVEL_COMBINED_FORMAT_%@_%@" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v12 = [v4 leftPercentage];
  v13 = [v5 stringFromNumber:v12];
  v14 = [v4 rightPercentage];
  v15 = [v5 stringFromNumber:v14];
  v16 = [v9 stringWithFormat:v11, v13, v15];

LABEL_17:
LABEL_18:
  v28 = [v4 casePercentage];

  if (v28 && (v29 = MEMORY[0x1E696AEC0], [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "localizedStringForKey:value:table:", @"AIRPLAY_DEVICE_BATTERY_LEVEL_CASE_%@", &stru_1F149ECA8, @"MediaPlayer"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "casePercentage"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "stringFromNumber:", v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "stringWithFormat:", v31, v33), v28 = objc_claimAutoreleasedReturnValue(), v33, v32, v31, v30, v16) && v28)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@", v16, v28];
  }

  else
  {
    v34 = v16;
  }

  v35 = v34;

  return v35;
}

- (BOOL)_shouldShowSeparateBatteryPercentagesForBatteryLevel:(id)a3
{
  v3 = a3;
  v4 = [v3 leftPercentage];
  if (v4)
  {
    v5 = [v3 rightPercentage];
    if (v5)
    {
      v6 = [v3 leftPercentage];
      [v6 floatValue];
      v8 = v7;
      v9 = [v3 rightPercentage];
      [v9 floatValue];
      v11 = vabds_f32(v8, v10) >= 0.1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_configureDetailLabel:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 whiteColor];
  [v4 setHighlightedTextColor:v5];

  [v4 setTextAlignment:4];
  v6 = [MEMORY[0x1E69DC888] lightGrayColor];
  [v4 setTextColor:v6];
}

- (void)_configureLabel:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v6 = a3;
  v4 = [v3 whiteColor];
  [v6 setHighlightedTextColor:v4];

  [v6 setTextAlignment:4];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  [v6 setTextColor:v5];

  [v6 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
}

- (void)setAccessoryType:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = MPAVRoutingTableViewCell;
  [(MPAVRoutingTableViewCell *)&v4 setAccessoryType:a3];
  [(MPAVRoutingTableViewCell *)self _updateAccessory];
}

- (void)setIconStyle:(unint64_t)a3
{
  if (self->_iconStyle == a3)
  {
    return;
  }

  self->_iconStyle = a3;
  [(MPAVRoutingTableViewCell *)self _updateSpinnerColor];
  iconStyle = self->_iconStyle;
  if (iconStyle == 1)
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    if (iconStyle)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [MEMORY[0x1E69DC888] blackColor];
  }

  v6 = v5;
LABEL_8:
  v7 = v6;
  [(UIImageView *)self->_iconImageView setTintColor:v6];
  [(UIImageView *)self->_chevronImageView setTintColor:v7];
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPAVRoutingTableViewCell;
  [(MPAVRoutingTableViewCell *)&v11 setTintColor:v4];
  if (v4)
  {
    [(UILabel *)self->_routeNameLabel setTextColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)self->_routeNameLabel setTextColor:v5];
  }

  v6 = [MEMORY[0x1E69DC888] blackColor];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = 0;
LABEL_8:
    [(MPAVRoutingTableViewCell *)self setIconStyle:v8];
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [v4 isEqual:v9];

  if (v10)
  {
    v8 = 1;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)layoutSubviews
{
  [(MPAVRoutingTableViewCell *)self _updateAccessory];
  v123.receiver = self;
  v123.super_class = MPAVRoutingTableViewCell;
  [(MPAVClippingTableViewCell *)&v123 layoutSubviews];
  v3 = [(MPAVRoutingTableViewCell *)self accessoryView];
  if (!v3)
  {
    v3 = [(MPAVRoutingTableViewCell *)self _defaultAccessoryView];
  }

  [v3 setAlpha:1.0];
  v4 = [(MPAVRoutingTableViewCell *)self contentView];
  [v4 bounds];
  v115 = v6;
  v116 = v5;
  v114 = v7;
  v9 = v8;

  v10 = [(MPAVRoutingTableViewCell *)self traitCollection];
  [v10 displayScale];

  UIRoundToScale();
  UIRoundToScale();
  v12 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v118 = v13;
  v119 = *MEMORY[0x1E695F058];
  v122 = v14;
  v121 = *(MEMORY[0x1E695F058] + 8);
  v113 = v121;
  if (v3)
  {
    v15 = v11;
    [v3 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(MPAVRoutingTableViewCell *)self bounds];
    v28 = MPRectByRemovingUserInterfaceLayoutDirectionInRect(v17, v19, v21, v23, v24, v25, v26, v27);
    v30 = v29;
    v14 = v31;
    v13 = v32;
    [(MPAVRoutingTableViewCell *)self bounds];
    v35 = v33 + v34;
    v124.origin.x = v28;
    v113 = v30;
    v124.origin.y = v30;
    v124.size.width = v14;
    v124.size.height = v13;
    v12 = v35 - CGRectGetWidth(v124) - v15;
  }

  if (self->_pendingSelection)
  {
    [(UIImageView *)self->_smartAudioImageView frame];
    Width = CGRectGetWidth(v125);
    [(UIImageView *)self->_checkmarkImageView frame];
    v37 = CGRectGetWidth(v126);
    if (Width < v37)
    {
      Width = v37;
    }

    [v3 frame];
    v38 = v12 + (Width - CGRectGetWidth(v127)) * -0.5;
    if (v38 >= 0.0)
    {
      v12 = v38;
    }

    else
    {
      v12 = 0.0;
    }
  }

  v110 = v14;
  v111 = v13;
  if ([(MPAVRoutingTableViewCell *)self accessoryType]== 3)
  {
    v39 = [(MPAVRoutingTableViewCell *)self useSmartAudioCheckmarkStyle];
    v40 = v12 + -3.0;
    if (v12 + -3.0 < 0.0)
    {
      v40 = 0.0;
    }

    if (!v39)
    {
      v12 = v40;
    }
  }

  UIRoundToScale();
  v112 = v9;
  UIRectInset();
  UIRectCenteredYInRect();
  v108 = v42;
  v109 = v41;
  v44 = v43;
  v107 = v45;
  UIRoundToScale();
  UIRoundToScale();
  UIRectInset();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v120 = v52;
  if ([(MPAVRoutingTableViewCell *)self isShowingVolumeSlider])
  {
    v53 = 1;
  }

  else
  {
    v53 = [(MPAVRoutingTableViewCellSubtitleTextState *)self->_subtitleTextState hasVisibleTextTypeToShow]^ 1;
  }

  [(UILabel *)self->_subtitleTextLabel setHidden:v53];
  [(UILabel *)self->_routeNameLabel sizeThatFits:v49, v51];
  v117 = v54;
  v55 = [(MPAVRoutingTableViewCell *)self traitCollection];
  v56 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v55];
  [(UILabel *)self->_routeNameLabel setFont:v56];

  v57 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:v55];
  [(UILabel *)self->_subtitleTextLabel setFont:v57];

  [(UILabel *)self->_routeNameLabel _baselineOffsetFromBottom];
  v59 = v58;
  if (([(UILabel *)self->_subtitleTextLabel isHidden]& 1) != 0)
  {
    if ([(MPAVRoutingTableViewCell *)self isShowingVolumeSlider:*&v47])
    {
      v104 = v47 + -1.0;
      v105 = v49 + -3.0;
      v106 = v51 - (v117 + 0.0);
      v60 = [(MPAVRoutingTableViewCell *)self traitCollection];
      [v60 displayScale];
      UIRoundToScale();
      v62 = v117 + v61;

      v63 = (v51 - v62) * 0.5;
      if (v63 < 0.0)
      {
        v63 = 0.0;
      }

      v120 = v120 + v63;
      v103 = v117 + v120 - v59;
    }

    else
    {
      v105 = v122;
      v106 = v118;
      v103 = v121;
      v104 = v119;
      v117 = v51;
    }
  }

  else
  {
    [(UILabel *)self->_subtitleTextLabel sizeThatFits:v49, v51, *&v47, *&v49];
    v105 = v122;
    v106 = v118;
    v65 = (v51 - (v117 + v64)) * 0.5;
    if (v65 < 0.0)
    {
      v65 = 0.0;
    }

    v120 = v120 + v65;
    v103 = v121;
    v104 = v119;
    v118 = v64;
    v122 = v49;
    v121 = v117 + v120 + 4.0 - v59;
    v119 = v47;
  }

  [(MPAVRoutingTableViewCell *)self bounds];
  [v3 setFrame:{MPRectByApplyingUserInterfaceLayoutDirectionInRect(v12, v113, v110, v111, v66, v67, v68, v69)}];
  [v3 center];
  v71 = v70;
  [v3 frame];
  [(MPAVRoutingTableViewCell *)self bounds];
  UIRectCenteredYInRect();
  [v3 setFrame:?];
  [v3 center];
  v73 = v71 - v72;
  v74 = [v3 maskView];
  [v74 center];
  v76 = v75;
  v77 = [v3 maskView];
  [v77 center];
  v79 = v73 + v78;
  v80 = [v3 maskView];
  [v80 setCenter:{v76, v79}];

  UIRectInset();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  [(UIImageView *)self->_iconImageView setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v109, v108, v44, v107, v116, v115, v114, v112)];
  [(UIImageView *)self->_chevronImageView setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v82, v84, v86, v88, v116, v115, v114, v112)];
  [(UIImageView *)self->_iconImageView frame];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  [(UIImageView *)self->_chevronImageView frame];
  v130.origin.x = v97;
  v130.origin.y = v98;
  v130.size.width = v99;
  v130.size.height = v100;
  v128.origin.x = v90;
  v128.origin.y = v92;
  v128.size.width = v94;
  v128.size.height = v96;
  v129 = CGRectUnion(v128, v130);
  [(UIView *)self->_expandTargetView setFrame:v129.origin.x, v129.origin.y, v129.size.width, v129.size.height];
  [(UILabel *)self->_routeNameLabel setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v101, v120, v102, v117, v116, v115, v114, v112)];
  [(UILabel *)self->_subtitleTextLabel setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v119, v121, v122, v118, v116, v115, v114, v112)];
  [(MPVolumeSlider *)self->_volumeSlider setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v104, v103, v105, v106, v116, v115, v114, v112)];
}

- (void)setShowingVolumeSlider:(BOOL)a3
{
  if (self->_showingVolumeSlider != a3)
  {
    self->_showingVolumeSlider = a3;
    [(MPVolumeSlider *)self->_volumeSlider setHidden:!a3];

    [(MPAVRoutingTableViewCell *)self setNeedsLayout];
  }
}

- (void)setVolumeSlider:(id)a3
{
  v5 = a3;
  volumeSlider = self->_volumeSlider;
  v14 = v5;
  if (volumeSlider == v5)
  {
    v10 = [(MPVolumeSlider *)v5 superview];
    v11 = [(MPAVRoutingTableViewCell *)self contentView];

    v12 = v14;
    if (v10 == v11)
    {
      goto LABEL_8;
    }

    v13 = [(MPAVRoutingTableViewCell *)self contentView];
    [v13 addSubview:v14];
  }

  else
  {
    v7 = [(MPVolumeSlider *)volumeSlider superview];
    v8 = [(MPAVRoutingTableViewCell *)self contentView];

    if (v7 == v8)
    {
      [(MPVolumeSlider *)self->_volumeSlider removeFromSuperview];
    }

    objc_storeStrong(&self->_volumeSlider, a3);
    v9 = [(MPAVRoutingTableViewCell *)self contentView];
    [v9 addSubview:self->_volumeSlider];

    [(MPVolumeSlider *)self->_volumeSlider setHidden:!self->_showingVolumeSlider];
    [(MPAVRoutingTableViewCell *)self setNeedsLayout];
  }

  v12 = v14;
LABEL_8:
}

- (void)setUseSmartAudioCheckmarkStyle:(BOOL)a3
{
  if (self->_useSmartAudioCheckmarkStyle != a3)
  {
    self->_useSmartAudioCheckmarkStyle = a3;
    if (a3 && !self->_smartAudioImageView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      smartAudioImageView = self->_smartAudioImageView;
      self->_smartAudioImageView = v6;

      v8 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
      [(UIImageView *)self->_smartAudioImageView setPreferredSymbolConfiguration:v8];
    }

    [(MPAVRoutingTableViewCell *)self _updateAccessory];
  }
}

- (void)setPendingSelection:(BOOL)a3
{
  if (self->_pendingSelection == a3)
  {
    return;
  }

  self->_pendingSelection = a3;
  spinnerView = self->_spinnerView;
  if (!spinnerView)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v6 = self->_spinnerView;
    self->_spinnerView = v5;

    [(MPAVRoutingTableViewCell *)self _updateSpinnerColor];
    spinnerView = self->_spinnerView;
    if (self->_pendingSelection)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(UIActivityIndicatorView *)spinnerView stopAnimating];
    goto LABEL_7;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  [(UIActivityIndicatorView *)spinnerView startAnimating];
LABEL_7:

  [(MPAVRoutingTableViewCell *)self _updateAccessory];
}

- (void)updateForEndpoint:(id)a3 routeItem:(id)a4 inferLocalizedModelName:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 leader];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v7 routes];
    v10 = [v11 firstObject];
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v21 = 134218242;
    v22 = self;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_INFO, "routingTableView %p updateForEndpoint: routeUpdate: %@", &v21, 0x16u);
  }

  if (v5 && ([v10 routeSubtype] == 1 || objc_msgSend(v10, "routeSubtype") == 3))
  {
    v13 = MSVCopyLocalizedModelName();
  }

  else
  {
    v13 = [v7 localizedTitle];
  }

  v14 = v13;
  [(UILabel *)self->_routeNameLabel setText:v13];
  v15 = [v7 image];

  if (v15 || !v10)
  {
    v18 = [v7 image];
  }

  else
  {
    if ([v7 type] == 1)
    {
      v16 = [v7 routes];
      v17 = [(MPAVRoutingTableViewCell *)self _iconImageForRoutes:v16];
      [(UIImageView *)self->_iconImageView setImage:v17];

      goto LABEL_18;
    }

    v18 = [(MPAVRoutingTableViewCell *)self _iconImageForRoute:v10];
  }

  v16 = v18;
  [(UIImageView *)self->_iconImageView setImage:v18];
LABEL_18:

  v19 = [(UIImageView *)self->_iconImageView image];
  if ([v19 isSymbolImage])
  {
    v20 = 4;
  }

  else
  {
    v20 = 1;
  }

  [(UIImageView *)self->_iconImageView setContentMode:v20];

  -[UIImageView setHidden:](self->_chevronImageView, "setHidden:", [v7 type] != 1);
  [(MPAVRoutingTableViewCell *)self _updateSubtitleTextLabelForRouteItem:v7];
  -[MPAVRoutingTableViewCell setEnabled:](self, "setEnabled:", [v7 enabled]);
  [(MPAVRoutingTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = MPAVRoutingTableViewCell;
  [(MPAVClippingTableViewCell *)&v2 prepareForReuse];
}

- (void)dealloc
{
  [(NSTimer *)self->_subtitleTextUpdateTimer invalidate];
  subtitleTextUpdateTimer = self->_subtitleTextUpdateTimer;
  self->_subtitleTextUpdateTimer = 0;

  v4.receiver = self;
  v4.super_class = MPAVRoutingTableViewCell;
  [(MPAVClippingTableViewCell *)&v4 dealloc];
}

- (MPAVRoutingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v45.receiver = self;
  v45.super_class = MPAVRoutingTableViewCell;
  v4 = [(MPAVClippingTableViewCell *)&v45 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [v5 setBackgroundColor:v6];

    [(MPAVRoutingTableViewCell *)v4 setSelectedBackgroundView:v5];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(MPAVRoutingTableViewCell *)v4 setBackgroundColor:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v8;

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v4->_iconImageView setBackgroundColor:v10];

    v11 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:17.0];
    [(UIImageView *)v4->_iconImageView setPreferredSymbolConfiguration:v11];

    v12 = [(MPAVRoutingTableViewCell *)v4 contentView];
    [v12 addSubview:v4->_iconImageView];

    v13 = [MEMORY[0x1E69DC888] blackColor];
    [(UIImageView *)v4->_iconImageView setTintColor:v13];

    v14 = objc_opt_new();
    chevronImageView = v4->_chevronImageView;
    v4->_chevronImageView = v14;

    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    [(UIImageView *)v4->_chevronImageView setImage:v16];

    [(UIImageView *)v4->_chevronImageView setContentMode:4];
    v17 = [MEMORY[0x1E69DC888] blackColor];
    [(UIImageView *)v4->_chevronImageView setTintColor:v17];

    [(UIImageView *)v4->_chevronImageView setAlpha:0.7];
    v18 = [(MPAVRoutingTableViewCell *)v4 contentView];
    [v18 addSubview:v4->_chevronImageView];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v4 selector:sel__handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    routeNameLabel = v4->_routeNameLabel;
    v4->_routeNameLabel = v20;

    v22 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_routeNameLabel setHighlightedTextColor:v22];

    [(UILabel *)v4->_routeNameLabel setTextAlignment:4];
    v23 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v4->_routeNameLabel setTextColor:v23];

    [(UILabel *)v4->_routeNameLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
    v24 = [(MPAVRoutingTableViewCell *)v4 contentView];
    [v24 addSubview:v4->_routeNameLabel];

    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleTextLabel = v4->_subtitleTextLabel;
    v4->_subtitleTextLabel = v25;

    v27 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_subtitleTextLabel setHighlightedTextColor:v27];

    [(UILabel *)v4->_subtitleTextLabel setTextAlignment:4];
    v28 = [MEMORY[0x1E69DC888] darkGrayColor];
    [(UILabel *)v4->_subtitleTextLabel setTextColor:v28];

    v29 = [(MPAVRoutingTableViewCell *)v4 contentView];
    [v29 addSubview:v4->_subtitleTextLabel];

    [(UILabel *)v4->_subtitleTextLabel setHidden:1];
    v30 = objc_alloc_init(MPAVRoutingTableViewCellSubtitleTextState);
    subtitleTextState = v4->_subtitleTextState;
    v4->_subtitleTextState = v30;

    v32 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    checkmarkImageView = v4->_checkmarkImageView;
    v4->_checkmarkImageView = v33;

    v35 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v36 = [v35 fontDescriptorWithSymbolicTraits:2];

    v37 = [MEMORY[0x1E69DB878] fontWithDescriptor:v36 size:0.0];
    v38 = [MEMORY[0x1E69DCAD8] configurationWithFont:v37 scale:2];
    [(UIImageView *)v4->_checkmarkImageView setPreferredSymbolConfiguration:v38];

    v39 = [MEMORY[0x1E69DCAD8] configurationWithFont:v37 scale:1];
    [(UIImageView *)v4->_chevronImageView setPreferredSymbolConfiguration:v39];

    v4->_subtitleViewAlpha = 1.0;
    v40 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTapToExpand];
    v41 = objc_opt_new();
    expandTargetView = v4->_expandTargetView;
    v4->_expandTargetView = v41;

    [(UIView *)v4->_expandTargetView addGestureRecognizer:v40];
    v43 = [(MPAVRoutingTableViewCell *)v4 contentView];
    [v43 addSubview:v4->_expandTargetView];
  }

  return v4;
}

@end