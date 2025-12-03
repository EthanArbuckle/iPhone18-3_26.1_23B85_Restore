@interface AVMobileChromelessControlsStyleSheet
- (AVMobileChromelessControlsStyleSheet)initWithTraitCollection:(id)collection;
- (UIEdgeInsets)embeddedInlineInsets;
- (UIEdgeInsets)landscapeFullscreenInsets;
- (UIEdgeInsets)portraitFullscreenInsets;
- (UIFont)buttonFont;
- (UIFont)contentTabLabelFont;
- (UIFont)contentTagFont;
- (UIFont)infoAffordanceButtonFont;
- (UIFont)playPauseButtonFont;
- (UIFont)prominentContentTagFont;
- (UIFont)secondaryPlaybackControlsFont;
- (UIFont)subtitleFont;
- (UIFont)timeLabelFont;
- (UIFont)titleFont;
- (void)_loadFontsIfNeeded;
@end

@implementation AVMobileChromelessControlsStyleSheet

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

- (UIFont)buttonFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  buttonFont = self->_buttonFont;

  return buttonFont;
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

      v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD00] weight:v11];
      v15 = v1[24];
      v1[24] = v14;

      v16 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v8];
      v17 = v1[26];
      v1[26] = v16;

      v18 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0 weight:v11];
      v19 = v1[25];
      v1[25] = v18;

      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:39.0 weight:*MEMORY[0x1E69DB950]];
      v21 = v1[28];
      v1[28] = v20;

      v22 = *MEMORY[0x1E69DB978];
      v23 = [MEMORY[0x1E69DB878] systemFontOfSize:31.0 weight:*MEMORY[0x1E69DB978]];
      v24 = v1[27];
      v1[27] = v23;

      v25 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD78] variant:1024 maximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v26 = v1[29];
      v1[29] = v25;

      v27 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:v22];
      v28 = v1[30];
      v1[30] = v27;

      return MEMORY[0x1EEE66BB8](v27, v28);
    }
  }

  return result;
}

- (UIFont)contentTabLabelFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  contentTabLabelFont = self->_contentTabLabelFont;

  return contentTabLabelFont;
}

- (UIFont)secondaryPlaybackControlsFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  secondaryPlaybackControlsFont = self->_secondaryPlaybackControlsFont;

  return secondaryPlaybackControlsFont;
}

- (UIFont)playPauseButtonFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  playPauseButtonFont = self->_playPauseButtonFont;

  return playPauseButtonFont;
}

- (UIFont)titleFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  titleFont = self->_titleFont;

  return titleFont;
}

- (UIFont)timeLabelFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  timeLabelFont = self->_timeLabelFont;

  return timeLabelFont;
}

- (UIFont)subtitleFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  subtitleFont = self->_subtitleFont;

  return subtitleFont;
}

- (UIFont)prominentContentTagFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  prominentContentTagFont = self->_prominentContentTagFont;

  return prominentContentTagFont;
}

- (UIFont)infoAffordanceButtonFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  infoAffordanceButtonFont = self->_infoAffordanceButtonFont;

  return infoAffordanceButtonFont;
}

- (UIFont)contentTagFont
{
  [(AVMobileChromelessControlsStyleSheet *)self _loadFontsIfNeeded];
  contentTagFont = self->_contentTagFont;

  return contentTagFont;
}

- (AVMobileChromelessControlsStyleSheet)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = AVMobileChromelessControlsStyleSheet;
  v5 = [(AVMobileControlsStyleSheet *)&v12 initWithTraitCollection:collectionCopy];
  if (v5)
  {
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    *(v5 + 19) = 0x4020000000000000;
    *(v5 + 20) = 0x4018000000000000;
    if (userInterfaceIdiom)
    {
      v7 = xmmword_18B6EC590;
      v8 = 0x4047000000000000;
      v9 = 0x4047400000000000;
      v10 = 0x4047800000000000;
    }

    else
    {
      v7 = xmmword_18B6EC580;
      v8 = 0x4045C00000000000;
      v9 = 0x4047000000000000;
      v10 = 0x4040000000000000;
    }

    *(v5 + 7) = v10;
    *(v5 + 8) = v9;
    *(v5 + 9) = 0x4042000000000000;
    *(v5 + 10) = v9;
    *(v5 + 11) = v8;
    *(v5 + 6) = v7;
    *(v5 + 14) = v7;
    *(v5 + 120) = xmmword_18B6EC500;
    *(v5 + 136) = xmmword_18B6EC510;
  }

  return v5;
}

@end