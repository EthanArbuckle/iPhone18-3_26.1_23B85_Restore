@interface LPResources
+ (id)appleMusicKeyColor;
+ (id)chevron;
+ (id)faceTimeBackgroundColor;
+ (id)faceTimeIcon;
+ (id)freeformIcon;
+ (id)iCloudDriveIcon;
+ (id)keynoteIcon;
+ (id)linkBackgroundColor;
+ (id)linkMediaBackgroundColor;
+ (id)mapCoordinatesIcon;
+ (id)metadataExtractorJS;
+ (id)muteButton;
+ (id)notesIcon;
+ (id)numbersIcon;
+ (id)pagesIcon;
+ (id)passwordsInviteIcon;
+ (id)pauseButton;
+ (id)playButton;
+ (id)remindersIcon;
+ (id)safariAppIcon;
+ (id)safariAppIconBadge;
+ (id)safariIcon;
+ (id)searchGlyph;
+ (id)tapToLoadHighlightColor;
+ (id)tweetBackgroundColor;
+ (id)unmuteButton;
+ (id)weiboBackgroundColor;
+ (void)clearCachedResources;
@end

@implementation LPResources

+ (void)clearCachedResources
{
  v2 = freeformIcon;
  freeformIcon = 0;

  v3 = faceTimeIcon;
  faceTimeIcon = 0;

  v4 = pagesIcon;
  pagesIcon = 0;

  v5 = notesIcon;
  notesIcon = 0;

  v6 = numbersIcon;
  numbersIcon = 0;

  v7 = keynoteIcon;
  keynoteIcon = 0;

  v8 = iCloudDriveIcon;
  iCloudDriveIcon = 0;

  v9 = remindersIcon;
  remindersIcon = 0;

  v10 = safariAppIconBadge;
  safariAppIconBadge = 0;

  v11 = safariAppIcon;
  safariAppIcon = 0;
}

+ (id)metadataExtractorJS
{
  if (metadataExtractorJS_onceToken != -1)
  {
    +[LPResources metadataExtractorJS];
  }

  v3 = metadataExtractorJS_metadataExtractorJS;

  return v3;
}

void __34__LPResources_metadataExtractorJS__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v1 = objc_alloc(MEMORY[0x1E69DB798]);
  v6 = linkPresentationBundle();
  v2 = [v1 initWithName:@"MetadataExtractor" bundle:?];
  v3 = [v2 data];
  v4 = [v0 initWithData:v3 encoding:4];
  v5 = metadataExtractorJS_metadataExtractorJS;
  metadataExtractorJS_metadataExtractorJS = v4;
}

+ (id)chevron
{
  v2 = [LPImage _systemImageNamed:@"chevron.forward"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_5];

  return v2;
}

+ (id)safariIcon
{
  v2 = [LPImage _systemImageNamed:@"safari"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_14];

  return v2;
}

id __25__LPResources_safariIcon__block_invoke()
{
  v0 = [LPImage _PNGImageNamed:@"Safari"];
  v1 = [v0 _asTemplate];

  [v1 set_fallbackIcon:1];

  return v1;
}

+ (id)searchGlyph
{
  v2 = [LPImage _systemImageNamed:@"magnifyingglass"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_22_0];

  return v2;
}

+ (id)playButton
{
  v2 = [LPImage _systemImageNamed:@"play.fill"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_30];

  return v2;
}

+ (id)pauseButton
{
  v2 = [LPImage _systemImageNamed:@"pause.fill"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_38];

  return v2;
}

+ (id)muteButton
{
  v2 = [LPImage _systemImageNamed:@"speaker.slash.fill"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_46];

  return v2;
}

+ (id)unmuteButton
{
  v2 = [LPImage _systemImageNamed:@"speaker.wave.2.fill"];
  [v2 set_alternateHTMLImageGenerator:&__block_literal_global_54];

  return v2;
}

+ (id)faceTimeIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = faceTimeIcon;
  if (!faceTimeIcon)
  {
    v3 = [LPImage _systemImageNamed:@"video.fill"];
    v4 = faceTimeIcon;
    faceTimeIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/FaceTime_icon_white_1x.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/FaceTime_icon_white_2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/FaceTime_icon_white_3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [faceTimeIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = faceTimeIcon;
  }

  return v2;
}

+ (id)passwordsInviteIcon
{
  v2 = [MEMORY[0x1E69DC888] tintColor];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB978] weight:60.0];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v2];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  v6 = [LPImage _systemImageNamed:@"person.2.badge.key.fill" withSymbolConfiguration:v5];
  [v6 set_isNonFallbackSymbolImage:1];

  return v6;
}

+ (id)mapCoordinatesIcon
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v9[0] = v3;
  v4 = [MEMORY[0x1E69DC888] systemRedColor];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 configurationWithPaletteColors:v5];

  v7 = [LPImage _systemImageNamed:@"mappin.circle.fill" withSymbolConfiguration:v6];
  [v7 set_isNonFallbackSymbolImage:1];

  return v7;
}

+ (id)pagesIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = pagesIcon;
  if (!pagesIcon)
  {
    v3 = iconForKnownApplication(10, @"Pages");
    v4 = pagesIcon;
    pagesIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/pages.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/pages@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/pages@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [pagesIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = pagesIcon;
  }

  return v2;
}

+ (id)notesIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = notesIcon;
  if (!notesIcon)
  {
    v3 = iconForKnownApplication(5, @"Notes");
    v4 = notesIcon;
    notesIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/notes.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/notes@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/notes@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [notesIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = notesIcon;
  }

  return v2;
}

+ (id)numbersIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = numbersIcon;
  if (!numbersIcon)
  {
    v3 = iconForKnownApplication(11, @"Numbers");
    v4 = numbersIcon;
    numbersIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/numbers.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/numbers@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/numbers@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [numbersIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = numbersIcon;
  }

  return v2;
}

+ (id)keynoteIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = keynoteIcon;
  if (!keynoteIcon)
  {
    v3 = iconForKnownApplication(12, @"Keynote");
    v4 = keynoteIcon;
    keynoteIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/keynote.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/keynote@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/keynote@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [keynoteIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = keynoteIcon;
  }

  return v2;
}

+ (id)iCloudDriveIcon
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = iCloudDriveIcon;
  if (!iCloudDriveIcon)
  {
    v3 = imagePropertiesForPrecomposedApplicationIcon();
    v4 = [LPImage _PNGImageNamed:@"iCloudDrive" template:0 properties:v3];
    v5 = iCloudDriveIcon;
    iCloudDriveIcon = v4;

    v6 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/icloud.png");
    v11 = v6;
    v7 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/icloud@2x.png");
    v12 = v7;
    v8 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/icloud@3x.png");
    v13 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:3];
    [iCloudDriveIcon set_remoteURLsForEmailCompatibleOutput:{v9, v11, v12}];

    v2 = iCloudDriveIcon;
  }

  return v2;
}

+ (id)remindersIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = remindersIcon;
  if (!remindersIcon)
  {
    v3 = iconForKnownApplication(4, @"Reminders");
    v4 = remindersIcon;
    remindersIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/reminders.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/reminders@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/reminders@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [remindersIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = remindersIcon;
  }

  return v2;
}

+ (id)freeformIcon
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = freeformIcon;
  if (!freeformIcon)
  {
    v3 = iconForKnownApplication(7, @"Freeform");
    v4 = freeformIcon;
    freeformIcon = v3;

    v5 = remoteURL(1, @"https://www.icloud.com/mail_resources/app_icons/freeform.png");
    v10 = v5;
    v6 = remoteURL(2, @"https://www.icloud.com/mail_resources/app_icons/freeform@2x.png");
    v11 = v6;
    v7 = remoteURL(3, @"https://www.icloud.com/mail_resources/app_icons/freeform@3x.png");
    v12 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
    [freeformIcon set_remoteURLsForEmailCompatibleOutput:{v8, v10, v11}];

    v2 = freeformIcon;
  }

  return v2;
}

+ (id)safariAppIcon
{
  v2 = safariAppIcon;
  if (!safariAppIcon)
  {
    v3 = iconForKnownApplication(9, 0);
    v4 = safariAppIcon;
    safariAppIcon = v3;

    v2 = safariAppIcon;
  }

  return v2;
}

+ (id)safariAppIconBadge
{
  v2 = safariAppIconBadge;
  if (!safariAppIconBadge)
  {
    +[LPTheme badgeIconSizeInPoints];
    v4 = iconForKnownApplicationWithSize(9, 0, v3);
    v5 = safariAppIconBadge;
    safariAppIconBadge = v4;

    v2 = safariAppIconBadge;
  }

  return v2;
}

+ (id)linkBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.898 green:0.901 blue:0.914 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.361 green:0.333 blue:0.325 alpha:1.0];
  v4 = linkBackgroundColor_color;
  if (!linkBackgroundColor_color)
  {
    v5 = dynamicColorWithVariants(@"LPLinkBackgroundColor", v2, 0, v3, 0);
    v6 = linkBackgroundColor_color;
    linkBackgroundColor_color = v5;

    v4 = linkBackgroundColor_color;
  }

  v7 = v4;

  return v4;
}

+ (id)linkMediaBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.965 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.255 green:0.235 blue:0.227 alpha:1.0];
  v4 = linkMediaBackgroundColor_color;
  if (!linkMediaBackgroundColor_color)
  {
    v5 = dynamicColorWithVariants(@"LPLinkMediaBackgroundColor", v2, 0, v3, 0);
    v6 = linkMediaBackgroundColor_color;
    linkMediaBackgroundColor_color = v5;

    v4 = linkMediaBackgroundColor_color;
  }

  v7 = v4;

  return v4;
}

+ (id)tapToLoadHighlightColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  v4 = tapToLoadHighlightColor_color;
  if (!tapToLoadHighlightColor_color)
  {
    v5 = dynamicColorWithVariants(@"LPTapToLoadHighlightColor", v2, 0, v3, 0);
    v6 = tapToLoadHighlightColor_color;
    tapToLoadHighlightColor_color = v5;

    v4 = tapToLoadHighlightColor_color;
  }

  v7 = v4;

  return v4;
}

+ (id)tweetBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.92 green:0.97 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.878 green:0.929 blue:0.961 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.012 green:0.153 blue:0.247 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.051 green:0.192 blue:0.282 alpha:1.0];
  v6 = tweetBackgroundColor_color;
  if (!tweetBackgroundColor_color)
  {
    v7 = dynamicColorWithVariants(@"LPTweetBackgroundColor", v2, v3, v4, v5);
    v8 = tweetBackgroundColor_color;
    tweetBackgroundColor_color = v7;

    v6 = tweetBackgroundColor_color;
  }

  v9 = v6;

  return v6;
}

+ (id)weiboBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.929 blue:0.878 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.961 green:0.89 blue:0.839 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.259 green:0.196 blue:0.196 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.298 green:0.231 blue:0.231 alpha:1.0];
  v6 = weiboBackgroundColor_color;
  if (!weiboBackgroundColor_color)
  {
    v7 = dynamicColorWithVariants(@"LPWeiboBackgroundColor", v2, v3, v4, v5);
    v8 = weiboBackgroundColor_color;
    weiboBackgroundColor_color = v7;

    v6 = weiboBackgroundColor_color;
  }

  v9 = v6;

  return v6;
}

+ (id)appleMusicKeyColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.98 green:0.137 blue:0.231 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.839 green:0.0 blue:0.09 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.98 green:0.176 blue:0.282 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.98 green:0.345 blue:0.416 alpha:1.0];
  v6 = appleMusicKeyColor_color;
  if (!appleMusicKeyColor_color)
  {
    v7 = dynamicColorWithVariants(@"LPAppleMusicKeyColor", v2, v3, v4, v5);
    v8 = appleMusicKeyColor_color;
    appleMusicKeyColor_color = v7;

    v6 = appleMusicKeyColor_color;
  }

  v9 = v6;

  return v6;
}

+ (id)faceTimeBackgroundColor
{
  v2 = [objc_opt_self() systemGreenColor];

  return v2;
}

@end