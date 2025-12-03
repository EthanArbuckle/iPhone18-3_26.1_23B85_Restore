@interface LPEmailCompatibleHTMLInnerLinkComponent
- (LPEmailCompatibleHTMLInnerLinkComponent)initWithThemePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLInnerLinkComponent

- (LPEmailCompatibleHTMLInnerLinkComponent)initWithThemePath:(id)path generator:(id)generator
{
  pathCopy = path;
  generatorCopy = generator;
  v18.receiver = self;
  v18.super_class = LPEmailCompatibleHTMLInnerLinkComponent;
  v8 = [(LPHTMLComponent *)&v18 initWithTagName:@"a" themePath:pathCopy generator:generatorCopy];
  v9 = v8;
  if (v8)
  {
    element = [(LPHTMLComponent *)v8 element];
    [element setAttribute:@"rel" value:@"nofollow"];

    element2 = [(LPHTMLComponent *)v9 element];
    generator = [(LPHTMLComponent *)v9 generator];
    v13 = [generator URL];
    absoluteString = [v13 absoluteString];
    [element2 setAttribute:@"href" value:absoluteString];

    element3 = [(LPHTMLComponent *)v9 element];
    [element3 setAttribute:@"draggable" value:@"false"];

    v16 = v9;
  }

  return v9;
}

@end