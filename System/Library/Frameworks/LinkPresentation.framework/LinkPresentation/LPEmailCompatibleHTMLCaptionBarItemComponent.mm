@interface LPEmailCompatibleHTMLCaptionBarItemComponent
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLCaptionBarItemComponent)initWithStyle:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLCaptionBarItemComponent

- (LPEmailCompatibleHTMLCaptionBarItemComponent)initWithStyle:(id)style themePath:(id)path generator:(id)generator
{
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v27.receiver = self;
  v27.super_class = LPEmailCompatibleHTMLCaptionBarItemComponent;
  v11 = [(LPHTMLComponent *)&v27 initWithTagName:@"td" themePath:pathCopy generator:generatorCopy];
  if (v11)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__LPEmailCompatibleHTMLCaptionBarItemComponent_initWithStyle_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v12 = pathCopy;
    v26 = v12;
    v13 = _Block_copy(aBlock);
    v24 = styleCopy;
    emailCompatibleMargin = [styleCopy emailCompatibleMargin];
    _lp_CSSText = [emailCompatibleMargin _lp_CSSText];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    v18 = v13[2](v13, @"local", @"margin");
    [localVariables setObject:_lp_CSSText forKeyedSubscript:v18];

    cssResolver2 = [generatorCopy cssResolver];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lp-rich-link-%@Item", v12];
    element = [(LPHTMLComponent *)v11 element];
    [cssResolver2 addStyle:v20 toElement:element inComponent:v11];

    v22 = v11;
    styleCopy = v24;
  }

  return v11;
}

id __82__LPEmailCompatibleHTMLCaptionBarItemComponent_initWithStyle_themePath_generator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@Item-%@", v5, *(a1 + 32), v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Item-%@", *(a1 + 32), v6];
  }
  v7 = ;

  return v7;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"padding";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-margin"];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

@end