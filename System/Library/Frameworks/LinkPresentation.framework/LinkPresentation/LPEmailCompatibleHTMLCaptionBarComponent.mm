@interface LPEmailCompatibleHTMLCaptionBarComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)a3;
- (LPEmailCompatibleHTMLCaptionBarComponent)initWithStyle:(id)a3 presentationProperties:(id)a4 themePath:(id)a5 generator:(id)a6;
- (void)buildComponents;
@end

@implementation LPEmailCompatibleHTMLCaptionBarComponent

- (LPEmailCompatibleHTMLCaptionBarComponent)initWithStyle:(id)a3 presentationProperties:(id)a4 themePath:(id)a5 generator:(id)a6
{
  v39 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40.receiver = self;
  v40.super_class = LPEmailCompatibleHTMLCaptionBarComponent;
  v14 = [(LPHTMLComponent *)&v40 initWithTagName:@"table" themePath:v12 generator:v13];
  v15 = v14;
  if (v14)
  {
    LPWebLock();
    objc_storeStrong(&v14->_style, a3);
    objc_storeStrong(&v14->_presentationProperties, a4);
    v16 = [(LPHTMLComponent *)v14 element];
    v17 = [v13 backgroundColor];
    v18 = [v17 _lp_CSSText];
    [v16 setAttribute:@"bgcolor" value:v18];

    v19 = [v13 backgroundColor];
    v20 = [v19 _lp_CSSTextForcingUserInterfaceStyle:0];
    v21 = [v13 cssResolver];
    v22 = [v21 localVariables];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-backgroundColor", v12, v39];
    [v22 setObject:v20 forKeyedSubscript:v23];

    v24 = [v13 dominantImageBackgroundColor];

    if (v24)
    {
      v25 = [v13 cssResolver];
      v26 = [v25 localVariables];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-colorFilter", v12];
      [v26 setObject:@"initial" forKeyedSubscript:v27];
    }

    v28 = [(LPHTMLComponent *)v15 element];
    [v28 setAttribute:@"cellpadding" value:@"0"];

    v29 = [(LPHTMLComponent *)v15 element];
    [v29 setAttribute:@"cellspacing" value:@"0"];

    v30 = [(LPHTMLComponent *)v15 element];
    v31 = [v13 rootWidth];
    v32 = [v31 _lp_HTMLAttributeText];
    [v30 setAttribute:@"width" value:v32];

    v33 = [v13 cssResolver];
    v34 = [(LPHTMLComponent *)v15 themePath];
    v35 = [@"lp-rich-link-" stringByAppendingString:v34];
    v36 = [(LPHTMLComponent *)v15 element];
    [v33 addStyle:v35 toElement:v36 inComponent:v15];

    [(LPEmailCompatibleHTMLCaptionBarComponent *)v15 buildComponents];
    v37 = v15;
  }

  return v15;
}

- (void)buildComponents
{
  LPWebLock(self, a2);
  v3 = [LPEmailCompatibleHTMLCaptionBarRowComponent alloc];
  v4 = [(LPHTMLComponent *)self themePath];
  v5 = [(LPHTMLComponent *)self generator];
  v83 = [(LPEmailCompatibleHTMLCaptionBarRowComponent *)v3 initWithThemePath:v4 generator:v5];

  [(LPHTMLComponent *)self addChild:v83];
  v6 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIcon];

  v7 = 0x1EB5E3000;
  if (v6)
  {
    v8 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
    v9 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v10 = [(LPHTMLComponent *)self childThemePathWithName:@"leftIcon"];
    v11 = [(LPHTMLComponent *)self generator];
    v12 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v8 initWithStyle:v9 themePath:v10 generator:v11];

    v13 = [(LPHTMLComponent *)v12 element];
    v14 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v15 = [v14 fixedSize];
    v16 = [v15 width];
    v17 = [v16 _lp_HTMLAttributeText];
    [v13 setAttribute:@"width" value:v17];

    [(LPHTMLComponent *)v83 addChild:v12];
    v18 = [LPEmailCompatibleHTMLIconComponent alloc];
    v19 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIcon];
    v20 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v21 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties leftIconProperties];
    v22 = [(LPHTMLComponent *)self childThemePathWithName:@"leftIcon"];
    v23 = [(LPHTMLComponent *)self generator];
    v24 = [(LPEmailCompatibleHTMLIconComponent *)v18 initWithImage:v19 style:v20 properties:v21 themePath:v22 generator:v23];

    v25 = [(LPHTMLComponent *)v24 element];
    v26 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v27 = [v26 fixedSize];
    v28 = [v27 width];
    v29 = [v28 _lp_HTMLAttributeText];
    [v25 setAttribute:@"width" value:v29];

    v30 = [(LPHTMLComponent *)v24 element];
    v31 = [(LPCaptionBarStyle *)self->_style leftIcon];
    v32 = [v31 fixedSize];
    v33 = [v32 height];
    v34 = [v33 _lp_HTMLAttributeText];
    [v30 setAttribute:@"height" value:v34];

    v35 = [LPEmailCompatibleHTMLInnerLinkComponent alloc];
    v36 = [(LPHTMLComponent *)self themePath];
    v37 = [(LPHTMLComponent *)self generator];
    v38 = [(LPEmailCompatibleHTMLInnerLinkComponent *)v35 initWithThemePath:v36 generator:v37];

    [(LPHTMLComponent *)v38 addChild:v24];
    [(LPHTMLComponent *)v12 addChild:v38];

    v7 = 0x1EB5E3000uLL;
  }

  v39 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
  v82 = *(v7 + 1552);
  v40 = [*(&self->super.super.isa + v82) textStack];
  v41 = [(LPHTMLComponent *)self childThemePathWithName:@"textStack"];
  v42 = [(LPHTMLComponent *)self generator];
  v43 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v39 initWithStyle:v40 themePath:v41 generator:v42];

  [(LPHTMLComponent *)v83 addChild:v43];
  v44 = [LPEmailCompatibleHTMLVerticalTextStackComponent alloc];
  v45 = [*(&self->super.super.isa + v82) textStack];
  presentationProperties = self->_presentationProperties;
  v47 = [(LPHTMLComponent *)self childThemePathWithName:@"textStack"];
  v48 = [(LPHTMLComponent *)self generator];
  v49 = [(LPEmailCompatibleHTMLVerticalTextStackComponent *)v44 initWithStyle:v45 presentationProperties:presentationProperties themePath:v47 generator:v48];

  [(LPHTMLComponent *)v43 addChild:v49];
  v50 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIcon];

  if (v50)
  {
    v51 = [LPEmailCompatibleHTMLCaptionBarItemComponent alloc];
    v52 = [*(&self->super.super.isa + v82) rightIcon];
    v53 = [(LPHTMLComponent *)self childThemePathWithName:@"rightIcon"];
    v54 = [(LPHTMLComponent *)self generator];
    v55 = [(LPEmailCompatibleHTMLCaptionBarItemComponent *)v51 initWithStyle:v52 themePath:v53 generator:v54];

    v56 = [(LPHTMLComponent *)v55 element];
    v57 = [*(&self->super.super.isa + v82) rightIcon];
    v58 = [v57 fixedSize];
    v59 = [v58 width];
    v60 = [v59 _lp_HTMLAttributeText];
    [v56 setAttribute:@"width" value:v60];

    [(LPHTMLComponent *)v83 addChild:v55];
    v61 = [LPEmailCompatibleHTMLIconComponent alloc];
    v62 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIcon];
    v63 = [*(&self->super.super.isa + v82) rightIcon];
    v64 = [(LPCaptionBarPresentationProperties *)self->_presentationProperties rightIconProperties];
    v65 = [(LPHTMLComponent *)self childThemePathWithName:@"rightIcon"];
    v66 = [(LPHTMLComponent *)self generator];
    v67 = [(LPEmailCompatibleHTMLIconComponent *)v61 initWithImage:v62 style:v63 properties:v64 themePath:v65 generator:v66];

    v68 = [(LPHTMLComponent *)v67 element];
    v69 = [*(&self->super.super.isa + v82) rightIcon];
    v70 = [v69 fixedSize];
    v71 = [v70 width];
    v72 = [v71 _lp_HTMLAttributeText];
    [v68 setAttribute:@"width" value:v72];

    v73 = [(LPHTMLComponent *)v67 element];
    v74 = [*(&self->super.super.isa + v82) rightIcon];
    v75 = [v74 fixedSize];
    v76 = [v75 height];
    v77 = [v76 _lp_HTMLAttributeText];
    [v73 setAttribute:@"height" value:v77];

    v78 = [LPEmailCompatibleHTMLInnerLinkComponent alloc];
    v79 = [(LPHTMLComponent *)self themePath];
    v80 = [(LPHTMLComponent *)self generator];
    v81 = [(LPEmailCompatibleHTMLInnerLinkComponent *)v78 initWithThemePath:v79 generator:v80];

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

+ (id)ruleDictionaryForStyle:(id)a3
{
  v3 = [a1 baseRules];

  return v3;
}

@end