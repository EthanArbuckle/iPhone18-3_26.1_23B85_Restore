@interface BEContentCleanupJSOptions
+ (id)cleanupJSOptionsForBookInfoSnapshot:(id)a3 withConfiguration:(id)a4;
@end

@implementation BEContentCleanupJSOptions

+ (id)cleanupJSOptionsForBookInfoSnapshot:(id)a3 withConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v6 isFixedLayout])
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = [v5 style];
  v9 = [v8 justification];

  v10 = v9;
  v11 = [BEContentCleanupJSOptions alloc];
  v12 = [v5 style];

  v13 = [v12 fontFamily];
  v14 = [v6 bookLanguage];
  v15 = [v6 respectImageSizeClass];
  v16 = [v6 respectImageSizeClassIsPrefix];
  v17 = [v6 hasBuiltInFonts];

  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  LOBYTE(v20) = v17;
  v18 = [v11 initWithMode:v7 useNewTextStyling:0 fontFamily:v13 language:v14 respectImageSizeClass:v15 respectImageSizeClassIsPrefix:v16 hasBuiltInFonts:v20 justification:v10 fontWeight:0 overrideLineHeight:v21 overrideLetterSpacing:0 overrideWordSpacing:? readingMode:?];

  return v18;
}

@end