@interface LPEmailCompatibleHTMLCaptionBarRowComponent
- (LPEmailCompatibleHTMLCaptionBarRowComponent)initWithThemePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLCaptionBarRowComponent

- (LPEmailCompatibleHTMLCaptionBarRowComponent)initWithThemePath:(id)path generator:(id)generator
{
  v8.receiver = self;
  v8.super_class = LPEmailCompatibleHTMLCaptionBarRowComponent;
  v4 = [(LPHTMLComponent *)&v8 initWithTagName:@"tr" themePath:path generator:generator];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end