@interface LPEmailCompatibleHTMLVerticalTextStackComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)a3;
- (LPEmailCompatibleHTMLVerticalTextStackComponent)initWithStyle:(id)a3 presentationProperties:(id)a4 themePath:(id)a5 generator:(id)a6;
- (id)componentForRow:(id)a3 style:(id)a4 name:(id)a5;
- (void)buildComponents;
@end

@implementation LPEmailCompatibleHTMLVerticalTextStackComponent

- (LPEmailCompatibleHTMLVerticalTextStackComponent)initWithStyle:(id)a3 presentationProperties:(id)a4 themePath:(id)a5 generator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = LPEmailCompatibleHTMLVerticalTextStackComponent;
  v15 = [(LPHTMLComponent *)&v24 initWithTagName:@"div" themePath:v13 generator:v14];
  v17 = v15;
  if (v15)
  {
    LPWebLock(v15, v16);
    objc_storeStrong(&v17->_style, a3);
    objc_storeStrong(&v17->_presentationProperties, a4);
    [(LPEmailCompatibleHTMLVerticalTextStackComponent *)v17 buildComponents];
    v18 = [v14 cssResolver];
    v19 = [(LPHTMLComponent *)v17 themePath];
    v20 = [@"lp-rich-link-" stringByAppendingString:v19];
    v21 = [(LPHTMLComponent *)v17 element];
    [v18 addStyle:v20 toElement:v21 inComponent:v17];

    v22 = v17;
  }

  return v17;
}

- (id)componentForRow:(id)a3 style:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [LPEmailCompatibleHTMLTextComponent alloc];
  v12 = [v8 leading];
  v13 = [v9 leading];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-leading", v10];
  v15 = [(LPHTMLComponent *)self childThemePathWithName:v14];
  v16 = [(LPHTMLComponent *)self generator];
  v17 = [(LPEmailCompatibleHTMLTextComponent *)v11 initWithCaption:v12 style:v13 themePath:v15 generator:v16];

  [(LPHTMLComponent *)self addChild:v17];

  return v17;
}

- (void)buildComponents
{
  v15[2] = *MEMORY[0x1E69E9840];
  LPWebLock(self, a2);
  v3 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties top];
  v15[0] = v3;
  v4 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties bottom];
  v15[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  v6 = [(LPVerticalTextStackViewStyle *)self->_style topCaption];
  v14[0] = v6;
  v7 = [(LPVerticalTextStackViewStyle *)self->_style bottomCaption];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__LPEmailCompatibleHTMLVerticalTextStackComponent_buildComponents__block_invoke;
  v10[3] = &unk_1E7A37718;
  v11 = v8;
  v12 = &unk_1F2483C98;
  v13 = self;
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

+ (id)ruleDictionaryForStyle:(id)a3
{
  v3 = [a1 baseRules];

  return v3;
}

@end