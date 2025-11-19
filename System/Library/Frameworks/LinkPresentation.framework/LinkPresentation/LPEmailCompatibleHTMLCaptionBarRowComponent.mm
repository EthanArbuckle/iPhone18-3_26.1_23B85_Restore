@interface LPEmailCompatibleHTMLCaptionBarRowComponent
- (LPEmailCompatibleHTMLCaptionBarRowComponent)initWithThemePath:(id)a3 generator:(id)a4;
@end

@implementation LPEmailCompatibleHTMLCaptionBarRowComponent

- (LPEmailCompatibleHTMLCaptionBarRowComponent)initWithThemePath:(id)a3 generator:(id)a4
{
  v8.receiver = self;
  v8.super_class = LPEmailCompatibleHTMLCaptionBarRowComponent;
  v4 = [(LPHTMLComponent *)&v8 initWithTagName:@"tr" themePath:a3 generator:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

@end