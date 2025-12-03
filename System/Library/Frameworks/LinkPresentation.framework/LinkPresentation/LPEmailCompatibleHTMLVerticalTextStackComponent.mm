@interface LPEmailCompatibleHTMLVerticalTextStackComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLVerticalTextStackComponent)initWithStyle:(id)style presentationProperties:(id)properties themePath:(id)path generator:(id)generator;
- (id)componentForRow:(id)row style:(id)style name:(id)name;
- (void)buildComponents;
@end

@implementation LPEmailCompatibleHTMLVerticalTextStackComponent

- (LPEmailCompatibleHTMLVerticalTextStackComponent)initWithStyle:(id)style presentationProperties:(id)properties themePath:(id)path generator:(id)generator
{
  styleCopy = style;
  propertiesCopy = properties;
  pathCopy = path;
  generatorCopy = generator;
  v24.receiver = self;
  v24.super_class = LPEmailCompatibleHTMLVerticalTextStackComponent;
  v15 = [(LPHTMLComponent *)&v24 initWithTagName:@"div" themePath:pathCopy generator:generatorCopy];
  v17 = v15;
  if (v15)
  {
    LPWebLock(v15, v16);
    objc_storeStrong(&v17->_style, style);
    objc_storeStrong(&v17->_presentationProperties, properties);
    [(LPEmailCompatibleHTMLVerticalTextStackComponent *)v17 buildComponents];
    cssResolver = [generatorCopy cssResolver];
    themePath = [(LPHTMLComponent *)v17 themePath];
    v20 = [@"lp-rich-link-" stringByAppendingString:themePath];
    element = [(LPHTMLComponent *)v17 element];
    [cssResolver addStyle:v20 toElement:element inComponent:v17];

    v22 = v17;
  }

  return v17;
}

- (id)componentForRow:(id)row style:(id)style name:(id)name
{
  rowCopy = row;
  styleCopy = style;
  nameCopy = name;
  v11 = [LPEmailCompatibleHTMLTextComponent alloc];
  leading = [rowCopy leading];
  leading2 = [styleCopy leading];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-leading", nameCopy];
  v15 = [(LPHTMLComponent *)self childThemePathWithName:nameCopy];
  generator = [(LPHTMLComponent *)self generator];
  v17 = [(LPEmailCompatibleHTMLTextComponent *)v11 initWithCaption:leading style:leading2 themePath:v15 generator:generator];

  [(LPHTMLComponent *)self addChild:v17];

  return v17;
}

- (void)buildComponents
{
  v15[2] = *MEMORY[0x1E69E9840];
  LPWebLock(self, a2);
  v3 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties top];
  v15[0] = v3;
  bottom = [(LPCaptionBarPresentationProperties *)self->_presentationProperties bottom];
  v15[1] = bottom;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  topCaption = [(LPVerticalTextStackViewStyle *)self->_style topCaption];
  v14[0] = topCaption;
  bottomCaption = [(LPVerticalTextStackViewStyle *)self->_style bottomCaption];
  v14[1] = bottomCaption;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__LPEmailCompatibleHTMLVerticalTextStackComponent_buildComponents__block_invoke;
  v10[3] = &unk_1E7A37718;
  v11 = v8;
  v12 = &unk_1F2483C98;
  selfCopy = self;
  v9 = v8;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __66__LPEmailCompatibleHTMLVerticalTextStackComponent_buildComponents__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 leading];
  v6 = [v5 text];

  if (v6)
  {
    v7 = [a1[4] objectAtIndexedSubscript:a3];
    v8 = [a1[5] objectAtIndexedSubscript:a3];
    v9 = [a1[6] componentForRow:v10 style:v7 name:v8];
    [a1[6] addChild:v9];
  }
}

+ (id)baseRules
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"100%";
  v5[0] = @"max-width";
  v5[1] = @"margin";
  v2 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-captionTextPadding"];
  v5[2] = @"overflow";
  v6[1] = v2;
  v6[2] = @"hidden";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end