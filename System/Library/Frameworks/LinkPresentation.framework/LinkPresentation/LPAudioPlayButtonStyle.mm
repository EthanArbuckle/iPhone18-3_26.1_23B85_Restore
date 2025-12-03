@interface LPAudioPlayButtonStyle
- (LPAudioPlayButtonStyle)initWithPlatform:(int64_t)platform;
@end

@implementation LPAudioPlayButtonStyle

- (LPAudioPlayButtonStyle)initWithPlatform:(int64_t)platform
{
  v42.receiver = self;
  v42.super_class = LPAudioPlayButtonStyle;
  v5 = [(LPAudioPlayButtonStyle *)&v42 init];
  if (v5)
  {
    v6 = [LPSize alloc];
    if (platform <= 6)
    {
      v3 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C67E8[platform]];
    }

    v7 = [(LPSize *)v6 initWithSquarePoints:v3];
    size = v5->_size;
    v5->_size = v7;

    if (platform <= 6)
    {
      v9 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6820[platform]];
    }

    glyphSize = v5->_glyphSize;
    v5->_glyphSize = v9;

    v11 = [MEMORY[0x1E69DC888] colorWithRed:0.725490196 green:0.725490196 blue:0.741176471 alpha:1.0];
    v12 = [LPAudioPlayButtonTheme alloc];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v15 = [(LPAudioPlayButtonTheme *)v12 initWithKeyColor:systemBlueColor secondaryColor:whiteColor outerBorderColor:v11 useInvertedInactiveState:0];
    defaultTheme = v5->_defaultTheme;
    v5->_defaultTheme = v15;

    v17 = [LPAudioPlayButtonTheme alloc];
    v18 = +[LPResources appleMusicKeyColor];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v20 = [(LPAudioPlayButtonTheme *)v17 initWithKeyColor:v18 secondaryColor:whiteColor2 outerBorderColor:v11 useInvertedInactiveState:0];
    appleMusicTheme = v5->_appleMusicTheme;
    v5->_appleMusicTheme = v20;

    v22 = [LPAudioPlayButtonTheme alloc];
    v23 = [MEMORY[0x1E69DC888] colorWithRed:0.447 green:0.141 blue:0.847 alpha:1.0];
    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    v25 = [(LPAudioPlayButtonTheme *)v22 initWithKeyColor:v23 secondaryColor:whiteColor3 outerBorderColor:v11 useInvertedInactiveState:0];
    podcastsTheme = v5->_podcastsTheme;
    v5->_podcastsTheme = v25;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v28 = [LPAudioPlayButtonTheme alloc];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v30 = [(LPAudioPlayButtonTheme *)v28 initWithKeyColor:labelColor secondaryColor:systemBackgroundColor outerBorderColor:v11 useInvertedInactiveState:0];
    audioBookTheme = v5->_audioBookTheme;
    v5->_audioBookTheme = v30;

    v32 = [LPAudioPlayButtonTheme alloc];
    whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
    whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];
    v35 = [whiteColor5 colorWithAlphaComponent:0.1];
    whiteColor6 = [MEMORY[0x1E69DC888] whiteColor];
    v37 = [whiteColor6 colorWithAlphaComponent:0.1];
    v38 = [(LPAudioPlayButtonTheme *)v32 initWithKeyColor:whiteColor4 secondaryColor:v35 outerBorderColor:v37 useInvertedInactiveState:1];
    lyricExcerptTheme = v5->_lyricExcerptTheme;
    v5->_lyricExcerptTheme = v38;

    v40 = v5;
  }

  return v5;
}

@end