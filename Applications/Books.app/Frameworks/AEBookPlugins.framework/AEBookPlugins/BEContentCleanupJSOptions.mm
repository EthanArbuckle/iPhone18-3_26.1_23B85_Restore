@interface BEContentCleanupJSOptions
+ (id)cleanupJSOptionsForBookInfoSnapshot:(id)snapshot withConfiguration:(id)configuration;
@end

@implementation BEContentCleanupJSOptions

+ (id)cleanupJSOptionsForBookInfoSnapshot:(id)snapshot withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  snapshotCopy = snapshot;
  if ([snapshotCopy isFixedLayout])
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  style = [configurationCopy style];
  justification = [style justification];

  v10 = justification;
  v11 = [BEContentCleanupJSOptions alloc];
  style2 = [configurationCopy style];

  fontFamily = [style2 fontFamily];
  bookLanguage = [snapshotCopy bookLanguage];
  respectImageSizeClass = [snapshotCopy respectImageSizeClass];
  respectImageSizeClassIsPrefix = [snapshotCopy respectImageSizeClassIsPrefix];
  hasBuiltInFonts = [snapshotCopy hasBuiltInFonts];

  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  LOBYTE(v20) = hasBuiltInFonts;
  v18 = [v11 initWithMode:v7 useNewTextStyling:0 fontFamily:fontFamily language:bookLanguage respectImageSizeClass:respectImageSizeClass respectImageSizeClassIsPrefix:respectImageSizeClassIsPrefix hasBuiltInFonts:v20 justification:v10 fontWeight:0 overrideLineHeight:v21 overrideLetterSpacing:0 overrideWordSpacing:? readingMode:?];

  return v18;
}

@end