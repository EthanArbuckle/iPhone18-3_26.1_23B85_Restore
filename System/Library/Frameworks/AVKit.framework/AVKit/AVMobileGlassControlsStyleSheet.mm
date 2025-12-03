@interface AVMobileGlassControlsStyleSheet
- (AVMobileGlassControlsStyleSheet)initWithTraitCollection:(id)collection;
- (CGSize)playbackControlButtonLargeInlineSize;
- (CGSize)playbackControlButtonLargeSize;
- (CGSize)playbackControlButtonSmallInlineSize;
- (CGSize)playbackControlButtonSmallSize;
- (UIEdgeInsets)additionalLandscapeTimelineInsets;
- (UIEdgeInsets)controlsPlatterFullscreenEdgeInsets;
- (UIEdgeInsets)controlsPlatterInlineEdgeInsets;
- (UIEdgeInsets)embeddedInlineInsets;
- (UIEdgeInsets)landscapeFullscreenInsets;
- (UIEdgeInsets)playbackControlsViewLayoutMarginsForView:(id)view keyboardHeight:(double)height isFullScreen:(BOOL)screen;
- (UIEdgeInsets)portraitFullscreenInsets;
- (UIEdgeInsets)timelineControlsPlatterFullscreenEdgeInsets;
- (UIEdgeInsets)timelineControlsPlatterInlineEdgeInsets;
- (UIEdgeInsets)volumeControlsPlatterFullscreenEdgeInsets;
- (UIEdgeInsets)volumeControlsPlatterInlineEdgeInsets;
- (UIFont)buttonFont;
- (UIFont)contentTabLabelFont;
- (UIFont)contentTagFont;
- (UIFont)infoAffordanceButtonFont;
- (UIFont)inlineButtonFont;
- (UIFont)playPauseButtonFont;
- (UIFont)prominentContentTagFont;
- (UIFont)secondaryPlaybackControlsFont;
- (UIFont)subtitleFont;
- (UIFont)timeLabelFont;
- (UIFont)titleFont;
- (void)_loadFontsIfNeeded;
@end

@implementation AVMobileGlassControlsStyleSheet

- (CGSize)playbackControlButtonSmallInlineSize
{
  width = self->_playbackControlButtonSmallInlineSize.width;
  height = self->_playbackControlButtonSmallInlineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playbackControlButtonLargeInlineSize
{
  width = self->_playbackControlButtonLargeInlineSize.width;
  height = self->_playbackControlButtonLargeInlineSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playbackControlButtonSmallSize
{
  width = self->_playbackControlButtonSmallSize.width;
  height = self->_playbackControlButtonSmallSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playbackControlButtonLargeSize
{
  width = self->_playbackControlButtonLargeSize.width;
  height = self->_playbackControlButtonLargeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)additionalLandscapeTimelineInsets
{
  top = self->_additionalLandscapeTimelineInsets.top;
  left = self->_additionalLandscapeTimelineInsets.left;
  bottom = self->_additionalLandscapeTimelineInsets.bottom;
  right = self->_additionalLandscapeTimelineInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)volumeControlsPlatterFullscreenEdgeInsets
{
  top = self->_volumeControlsPlatterFullscreenEdgeInsets.top;
  left = self->_volumeControlsPlatterFullscreenEdgeInsets.left;
  bottom = self->_volumeControlsPlatterFullscreenEdgeInsets.bottom;
  right = self->_volumeControlsPlatterFullscreenEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)timelineControlsPlatterFullscreenEdgeInsets
{
  top = self->_timelineControlsPlatterFullscreenEdgeInsets.top;
  left = self->_timelineControlsPlatterFullscreenEdgeInsets.left;
  bottom = self->_timelineControlsPlatterFullscreenEdgeInsets.bottom;
  right = self->_timelineControlsPlatterFullscreenEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)controlsPlatterFullscreenEdgeInsets
{
  top = self->_controlsPlatterFullscreenEdgeInsets.top;
  left = self->_controlsPlatterFullscreenEdgeInsets.left;
  bottom = self->_controlsPlatterFullscreenEdgeInsets.bottom;
  right = self->_controlsPlatterFullscreenEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)volumeControlsPlatterInlineEdgeInsets
{
  top = self->_volumeControlsPlatterInlineEdgeInsets.top;
  left = self->_volumeControlsPlatterInlineEdgeInsets.left;
  bottom = self->_volumeControlsPlatterInlineEdgeInsets.bottom;
  right = self->_volumeControlsPlatterInlineEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)timelineControlsPlatterInlineEdgeInsets
{
  top = self->_timelineControlsPlatterInlineEdgeInsets.top;
  left = self->_timelineControlsPlatterInlineEdgeInsets.left;
  bottom = self->_timelineControlsPlatterInlineEdgeInsets.bottom;
  right = self->_timelineControlsPlatterInlineEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)controlsPlatterInlineEdgeInsets
{
  top = self->_controlsPlatterInlineEdgeInsets.top;
  left = self->_controlsPlatterInlineEdgeInsets.left;
  bottom = self->_controlsPlatterInlineEdgeInsets.bottom;
  right = self->_controlsPlatterInlineEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)playbackControlsViewLayoutMarginsForView:(id)view keyboardHeight:(double)height isFullScreen:(BOOL)screen
{
  screenCopy = screen;
  viewCopy = view;
  traitCollection = [(AVMobileControlsStyleSheet *)self traitCollection];
  [(AVMobileGlassControlsStyleSheet *)self standardPaddingFullScreen];
  v91 = v10;
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  [viewCopy safeAreaInsets];
  v13 = v12;
  v87 = v14;
  window = [viewCopy window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  v18 = statusBarManager;
  v89 = v13;
  if (window)
  {
    heightCopy = height;
    [statusBarManager statusBarFrame];
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    v23 = CGRectGetHeight(v92);
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    if (v23 > CGRectGetWidth(v93))
    {
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = height;
      v24 = CGRectGetHeight(v94);
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = height;
      height = CGRectGetWidth(v95);
      width = v24;
    }

    [viewCopy convertRect:window fromView:{x, y, width, height}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [viewCopy bounds];
    v103.origin.x = v33;
    v103.origin.y = v34;
    v103.size.width = v35;
    v103.size.height = v36;
    v96.origin.x = v26;
    v96.origin.y = v28;
    v96.size.width = v30;
    v96.size.height = v32;
    v97 = CGRectIntersection(v96, v103);
    v37 = CGRectGetHeight(v97);
    if (v37 >= 0.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    [viewCopy bounds];
    [window convertRect:viewCopy fromView:?];
    v13 = v89;
    v39 = v89 + CGRectGetMinY(v98);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    MaxY = CGRectGetMaxY(v99);
    v41 = v91;
    v42 = v39 > v91 * 0.5 + MaxY;
    height = heightCopy;
    if (!screenCopy)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v42 = 0;
    v38 = 0.0;
    v41 = v91;
    if (!screenCopy)
    {
LABEL_24:
      screen = [window screen];
      [(AVMobileGlassControlsStyleSheet *)self embeddedInlineInsets];
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      [currentDevice orientation];

      [screen _peripheryInsets];
      UIEdgeInsetsAdd();
      v58 = v57;
      v86 = v59;
      v61 = v60;
      v91 = v62;
      avkit_isDescendantOfNonPagingScrollView = [viewCopy avkit_isDescendantOfNonPagingScrollView];
      v64 = v89 + v58;
      v65 = v87 + v61;
      if (avkit_isDescendantOfNonPagingScrollView)
      {
        v65 = v61;
        v64 = v58;
      }

      v88 = v65;
      v90 = v64;

      goto LABEL_32;
    }
  }

  if (userInterfaceIdiom == 5)
  {
    goto LABEL_24;
  }

  v43 = 0.0;
  if (height < 100.0 && height > 0.0)
  {
    v43 = v41 + height;
  }

  if (v87 >= v43)
  {
    v45 = v87;
  }

  else
  {
    v45 = v43;
  }

  [traitCollection displayCornerRadius];
  if (v46 <= 0.0)
  {
    v66 = v91 * 0.5 + v38;
    if (v66 < v91)
    {
      v66 = v91;
    }

    if (v42)
    {
      v66 = v91 * 0.5 + v13;
    }

    v90 = v66;
    v86 = v91;
    v88 = v91 + v45;
  }

  else
  {
    v47 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] _isClassic] && objc_msgSend(*v47, "_classicMode") != 5)
    {
      [viewCopy bounds];
      v75 = CGRectGetWidth(v100);
      [viewCopy bounds];
      v76 = CGRectGetHeight(v101);
      v77 = v91;
      if (v75 > v76)
      {
        v77 = v91 * 1.5;
      }

      v86 = v77;
      v88 = v77;
      v91 = v77;
      v90 = v77;
    }

    else
    {
      [viewCopy avkit_overrideLayoutMarginsForCounterRotation];
      v52.f64[0] = v48;
      v52.f64[1] = v49;
      v53.f64[0] = v50;
      v53.f64[1] = v51;
      v54 = vdupq_n_s64(0x10000000000000uLL);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v52, v54), vceqq_f64(v53, v54))))))
      {
        v90 = v48;
        v91 = v51;
        v86 = v49;
        v88 = v50;
      }

      else
      {
        if (([windowScene interfaceOrientation] - 3) > 1)
        {
          [(AVMobileGlassControlsStyleSheet *)self portraitFullscreenInsets];
        }

        else
        {
          [(AVMobileGlassControlsStyleSheet *)self landscapeFullscreenInsets];
        }

        v78 = v71;
        v86 = v72;
        v79 = v73;
        v91 = v74;
        [(AVMobileControlsStyleSheet *)self statusBarHeightThreshold];
        if (v13 >= v80)
        {
          v81 = v13;
        }

        else
        {
          v81 = v78;
        }

        if (v81 >= v13)
        {
          v82 = v81;
        }

        else
        {
          v82 = v13;
        }

        if (v79 >= v45)
        {
          v83 = v79;
        }

        else
        {
          v83 = v45;
        }

        v88 = v83;
        v90 = v82;
        if (fabs(v82) < 2.22044605e-16 && [v18 isStatusBarHidden])
        {
          [v18 defaultStatusBarHeight];
          v90 = v84;
        }
      }
    }
  }

LABEL_32:

  v68 = v88;
  v67 = v90;
  v69 = v86;
  v70 = v91;
  result.right = v70;
  result.bottom = v68;
  result.left = v69;
  result.top = v67;
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
  top = self->_portraitFullscreenInsets.top;
  left = self->_portraitFullscreenInsets.left;
  bottom = self->_portraitFullscreenInsets.bottom;
  right = self->_portraitFullscreenInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)landscapeFullscreenInsets
{
  top = self->_landscapeFullscreenInsets.top;
  left = self->_landscapeFullscreenInsets.left;
  bottom = self->_landscapeFullscreenInsets.bottom;
  right = self->_landscapeFullscreenInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIFont)inlineButtonFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  inlineButtonFont = self->_inlineButtonFont;

  return inlineButtonFont;
}

- (void)_loadFontsIfNeeded
{
  if (result)
  {
    v1 = result;
    if (!result[21])
    {
      v2 = MEMORY[0x1E69DB878];
      v3 = *MEMORY[0x1E69DDD10];
      v4 = *MEMORY[0x1E69DB970];
      traitCollection = [result traitCollection];
      v6 = [v2 avkit_monospacedDigitFontWithTextStyle:v3 fontWeight:traitCollection traitCollection:v4];
      v7 = v1[21];
      v1[21] = v6;

      v8 = *MEMORY[0x1E69DB958];
      v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
      v10 = v1[22];
      v1[22] = v9;

      v11 = *MEMORY[0x1E69DB980];
      v12 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
      v13 = v1[23];
      v1[23] = v12;

      v14 = *MEMORY[0x1E69DDD00];
      v15 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD00] weight:v11];
      v16 = v1[24];
      v1[24] = v15;

      v17 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v8];
      v18 = v1[26];
      v1[26] = v17;

      v19 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0 weight:v11];
      v20 = v1[25];
      v1[25] = v19;

      v21 = [MEMORY[0x1E69DB878] systemFontOfSize:39.0 weight:*MEMORY[0x1E69DB950]];
      v22 = v1[28];
      v1[28] = v21;

      v23 = *MEMORY[0x1E69DB978];
      v24 = [MEMORY[0x1E69DB878] systemFontOfSize:31.0 weight:*MEMORY[0x1E69DB978]];
      v25 = v1[27];
      v1[27] = v24;

      v26 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD78] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v27 = v1[29];
      v1[29] = v26;

      v28 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:v23];
      v29 = v1[30];
      v1[30] = v28;

      v30 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v14 weight:v23];
      v31 = v1[31];
      v1[31] = v30;

      return MEMORY[0x1EEE66BB8](v30, v31);
    }
  }

  return result;
}

- (UIFont)buttonFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  buttonFont = self->_buttonFont;

  return buttonFont;
}

- (UIFont)contentTabLabelFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  contentTabLabelFont = self->_contentTabLabelFont;

  return contentTabLabelFont;
}

- (UIFont)secondaryPlaybackControlsFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  secondaryPlaybackControlsFont = self->_secondaryPlaybackControlsFont;

  return secondaryPlaybackControlsFont;
}

- (UIFont)playPauseButtonFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  playPauseButtonFont = self->_playPauseButtonFont;

  return playPauseButtonFont;
}

- (UIFont)titleFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  titleFont = self->_titleFont;

  return titleFont;
}

- (UIFont)timeLabelFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  timeLabelFont = self->_timeLabelFont;

  return timeLabelFont;
}

- (UIFont)subtitleFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  subtitleFont = self->_subtitleFont;

  return subtitleFont;
}

- (UIFont)prominentContentTagFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  prominentContentTagFont = self->_prominentContentTagFont;

  return prominentContentTagFont;
}

- (UIFont)infoAffordanceButtonFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  infoAffordanceButtonFont = self->_infoAffordanceButtonFont;

  return infoAffordanceButtonFont;
}

- (UIFont)contentTagFont
{
  [(AVMobileGlassControlsStyleSheet *)self _loadFontsIfNeeded];
  contentTagFont = self->_contentTagFont;

  return contentTagFont;
}

- (AVMobileGlassControlsStyleSheet)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = AVMobileGlassControlsStyleSheet;
  v5 = [(AVMobileControlsStyleSheet *)&v14 initWithTraitCollection:collectionCopy];
  if (v5)
  {
    if ([collectionCopy userInterfaceIdiom])
    {
      _PadInit(v5);
    }

    else
    {
      v6 = v5;
      _CommonInit(v6);
      *&v6->_landscapeFullscreenInsets.top = xmmword_18B6EC4E0;
      *&v6->_landscapeFullscreenInsets.bottom = xmmword_18B6EC4E0;
      __asm { FMOV            V1.2D, #21.0 }

      *&v6->_portraitFullscreenInsets.top = xmmword_18B6EC4F0;
      *&v6->_portraitFullscreenInsets.bottom = _Q1;
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      *&v6->_additionalLandscapeTimelineInsets.top = *MEMORY[0x1E69DDCE0];
      *&v6->_additionalLandscapeTimelineInsets.bottom = v12;
    }
  }

  return v5;
}

@end