@interface LPEmailCompatibleHTMLTableComponent
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLTableComponent)initWithThemePath:(id)path generator:(id)generator;
- (void)addChildAsRow:(id)row;
@end

@implementation LPEmailCompatibleHTMLTableComponent

- (LPEmailCompatibleHTMLTableComponent)initWithThemePath:(id)path generator:(id)generator
{
  pathCopy = path;
  generatorCopy = generator;
  v30.receiver = self;
  v30.super_class = LPEmailCompatibleHTMLTableComponent;
  v8 = [(LPHTMLComponent *)&v30 initWithTagName:@"table" themePath:pathCopy generator:generatorCopy];
  v10 = v8;
  if (v8)
  {
    LPWebLock(v8, v9);
    rootWidth = [generatorCopy rootWidth];
    _lp_CSSText = [rootWidth _lp_CSSText];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    [localVariables setObject:_lp_CSSText forKeyedSubscript:@"local-table-width"];

    backgroundColor = [generatorCopy backgroundColor];
    _lp_CSSText2 = [backgroundColor _lp_CSSText];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    [localVariables2 setObject:_lp_CSSText2 forKeyedSubscript:@"local-table-backgroundColor"];

    cssResolver3 = [generatorCopy cssResolver];
    v20 = [@"lp-rich-link-" stringByAppendingString:pathCopy];
    element = [(LPHTMLComponent *)v10 element];
    [cssResolver3 addStyle:v20 toElement:element inComponent:v10];

    element2 = [(LPHTMLComponent *)v10 element];
    [element2 setAttribute:@"cellpadding" value:@"0"];

    element3 = [(LPHTMLComponent *)v10 element];
    [element3 setAttribute:@"cellspacing" value:@"0"];

    element4 = [(LPHTMLComponent *)v10 element];
    [element4 setAttribute:@"border" value:@"0"];

    element5 = [(LPHTMLComponent *)v10 element];
    rootWidth2 = [generatorCopy rootWidth];
    _lp_HTMLAttributeText = [rootWidth2 _lp_HTMLAttributeText];
    [element5 setAttribute:@"width" value:_lp_HTMLAttributeText];

    v28 = v10;
  }

  return v10;
}

- (void)addChildAsRow:(id)row
{
  rowCopy = row;
  v4 = [LPHTMLComponent alloc];
  generator = [(LPHTMLComponent *)self generator];
  v6 = [(LPHTMLComponent *)v4 initWithTagName:@"tr" themePath:&stru_1F2447CF0 generator:generator];

  v7 = [LPHTMLComponent alloc];
  generator2 = [(LPHTMLComponent *)self generator];
  v9 = [(LPHTMLComponent *)v7 initWithTagName:@"td" themePath:&stru_1F2447CF0 generator:generator2];

  element = [(LPHTMLComponent *)v9 element];
  [element setAttribute:@"vertical-align" value:@"center"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    element2 = [(LPHTMLComponent *)v9 element];
    [element2 setAttribute:@"align" value:@"center"];
  }

  [(LPHTMLComponent *)v9 addChild:rowCopy];
  [(LPHTMLComponent *)v6 addChild:v9];
  [(LPHTMLComponent *)self addChild:v6];
}

+ (id)ruleDictionaryForStyle:(id)style
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"width";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-table-width"];
  v8[0] = v3;
  v8[1] = @"fixed";
  v7[1] = @"table-layout";
  v7[2] = @"border-collapse";
  v8[2] = @"collapse";
  v7[3] = @"background-color";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-table-backgroundColor"];
  v7[4] = @"font-family";
  v8[3] = v4;
  v8[4] = @"-apple-system, Helvetica, Arial, sans-serif";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

@end