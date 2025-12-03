@interface AVMobileChromeControlsStyleSheet
- (AVMobileChromeControlsStyleSheet)initWithTraitCollection:(id)collection shouldUseCompactFullScreenSize:(BOOL)size;
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
- (UIEdgeInsets)embeddedInlineInsets;
- (UIEdgeInsets)landscapeFullscreenInsets;
- (UIEdgeInsets)portraitFullscreenInsets;
- (UIFont)infoLabelFont;
- (UIFont)scrubberInfoLabelFont;
- (UIFont)scrubberTimeLabelFont;
- (void)_loadFontsIfNeeded;
@end

@implementation AVMobileChromeControlsStyleSheet

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
  [(AVMobileChromeControlsStyleSheet *)self _loadFontsIfNeeded];
  infoLabelFont = self->_infoLabelFont;

  return infoLabelFont;
}

- (void)_loadFontsIfNeeded
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (self && !self[19])
  {
    traitCollection = [self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v4 = MEMORY[0x1E69DDD00];
    if (userInterfaceIdiom != 5)
    {
      v4 = MEMORY[0x1E69DDD10];
    }

    v5 = MEMORY[0x1E69DB878];
    v6 = *v4;
    traitCollection2 = [self traitCollection];
    v8 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:traitCollection2];
    [v8 pointSize];
    v10 = v9;

    v11 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:v10 weight:*MEMORY[0x1E69DB978]];
    v12 = *MEMORY[0x1E69DB900];
    v30[0] = *MEMORY[0x1E69DB908];
    v30[1] = v12;
    v31[0] = &unk_1EFF129B0;
    v31[1] = &unk_1EFF129C8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v32[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

    fontDescriptor = [v11 fontDescriptor];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{v10, *MEMORY[0x1E69DB8B0], *MEMORY[0x1E69DB8C0], v14}];
    v29[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:2];
    v18 = [fontDescriptor fontDescriptorByAddingAttributes:v17];

    v19 = MEMORY[0x1E69DB878];
    v20 = *MEMORY[0x1E69DDD28];
    traitCollection3 = [self traitCollection];
    v22 = [v19 preferredFontForTextStyle:v20 compatibleWithTraitCollection:traitCollection3];
    v23 = self[18];
    self[18] = v22;

    v24 = [MEMORY[0x1E69DB878] systemFontOfSize:v10];
    v25 = self[19];
    self[19] = v24;

    v26 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:v10];
    v27 = self[20];
    self[20] = v26;
  }
}

- (UIFont)scrubberTimeLabelFont
{
  [(AVMobileChromeControlsStyleSheet *)self _loadFontsIfNeeded];
  scrubberTimeLabelFont = self->_scrubberTimeLabelFont;

  return scrubberTimeLabelFont;
}

- (UIFont)scrubberInfoLabelFont
{
  [(AVMobileChromeControlsStyleSheet *)self _loadFontsIfNeeded];
  scrubberInfoLabelFont = self->_scrubberInfoLabelFont;

  return scrubberInfoLabelFont;
}

- (AVMobileChromeControlsStyleSheet)initWithTraitCollection:(id)collection shouldUseCompactFullScreenSize:(BOOL)size
{
  sizeCopy = size;
  v38.receiver = self;
  v38.super_class = AVMobileChromeControlsStyleSheet;
  v5 = [(AVMobileControlsStyleSheet *)&v38 initWithTraitCollection:collection];
  v6 = v5;
  if (v5)
  {
    traitCollection = [(AVMobileControlsStyleSheet *)v5 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    traitCollection2 = [(AVMobileControlsStyleSheet *)v6 traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    traitCollection3 = [(AVMobileControlsStyleSheet *)v6 traitCollection];
    userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v14 = 0.77;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v6->_fullscreenInsets.top = *MEMORY[0x1E69DDCE0];
    *&v6->_fullscreenInsets.bottom = v15;
    if (!userInterfaceIdiom3 || userInterfaceIdiom2 == 1)
    {
      v16 = vdup_n_s32(userInterfaceIdiom3 == 0);
      v17.i64[0] = v16.u32[0];
      v17.i64[1] = v16.u32[1];
      __asm { FMOV            V2.2D, #27.0 }

      v22 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), _Q2, xmmword_18B6EC440);
      *&v6->_fullscreenInsets.top = v22;
      *&v6->_fullscreenInsets.bottom = v22;
    }

    v23 = 6.0;
    v6->_shouldUseCompactFullScreenSize = sizeCopy;
    v37 = vmulq_n_f64(xmmword_18B6EC450, v14);
    v6->_defaultItemInlineSize = v37;
    v24 = vdup_n_s32(sizeCopy);
    v25.i64[0] = v24.u32[0];
    v25.i64[1] = v24.u32[1];
    v6->_defaultItemFullScreenSize = vmulq_n_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), xmmword_18B6EC470, xmmword_18B6EC460), v14);
    if (userInterfaceIdiom == 5)
    {
      v23 = 20.0;
    }

    if (userInterfaceIdiom2 == 1)
    {
      v23 = 8.0;
    }

    v6->_standardPaddingFullScreen = v23;
    if (userInterfaceIdiom == 5)
    {
      v23 = 8.0;
    }

    v6->_standardPaddingInline = v23;
    v6->_standardInteritemPadding = v14 * 11.0;
    v6->_additionalInlinePaddingForDodgingSafeArea = v14 * 20.0;
    standardPaddingInline = v6->_standardPaddingInline;
    v6->_embeddedInlineInsets.top = standardPaddingInline;
    v6->_embeddedInlineInsets.left = standardPaddingInline;
    v6->_embeddedInlineInsets.bottom = standardPaddingInline;
    v6->_embeddedInlineInsets.right = standardPaddingInline;
    v6->_routePickerButtonInlineSize.width = v14 * 18.0;
    v6->_routePickerButtonInlineSize.height = v14 * 18.0;
    v6->_routePickerButtonFullScreenSize.width = v14 * 19.0;
    v6->_routePickerButtonFullScreenSize.height = v14 * 19.0;
    v6->_audioRoutePickerFullScreenSize.width = v14 * 20.0;
    v6->_audioRoutePickerFullScreenSize.height = v14 * 20.0;
    v6->_volumeSliderInlineWidth = v14 * 88.0;
    v27 = v14 * 100.0;
    v6->_volumeSliderCompactFullScreenWidth = v14 * 100.0;
    v6->_volumeSliderRegularFullScreenWidth = v14 * 128.0;
    v6->_volumeSliderPadding = v14 * 14.0;
    v6->_volumeButtonInlineSize.width = v14 * 18.0;
    v6->_volumeButtonInlineSize.height = v14 * 18.0;
    v6->_volumeButtonFullScreenSize.width = v14 * 19.0;
    v6->_volumeButtonFullScreenSize.height = v14 * 19.0;
    v6->_minimumProminentPlayButtonDimension = 31.0;
    v6->_maximumProminentPlayButtonDimension = 60.0;
    avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
    [avkit_mainScreen bounds];
    Width = CGRectGetWidth(v39);
    [avkit_mainScreen bounds];
    Height = CGRectGetHeight(v40);
    if (Width >= Height)
    {
      v31 = Height;
    }

    else
    {
      v31 = Width;
    }

    [avkit_mainScreen bounds];
    v32 = CGRectGetWidth(v41);
    [avkit_mainScreen bounds];
    v33 = CGRectGetHeight(v42);
    if (v32 >= v33)
    {
      v33 = v32;
    }

    if (userInterfaceIdiom == 5 || userInterfaceIdiom2 == 1)
    {
      v33 = v31;
    }

    v6->_maximumTransportControlsWidth = v36 * v33;
    v6->_maximumMultiRowTransportControlsWidth = 402.0;
    v6->_minimumTransportControlsWidth = v36 * 210.0;
    v6->_minimumSingleButtonTransportControlsWidth = v37.f64[0];
    v6->_minimumScrubberSize.width = v27;
    v6->_minimumScrubberSize.height = v36 * 9.0;
    *&v6->_doubleRowLayoutMargins.top = xmmword_18B6EC480;
    *&v6->_doubleRowLayoutMargins.bottom = xmmword_18B6EC490;
    *&v6->_doubleRowLayoutMarginsWhenShowingScrubInstructions.top = xmmword_18B6EC4A0;
    *&v6->_doubleRowLayoutMarginsWhenShowingScrubInstructions.bottom = xmmword_18B6EC490;
    *&v6->_doublerowLayoutMarginsWhenShowingCustomContentInfo.top = xmmword_18B6EC4B0;
    *&v6->_doublerowLayoutMarginsWhenShowingCustomContentInfo.bottom = xmmword_18B6EC490;
    v6->_spacingBetweenScrubInstructionsAndScrubber = 10.0;
    v6->_liveBroadcastLabelTopToBackdropTopDistance = v36 * 15.0;
  }

  return v6;
}

@end