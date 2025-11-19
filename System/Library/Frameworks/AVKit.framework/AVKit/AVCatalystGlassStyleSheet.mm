@interface AVCatalystGlassStyleSheet
- (AVCatalystGlassStyleSheet)initWithTraitCollection:(id)a3 shouldUseCompactFullScreenSize:(BOOL)a4;
- (CGSize)audioRoutePickerFullScreenSize;
- (CGSize)defaultItemFullScreenSize;
- (CGSize)defaultItemInlineSize;
- (CGSize)minimumScrubberSize;
- (CGSize)routePickerButtonFullScreenSize;
- (CGSize)routePickerButtonInlineSize;
- (CGSize)volumeButtonFullScreenSize;
- (CGSize)volumeButtonInlineSize;
- (NSDirectionalEdgeInsets)doubleRowLayoutMargins;
- (NSDirectionalEdgeInsets)doubleRowLayoutMarginsWhenShowingScrubInstructions;
- (NSDirectionalEdgeInsets)doublerowLayoutMarginsWhenShowingCustomContentInfo;
- (NSDirectionalEdgeInsets)volumeControlsDirectionalInsets;
- (UIEdgeInsets)embeddedInlineInsets;
- (UIEdgeInsets)landscapeFullscreenInsets;
- (UIEdgeInsets)portraitFullscreenInsets;
- (UIFont)infoLabelFont;
- (UIFont)scrubberInfoLabelFont;
- (UIFont)scrubberTimeLabelFont;
- (void)_loadFontsIfNeeded;
@end

@implementation AVCatalystGlassStyleSheet

- (NSDirectionalEdgeInsets)volumeControlsDirectionalInsets
{
  top = self->_volumeControlsDirectionalInsets.top;
  leading = self->_volumeControlsDirectionalInsets.leading;
  bottom = self->_volumeControlsDirectionalInsets.bottom;
  trailing = self->_volumeControlsDirectionalInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)doublerowLayoutMarginsWhenShowingCustomContentInfo
{
  top = self->_doublerowLayoutMarginsWhenShowingCustomContentInfo.top;
  leading = self->_doublerowLayoutMarginsWhenShowingCustomContentInfo.leading;
  bottom = self->_doublerowLayoutMarginsWhenShowingCustomContentInfo.bottom;
  trailing = self->_doublerowLayoutMarginsWhenShowingCustomContentInfo.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)doubleRowLayoutMarginsWhenShowingScrubInstructions
{
  top = self->_doubleRowLayoutMarginsWhenShowingScrubInstructions.top;
  leading = self->_doubleRowLayoutMarginsWhenShowingScrubInstructions.leading;
  bottom = self->_doubleRowLayoutMarginsWhenShowingScrubInstructions.bottom;
  trailing = self->_doubleRowLayoutMarginsWhenShowingScrubInstructions.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)doubleRowLayoutMargins
{
  top = self->_doubleRowLayoutMargins.top;
  leading = self->_doubleRowLayoutMargins.leading;
  bottom = self->_doubleRowLayoutMargins.bottom;
  trailing = self->_doubleRowLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGSize)minimumScrubberSize
{
  width = self->_minimumScrubberSize.width;
  height = self->_minimumScrubberSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)volumeButtonFullScreenSize
{
  width = self->_volumeButtonFullScreenSize.width;
  height = self->_volumeButtonFullScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)volumeButtonInlineSize
{
  width = self->_volumeButtonInlineSize.width;
  height = self->_volumeButtonInlineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)audioRoutePickerFullScreenSize
{
  width = self->_audioRoutePickerFullScreenSize.width;
  height = self->_audioRoutePickerFullScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)routePickerButtonFullScreenSize
{
  width = self->_routePickerButtonFullScreenSize.width;
  height = self->_routePickerButtonFullScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)routePickerButtonInlineSize
{
  width = self->_routePickerButtonInlineSize.width;
  height = self->_routePickerButtonInlineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)defaultItemFullScreenSize
{
  width = self->_defaultItemFullScreenSize.width;
  height = self->_defaultItemFullScreenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)defaultItemInlineSize
{
  width = self->_defaultItemInlineSize.width;
  height = self->_defaultItemInlineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)embeddedInlineInsets
{
  top = self->_embeddedInlineInsets.top;
  left = self->_embeddedInlineInsets.left;
  bottom = self->_embeddedInlineInsets.bottom;
  right = self->_embeddedInlineInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)portraitFullscreenInsets
{
  top = self->_fullscreenInsets.top;
  left = self->_fullscreenInsets.left;
  bottom = self->_fullscreenInsets.bottom;
  right = self->_fullscreenInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)landscapeFullscreenInsets
{
  top = self->_fullscreenInsets.top;
  left = self->_fullscreenInsets.left;
  bottom = self->_fullscreenInsets.bottom;
  right = self->_fullscreenInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIFont)infoLabelFont
{
  [(AVCatalystGlassStyleSheet *)self _loadFontsIfNeeded];
  infoLabelFont = self->_infoLabelFont;

  return infoLabelFont;
}

- (void)_loadFontsIfNeeded
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a1 && !a1[19])
  {
    v2 = [a1 traitCollection];
    v3 = [v2 userInterfaceIdiom];

    v4 = MEMORY[0x1E69DDD00];
    if (v3 != 5)
    {
      v4 = MEMORY[0x1E69DDD10];
    }

    v5 = MEMORY[0x1E69DB878];
    v6 = *v4;
    v7 = [a1 traitCollection];
    v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v7];
    [v8 pointSize];
    v10 = v9;

    v11 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:v10 weight:*MEMORY[0x1E69DB978]];
    v12 = *MEMORY[0x1E69DB900];
    v32[0] = *MEMORY[0x1E69DB908];
    v32[1] = v12;
    v33[0] = &unk_1EFF12CF8;
    v33[1] = &unk_1EFF12D10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v34[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

    v15 = [v11 fontDescriptor];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{v10, *MEMORY[0x1E69DB8B0], *MEMORY[0x1E69DB8C0], v14}];
    v31[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:2];
    v18 = [v15 fontDescriptorByAddingAttributes:v17];

    v19 = MEMORY[0x1E69DB878];
    v20 = *MEMORY[0x1E69DDD28];
    v21 = [a1 traitCollection];
    v22 = [v19 preferredFontForTextStyle:v20 compatibleWithTraitCollection:v21];
    v23 = a1[18];
    a1[18] = v22;

    v24 = [MEMORY[0x1E69DB878] systemFontOfSize:v10];
    v25 = a1[19];
    a1[19] = v24;

    v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:v10];
    v27 = a1[20];
    a1[20] = v26;

    v28 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB970]];
    v29 = a1[35];
    a1[35] = v28;
  }
}

- (UIFont)scrubberTimeLabelFont
{
  [(AVCatalystGlassStyleSheet *)self _loadFontsIfNeeded];
  scrubberTimeLabelFont = self->_scrubberTimeLabelFont;

  return scrubberTimeLabelFont;
}

- (UIFont)scrubberInfoLabelFont
{
  [(AVCatalystGlassStyleSheet *)self _loadFontsIfNeeded];
  scrubberInfoLabelFont = self->_scrubberInfoLabelFont;

  return scrubberInfoLabelFont;
}

- (AVCatalystGlassStyleSheet)initWithTraitCollection:(id)a3 shouldUseCompactFullScreenSize:(BOOL)a4
{
  v34.receiver = self;
  v34.super_class = AVCatalystGlassStyleSheet;
  v5 = [(AVMobileControlsStyleSheet *)&v34 initWithTraitCollection:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [(AVMobileControlsStyleSheet *)v5 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    v9 = [(AVMobileControlsStyleSheet *)v6 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    v11 = [(AVMobileControlsStyleSheet *)v6 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v8 == 5)
    {
      v13 = 0.77;
    }

    else
    {
      v13 = 1.0;
    }

    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v6->_fullscreenInsets.top = *MEMORY[0x1E69DDCE0];
    *&v6->_fullscreenInsets.bottom = v14;
    if (!v12 || v10 == 1)
    {
      v15 = vdup_n_s32(v12 == 0);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      __asm { FMOV            V2.2D, #27.0 }

      v21 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), _Q2, xmmword_18B6EC440);
      *&v6->_fullscreenInsets.top = v21;
      *&v6->_fullscreenInsets.bottom = v21;
    }

    v6->_shouldUseCompactFullScreenSize = a4;
    v6->_defaultItemInlineSize.width = v13 * 34.0;
    v6->_defaultItemInlineSize.height = v13 * 34.0;
    v6->_defaultItemFullScreenSize.width = v13 * 34.0;
    v6->_defaultItemFullScreenSize.height = v13 * 34.0;
    v6->_standardPaddingFullScreen = v13 * 11.0;
    v22 = 5.0;
    if (v8 != 5)
    {
      v22 = v13 * 11.0;
    }

    v6->_standardPaddingInline = v22;
    v6->_standardInteritemPadding = v13 * 11.0;
    v6->_additionalInlinePaddingForDodgingSafeArea = v13 * 20.0;
    standardPaddingInline = v6->_standardPaddingInline;
    v6->_embeddedInlineInsets.top = standardPaddingInline;
    v6->_embeddedInlineInsets.left = standardPaddingInline;
    v6->_embeddedInlineInsets.bottom = standardPaddingInline;
    v6->_embeddedInlineInsets.right = standardPaddingInline;
    v6->_routePickerButtonInlineSize.width = v13 * 21.0;
    v6->_routePickerButtonInlineSize.height = v13 * 21.0;
    v6->_routePickerButtonFullScreenSize.width = v13 * 23.0;
    v6->_routePickerButtonFullScreenSize.height = v13 * 23.0;
    v6->_audioRoutePickerFullScreenSize.width = v13 * 23.0;
    v6->_audioRoutePickerFullScreenSize.height = v13 * 23.0;
    v6->_volumeSliderInlineWidth = 128.0;
    v6->_volumeSliderCompactFullScreenWidth = 128.0;
    v6->_volumeSliderRegularFullScreenWidth = 128.0;
    v6->_volumeSliderPadding = v13 * 18.0;
    v6->_volumeButtonInlineSize.width = v13 * 24.0;
    v6->_volumeButtonInlineSize.height = v13 * 24.0;
    v6->_volumeButtonFullScreenSize.width = v13 * 25.0;
    v6->_volumeButtonFullScreenSize.height = v13 * 25.0;
    v6->_minimumProminentPlayButtonDimension = 31.0;
    v6->_maximumProminentPlayButtonDimension = 60.0;
    v24 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
    [v24 bounds];
    Width = CGRectGetWidth(v35);
    [v24 bounds];
    Height = CGRectGetHeight(v36);
    if (Width >= Height)
    {
      v27 = Height;
    }

    else
    {
      v27 = Width;
    }

    [v24 bounds];
    v28 = CGRectGetWidth(v37);
    [v24 bounds];
    v29 = CGRectGetHeight(v38);
    if (v28 >= v29)
    {
      v29 = v28;
    }

    if (v8 == 5 || v10 == 1)
    {
      v29 = v27;
    }

    v6->_maximumTransportControlsWidth = v13 * v29;
    v6->_maximumMultiRowTransportControlsWidth = 402.0;
    v6->_minimumTransportControlsWidth = 210.0;
    v6->_minimumSingleButtonTransportControlsWidth = 45.0;
    v6->_minimumScrubberSize = xmmword_18B6EC570;
    *&v6->_doubleRowLayoutMargins.top = xmmword_18B6EC480;
    *&v6->_doubleRowLayoutMargins.bottom = xmmword_18B6EC490;
    *&v6->_doubleRowLayoutMarginsWhenShowingScrubInstructions.top = xmmword_18B6EC4A0;
    *&v6->_doubleRowLayoutMarginsWhenShowingScrubInstructions.bottom = xmmword_18B6EC490;
    *&v6->_doublerowLayoutMarginsWhenShowingCustomContentInfo.top = xmmword_18B6EC4B0;
    *&v6->_doublerowLayoutMarginsWhenShowingCustomContentInfo.bottom = xmmword_18B6EC490;
    v6->_spacingBetweenScrubInstructionsAndScrubber = 10.0;
    v6->_liveBroadcastLabelTopToBackdropTopDistance = v13 * 15.0;
    v6->_defaultInterItemSpacing = v13 * 14.0;
    v6->_volumeControlsDirectionalInsets.top = v13 * 15.0;
    v6->_volumeControlsDirectionalInsets.leading = 0.0;
    v6->_volumeControlsDirectionalInsets.bottom = 0.0;
    v6->_volumeControlsDirectionalInsets.trailing = v13 * 12.0;
    v6->_defaultPlatterHeight = v13 * 46.0;
    v31 = [MEMORY[0x1E69DC888] whiteColor];
    sliderMinValueTrackColor = v6->_sliderMinValueTrackColor;
    v6->_sliderMinValueTrackColor = v31;
  }

  return v6;
}

@end