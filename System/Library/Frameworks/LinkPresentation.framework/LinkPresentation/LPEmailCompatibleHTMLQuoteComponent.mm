@interface LPEmailCompatibleHTMLQuoteComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)text style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLQuoteComponent

- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)text style:(id)style themePath:(id)path generator:(id)generator
{
  textCopy = text;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v59.receiver = self;
  v59.super_class = LPEmailCompatibleHTMLQuoteComponent;
  v13 = [(LPHTMLComponent *)&v59 initWithTagName:@"div" themePath:pathCopy generator:generatorCopy];
  v15 = v13;
  if (v13)
  {
    LPWebLock(v13, v14);
    v16 = MEMORY[0x1E696AEC0];
    font = [styleCopy font];
    [font pointSize];
    v19 = [v16 stringWithFormat:@"%gpt", v18];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-font-size", pathCopy];
    [localVariables setObject:v19 forKeyedSubscript:pathCopy];

    v23 = CSSAlignmentFromLPTextAlignment([styleCopy textAlignment]);
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-text-alignment", pathCopy];
    [localVariables2 setObject:v23 forKeyedSubscript:pathCopy2];

    color = [styleCopy color];
    _lp_CSSText = [color _lp_CSSText];
    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    pathCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-color", pathCopy];
    [localVariables3 setObject:_lp_CSSText forKeyedSubscript:pathCopy3];

    rootWidth = [generatorCopy rootWidth];
    [rootWidth value];
    v34 = v33;
    padding = [styleCopy padding];
    leading = [padding leading];
    [leading value];
    v38 = v37;
    padding2 = [styleCopy padding];
    trailing = [padding2 trailing];
    [trailing value];
    v42 = v34 - v38 - v41;

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%gpx", *&v42];
    cssResolver4 = [generatorCopy cssResolver];
    localVariables4 = [cssResolver4 localVariables];
    pathCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-width", pathCopy];
    [localVariables4 setObject:v43 forKeyedSubscript:pathCopy4];

    cssResolver5 = [generatorCopy cssResolver];
    v48 = [@"lp-rich-link-" stringByAppendingString:pathCopy];
    element = [(LPHTMLComponent *)v15 element];
    [cssResolver5 addStyle:v48 toElement:element inComponent:v15];

    element2 = [(LPHTMLComponent *)v15 element];
    generator = [(LPHTMLComponent *)v15 generator];
    parentDocument = [generator parentDocument];
    v53 = truncatedStringAtMaximumMetadataLength(textCopy);
    v54 = [parentDocument createTextNode:v53];
    v55 = [element2 appendChild:v54];

    v56 = v15;
  }

  return v15;
}

+ (id)baseRules
{
  v10[8] = *MEMORY[0x1E69E9840];
  v10[0] = @"hidden";
  v9[0] = @"overflow";
  v9[1] = @"color";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-color"];
  v10[1] = v2;
  v9[2] = @"font-size";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-font-size"];
  v10[2] = v3;
  v10[3] = @"300";
  v9[3] = @"font-weight";
  v9[4] = @"margin";
  v4 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-padding"];
  v10[4] = v4;
  v9[5] = @"width";
  v5 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-width"];
  v10[5] = v5;
  v10[6] = @"break-word";
  v9[6] = @"word-wrap";
  v9[7] = @"text-align";
  v6 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-text-alignment"];
  v10[7] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];

  return v7;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end