@interface LPEmailCompatibleHTMLLinkComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLLinkComponent)initWithURL:(id)l generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLLinkComponent

- (LPEmailCompatibleHTMLLinkComponent)initWithURL:(id)l generator:(id)generator
{
  lCopy = l;
  generatorCopy = generator;
  v32.receiver = self;
  v32.super_class = LPEmailCompatibleHTMLLinkComponent;
  v8 = [(LPHTMLComponent *)&v32 initWithTagName:@"a" themePath:&stru_1F2447CF0 generator:generatorCopy];
  v10 = v8;
  if (v8)
  {
    LPWebLock(v8, v9);
    if ([generatorCopy applyCornerRadiusToLink])
    {
      v11 = @"10px";
    }

    else
    {
      v11 = @"0";
    }

    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    [localVariables setObject:v11 forKeyedSubscript:@"local-link-cornerRadius"];

    rootWidth = [generatorCopy rootWidth];
    _lp_CSSText = [rootWidth _lp_CSSText];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    [localVariables2 setObject:_lp_CSSText forKeyedSubscript:@"local-link-width"];

    generator = [(LPHTMLComponent *)v10 generator];
    cssResolver3 = [generator cssResolver];
    element = [(LPHTMLComponent *)v10 element];
    [cssResolver3 addStyle:@"lp-rich-link" toElement:element inComponent:v10];

    element2 = [(LPHTMLComponent *)v10 element];
    [element2 setAttribute:@"rel" value:@"nofollow"];

    element3 = [(LPHTMLComponent *)v10 element];
    absoluteString = [lCopy absoluteString];
    [element3 setAttribute:@"href" value:absoluteString];

    element4 = [(LPHTMLComponent *)v10 element];
    [element4 setAttribute:@"dir" value:@"ltr"];

    element5 = [(LPHTMLComponent *)v10 element];
    [element5 setAttribute:@"role" value:@"button"];

    element6 = [(LPHTMLComponent *)v10 element];
    [element6 setAttribute:@"draggable" value:@"false"];

    element7 = [(LPHTMLComponent *)v10 element];
    rootWidth2 = [generatorCopy rootWidth];
    _lp_HTMLAttributeText = [rootWidth2 _lp_HTMLAttributeText];
    [element7 setAttribute:@"width" value:_lp_HTMLAttributeText];

    v30 = v10;
  }

  return v10;
}

+ (id)baseRules
{
  v7[10] = *MEMORY[0x1E69E9840];
  v6[0] = @"font-family";
  v6[1] = @"text-decoration";
  v7[0] = @"-apple-system, Helvetica, Arial, sans-serif";
  v7[1] = @"none";
  v6[2] = @"border-radius";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-link-cornerRadius"];
  v7[2] = v2;
  v7[3] = @"hidden";
  v6[3] = @"overflow";
  v6[4] = @"width";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-link-width"];
  v7[4] = v3;
  v7[5] = @"block";
  v6[5] = @"display";
  v6[6] = @"-webkit-user-select";
  v7[6] = @"none";
  v7[7] = @"none";
  v6[7] = @"user-select";
  v6[8] = @"-webkit-user-modify";
  v6[9] = @"user-modify";
  v7[8] = @"read-only";
  v7[9] = @"read-only";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:10];

  return v4;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end