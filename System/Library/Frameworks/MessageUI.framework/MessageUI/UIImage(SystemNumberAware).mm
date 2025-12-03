@interface UIImage(SystemNumberAware)
+ (id)mf_systemImageNamedNumberAware:()SystemNumberAware textStyle:scale:weight:maximumContentSizeCategory:;
@end

@implementation UIImage(SystemNumberAware)

+ (id)mf_systemImageNamedNumberAware:()SystemNumberAware textStyle:scale:weight:maximumContentSizeCategory:
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = v11;
  if (MapImageNameNumberAware_onceToken != -1)
  {
    +[UIImage(SystemNumberAware) mf_systemImageNamedNumberAware:textStyle:scale:weight:maximumContentSizeCategory:];
  }

  if (([MapImageNameNumberAware_sDigitAwareSet containsObject:v14] & 1) == 0)
  {

    v19 = 0;
LABEL_14:
    v23 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:v14 textStyle:v12 scale:a5 weight:a6 maximumContentSizeCategory:v13];
    goto LABEL_15;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];

  if (([languageCode isEqualToString:@"ar"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"hi"))
  {
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    numberingSystem = [currentLocale2 numberingSystem];

    if ([numberingSystem isEqualToString:@"latn"])
    {
      v19 = [v14 stringByAppendingFormat:@".rtl.westernarabic"];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [MEMORY[0x1E69DCAB8] mf_symbolConfigurationForImageSymbolType:2 textStyle:v12 scale:a5 weight:a6 traits:0 maximumContentSizeCategory:v13];
  v21 = MEMORY[0x1E69DCAB8];
  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
  v23 = [v21 imageNamed:v19 inBundle:v22 withConfiguration:v20];

  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v23;
}

@end