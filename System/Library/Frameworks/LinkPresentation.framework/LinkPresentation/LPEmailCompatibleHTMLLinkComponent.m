@interface LPEmailCompatibleHTMLLinkComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)a3;
- (LPEmailCompatibleHTMLLinkComponent)initWithURL:(id)a3 generator:(id)a4;
@end

@implementation LPEmailCompatibleHTMLLinkComponent

- (LPEmailCompatibleHTMLLinkComponent)initWithURL:(id)a3 generator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = LPEmailCompatibleHTMLLinkComponent;
  v8 = [(LPHTMLComponent *)&v32 initWithTagName:@"a" themePath:&stru_1F2447CF0 generator:v7];
  v10 = v8;
  if (v8)
  {
    LPWebLock(v8, v9);
    if ([v7 applyCornerRadiusToLink])
    {
      v11 = @"10px";
    }

    else
    {
      v11 = @"0";
    }

    v12 = [v7 cssResolver];
    v13 = [v12 localVariables];
    [v13 setObject:v11 forKeyedSubscript:@"local-link-cornerRadius"];

    v14 = [v7 rootWidth];
    v15 = [v14 _lp_CSSText];
    v16 = [v7 cssResolver];
    v17 = [v16 localVariables];
    [v17 setObject:v15 forKeyedSubscript:@"local-link-width"];

    v18 = [(LPHTMLComponent *)v10 generator];
    v19 = [v18 cssResolver];
    v20 = [(LPHTMLComponent *)v10 element];
    [v19 addStyle:@"lp-rich-link" toElement:v20 inComponent:v10];

    v21 = [(LPHTMLComponent *)v10 element];
    [v21 setAttribute:@"rel" value:@"nofollow"];

    v22 = [(LPHTMLComponent *)v10 element];
    v23 = [v6 absoluteString];
    [v22 setAttribute:@"href" value:v23];

    v24 = [(LPHTMLComponent *)v10 element];
    [v24 setAttribute:@"dir" value:@"ltr"];

    v25 = [(LPHTMLComponent *)v10 element];
    [v25 setAttribute:@"role" value:@"button"];

    v26 = [(LPHTMLComponent *)v10 element];
    [v26 setAttribute:@"draggable" value:@"false"];

    v27 = [(LPHTMLComponent *)v10 element];
    v28 = [v7 rootWidth];
    v29 = [v28 _lp_HTMLAttributeText];
    [v27 setAttribute:@"width" value:v29];

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

+ (id)ruleDictionaryForStyle:(id)a3
{
  v3 = [a1 baseRules];

  return v3;
}

@end