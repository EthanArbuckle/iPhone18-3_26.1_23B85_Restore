@interface AXSiriShortcut
- (UIImage)glyphImage;
@end

@implementation AXSiriShortcut

- (UIImage)glyphImage
{
  v9.width = 50.0;
  v9.height = 50.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  v3 = objc_opt_new();
  [v3 setDrawBackground:0];
  [v3 setDark:1];
  [v3 setHighContrast:1];
  v4 = [[WFColor alloc] initWithSystemColor:21];
  [v3 setGlyphColor:v4];

  [v3 setGlyphCharacter:{-[AXSiriShortcut glyphCharacter](self, "glyphCharacter")}];
  v5 = [WFBitmapContext currentContextWithScale:0.0];
  [v3 drawInContext:v5 inRect:{10.0, 10.0, 30.0, 30.0}];

  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

@end