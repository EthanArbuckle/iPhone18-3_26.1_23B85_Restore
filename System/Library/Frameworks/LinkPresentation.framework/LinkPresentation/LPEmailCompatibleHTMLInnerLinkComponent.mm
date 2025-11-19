@interface LPEmailCompatibleHTMLInnerLinkComponent
- (LPEmailCompatibleHTMLInnerLinkComponent)initWithThemePath:(id)a3 generator:(id)a4;
@end

@implementation LPEmailCompatibleHTMLInnerLinkComponent

- (LPEmailCompatibleHTMLInnerLinkComponent)initWithThemePath:(id)a3 generator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = LPEmailCompatibleHTMLInnerLinkComponent;
  v8 = [(LPHTMLComponent *)&v18 initWithTagName:@"a" themePath:v6 generator:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(LPHTMLComponent *)v8 element];
    [v10 setAttribute:@"rel" value:@"nofollow"];

    v11 = [(LPHTMLComponent *)v9 element];
    v12 = [(LPHTMLComponent *)v9 generator];
    v13 = [v12 URL];
    v14 = [v13 absoluteString];
    [v11 setAttribute:@"href" value:v14];

    v15 = [(LPHTMLComponent *)v9 element];
    [v15 setAttribute:@"draggable" value:@"false"];

    v16 = v9;
  }

  return v9;
}

@end