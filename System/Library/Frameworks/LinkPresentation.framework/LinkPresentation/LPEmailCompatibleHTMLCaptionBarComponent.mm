@interface LPEmailCompatibleHTMLCaptionBarComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLCaptionBarComponent)initWithStyle:(id)style presentationProperties:(id)properties themePath:(id)path generator:(id)generator;
- (void)buildComponents;
@end

@implementation LPEmailCompatibleHTMLCaptionBarComponent

- (LPEmailCompatibleHTMLCaptionBarComponent)initWithStyle:(id)style presentationProperties:(id)properties themePath:(id)path generator:(id)generator
{
  styleCopy = style;
  propertiesCopy = properties;
  pathCopy = path;
  generatorCopy = generator;
  v40.receiver = self;
  v40.super_class = LPEmailCompatibleHTMLCaptionBarComponent;
  v14 = [(LPHTMLComponent *)&v40 initWithTagName:@"table" themePath:pathCopy generator:generatorCopy];
  v15 = v14;
  if (v14)
  {
    LPWebLock();
    objc_storeStrong(&v14->_style, style);
    objc_storeStrong(&v14->_presentationProperties, properties);
    element = [(LPHTMLComponent *)v14 element];
    backgroundColor = [generatorCopy backgroundColor];
    _lp_CSSText = [backgroundColor _lp_CSSText];
    [element setAttribute:@"bgcolor" value:_lp_CSSText];

    backgroundColor2 = [generatorCopy backgroundColor];
    v20 = [backgroundColor2 _lp_CSSTextForcingUserInterfaceStyle:0];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    styleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-backgroundColor", pathCopy, styleCopy];
    [localVariables setObject:v20 forKeyedSubscript:styleCopy];

    dominantImageBackgroundColor = [generatorCopy dominantImageBackgroundColor];

    if (dominantImageBackgroundColor)
    {
      cssResolver2 = [generatorCopy cssResolver];
      localVariables2 = [cssResolver2 localVariables];
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-colorFilter", pathCopy];
      [localVariables2 setObject:@"initial" forKeyedSubscript:pathCopy];
    }

    element2 = [(LPHTMLComponent *)v15 element];
    [element2 setAttribute:@"cellpadding" value:@"0"];

    element3 = [(LPHTMLComponent *)v15 element];
    [element3 setAttribute:@"cellspacing" value:@"0"];

    element4 = [(LPHTMLComponent *)v15 element];
    rootWidth = [generatorCopy rootWidth];
    _lp_HTMLAttributeText = [rootWidth _lp_HTMLAttributeText];
    [element4 setAttribute:@"width" value:_lp_HTMLAttributeText];

    cssResolver3 = [generatorCopy cssResolver];
    themePath = [(LPHTMLComponent *)v15 themePath];
    v35 = [@"lp-rich-link-" stringByAppendingString:themePath];
    element5 = [(LPHTMLComponent *)v15 element];
    [cssResolver3 addStyle:v35 toElement:element5 inComponent:v15];

    [(LPEmailCompatibleHTMLCaptionBarComponent *)v15 buildComponents];
    v37 = v15;
  }

  return v15;
}

- (void)buildComponents
{
  LPWebLock(self, a2);
  v3 = [LPEmailCompatibleHTMLCaptionBarRowComponent alloc];
  themePath = [(LPHTMLComponent *)self themePath];
  generator = [(LPHTMLComponent *)self generator];
  v83 = [(LPEmailCompatibleHTMLCaptionBarRowComponent *)v3 initWithThemePath:themePath generator:generator];

  [(LPHTMLComponent *)self addChild:v83];
  leftIcon = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIcon];

  v7 = 0x1EB5E3000;
  if (leftIcon)
  {
    v8 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
    leftIcon2 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v10 = [(LPHTMLComponent *)self childThemePathWithName:@"leftIcon"];
    generator2 = [(LPHTMLComponent *)self generator];
    v12 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v8 initWithStyle:leftIcon2 themePath:v10 generator:generator2];

    element = [(LPHTMLComponent *)v12 element];
    leftIcon3 = [(LPCaptionBarStyle *)self->_style leftIcon];
    fixedSize = [leftIcon3 fixedSize];
    width = [fixedSize width];
    _lp_HTMLAttributeText = [width _lp_HTMLAttributeText];
    [element setAttribute:@"width" value:_lp_HTMLAttributeText];

    [(LPHTMLComponent *)v83 addChild:v12];
    v18 = [LPEmailCompatibleHTMLIconComponent alloc];
    leftIcon4 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIcon];
    leftIcon5 = [(LPCaptionBarStyle *)self->_style leftIcon];
    leftIconProperties = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIconProperties];
    v22 = [(LPHTMLComponent *)self childThemePathWithName:@"leftIcon"];
    generator3 = [(LPHTMLComponent *)self generator];
    v24 = [(LPEmailCompatibleHTMLIconComponent *)v18 initWithImage:leftIcon4 style:leftIcon5 properties:leftIconProperties themePath:v22 generator:generator3];

    element2 = [(LPHTMLComponent *)v24 element];
    leftIcon6 = [(LPCaptionBarStyle *)self->_style leftIcon];
    fixedSize2 = [leftIcon6 fixedSize];
    width2 = [fixedSize2 width];
    _lp_HTMLAttributeText2 = [width2 _lp_HTMLAttributeText];
    [element2 setAttribute:@"width" value:_lp_HTMLAttributeText2];

    element3 = [(LPHTMLComponent *)v24 element];
    leftIcon7 = [(LPCaptionBarStyle *)self->_style leftIcon];
    fixedSize3 = [leftIcon7 fixedSize];
    height = [fixedSize3 height];
    _lp_HTMLAttributeText3 = [height _lp_HTMLAttributeText];
    [element3 setAttribute:@"height" value:_lp_HTMLAttributeText3];

    v35 = [LPEmailCompatibleHTMLInnerLinkComponent alloc];
    themePath2 = [(LPHTMLComponent *)self themePath];
    generator4 = [(LPHTMLComponent *)self generator];
    v38 = [(LPEmailCompatibleHTMLInnerLinkComponent *)v35 initWithThemePath:themePath2 generator:generator4];

    [(LPHTMLComponent *)v38 addChild:v24];
    [(LPHTMLComponent *)v12 addChild:v38];

    v7 = 0x1EB5E3000uLL;
  }

  v39 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
  v82 = *(v7 + 1552);
  textStack = [*(&self->super.super.isa + v82) textStack];
  v41 = [(LPHTMLComponent *)self childThemePathWithName:@"textStack"];
  generator5 = [(LPHTMLComponent *)self generator];
  v43 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v39 initWithStyle:textStack themePath:v41 generator:generator5];

  [(LPHTMLComponent *)v83 addChild:v43];
  v44 = [LPEmailCompatibleHTMLVerticalTextStackComponent alloc];
  textStack2 = [*(&self->super.super.isa + v82) textStack];
  presentationProperties = self->_presentationProperties;
  v47 = [(LPHTMLComponent *)self childThemePathWithName:@"textStack"];
  generator6 = [(LPHTMLComponent *)self generator];
  v49 = [(LPEmailCompatibleHTMLVerticalTextStackComponent *)v44 initWithStyle:textStack2 presentationProperties:presentationProperties themePath:v47 generator:generator6];

  [(LPHTMLComponent *)v43 addChild:v49];
  rightIcon = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIcon];

  if (rightIcon)
  {
    v51 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
    rightIcon2 = [*(&self->super.super.isa + v82) rightIcon];
    v53 = [(LPHTMLComponent *)self childThemePathWithName:@"rightIcon"];
    generator7 = [(LPHTMLComponent *)self generator];
    v55 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v51 initWithStyle:rightIcon2 themePath:v53 generator:generator7];

    element4 = [(LPHTMLComponent *)v55 element];
    rightIcon3 = [*(&self->super.super.isa + v82) rightIcon];
    fixedSize4 = [rightIcon3 fixedSize];
    width3 = [fixedSize4 width];
    _lp_HTMLAttributeText4 = [width3 _lp_HTMLAttributeText];
    [element4 setAttribute:@"width" value:_lp_HTMLAttributeText4];

    [(LPHTMLComponent *)v83 addChild:v55];
    v61 = [LPEmailCompatibleHTMLIconComponent alloc];
    rightIcon4 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIcon];
    rightIcon5 = [*(&self->super.super.isa + v82) rightIcon];
    rightIconProperties = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIconProperties];
    v65 = [(LPHTMLComponent *)self childThemePathWithName:@"rightIcon"];
    generator8 = [(LPHTMLComponent *)self generator];
    v67 = [(LPEmailCompatibleHTMLIconComponent *)v61 initWithImage:rightIcon4 style:rightIcon5 properties:rightIconProperties themePath:v65 generator:generator8];

    element5 = [(LPHTMLComponent *)v67 element];
    rightIcon6 = [*(&self->super.super.isa + v82) rightIcon];
    fixedSize5 = [rightIcon6 fixedSize];
    width4 = [fixedSize5 width];
    _lp_HTMLAttributeText5 = [width4 _lp_HTMLAttributeText];
    [element5 setAttribute:@"width" value:_lp_HTMLAttributeText5];

    element6 = [(LPHTMLComponent *)v67 element];
    rightIcon7 = [*(&self->super.super.isa + v82) rightIcon];
    fixedSize6 = [rightIcon7 fixedSize];
    height2 = [fixedSize6 height];
    _lp_HTMLAttributeText6 = [height2 _lp_HTMLAttributeText];
    [element6 setAttribute:@"height" value:_lp_HTMLAttributeText6];

    v78 = [LPEmailCompatibleHTMLInnerLinkComponent alloc];
    themePath3 = [(LPHTMLComponent *)self themePath];
    generator9 = [(LPHTMLComponent *)self generator];
    v81 = [(LPEmailCompatibleHTMLInnerLinkComponent *)v78 initWithThemePath:themePath3 generator:generator9];

    [(LPHTMLComponent *)v81 addChild:v67];
    [(LPHTMLComponent *)v55 addChild:v81];
  }
}

+ (id)baseRules
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"table-layout";
  v6[1] = @"font-family";
  v7[0] = @"fixed";
  v7[1] = @"-apple-system, Helvetica, Arial, sans-serif";
  v6[2] = @"background-color";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-backgroundColor"];
  v7[2] = v2;
  v6[3] = @"-apple-color-filter";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-colorFilter"];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end